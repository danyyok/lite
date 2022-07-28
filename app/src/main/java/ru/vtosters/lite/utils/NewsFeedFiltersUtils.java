package ru.vtosters.lite.utils;

import static ru.vtosters.lite.utils.AndroidUtils.getGlobalContext;
import static ru.vtosters.lite.utils.AndroidUtils.getPrefsValue;
import static ru.vtosters.lite.utils.Preferences.ads;
import static ru.vtosters.lite.utils.Preferences.adsgroup;
import static ru.vtosters.lite.utils.Preferences.authorsrecomm;
import static ru.vtosters.lite.utils.Preferences.captions;
import static ru.vtosters.lite.utils.Preferences.copyright_post;
import static ru.vtosters.lite.utils.Preferences.dev;
import static ru.vtosters.lite.utils.Preferences.friendsrecomm;
import static ru.vtosters.lite.utils.Preferences.getBoolValue;
import static ru.vtosters.lite.utils.Preferences.postsrecomm;

import android.util.Log;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

import ru.vtosters.lite.hooks.JsonInjectors;

public class NewsFeedFiltersUtils {
    public static List<String> mFilters;
    public static List<String> mFiltersLinks;

    public static void setupFilters() {
        mFilters = new ArrayList<>();
        mFiltersLinks = new ArrayList<>();

        getFilter("refsfilter", "Referals.txt", mFilters);
        getFilter("shortlinkfilter", "LinkShorter.txt", mFilters);
        getFilter("default_ad_list", "StandartFilter.txt", mFilters);
        getFilter("shitposting", "IDontWantToReadIt.txt", mFilters);
        getFilter("cringecopyright", "CopyrightAds.txt", mFiltersLinks);

        var customFilters = getPrefsValue("spamfilters");
        if (!customFilters.isEmpty()) {
            mFilters.addAll(Arrays.asList(customFilters.split(", ")));
        }

        var linkFilter = getPrefsValue("linkfilter");
        if (!linkFilter.isEmpty()) {
            mFiltersLinks.addAll(Arrays.asList(linkFilter.split(", ")));
        }
    }

    public static void getFilter(String boolname, String filename, List<String> list) {
        if (getBoolValue(boolname, true)) {
            try {
                var scanner = new Scanner(getGlobalContext().getAssets().open(filename));
                while (scanner.hasNextLine()) {
                    var line = scanner.nextLine();
                    if (!line.isEmpty())
                        list.add(line.toLowerCase());
                }
            } catch (IOException e) {
                e.printStackTrace();
            }
        }
    } // Get needed filter list from assets

    public static boolean injectFiltersReposts(JSONObject obj) throws JSONException {
        if (getBoolValue("cringerepost", false) && obj.has("copy_history")) {
            var copyHistoryNode = obj.optJSONArray("copy_history");
            for (int i = 0; i < copyHistoryNode.length(); i++) {
                var item = copyHistoryNode.optJSONObject(i);
                var text = item.optString("text");

                if (isBadNews(text)) {
                    if (dev())
                        Log.d("RepostFilter", "Fetched repost ad (isBadNews), owner id " + item.optString("owner_id") + ", text: " + text);
                    return true;
                } else if (JsonInjectors.isAds(item, item.optString("post_type"))) {
                    if (dev())
                        Log.d("RepostFilter", "Fetched repost ad (ads), owner id " + item.optString("owner_id") + ", text: " + text);
                    return true;
                }

                for (String filter : mFiltersLinks) {
                    if (text.contains(filter)) {
                        if (dev())
                            Log.d("RepostFilter", "Fetched repost ad, owner id " + item.optString("owner_id") + ", text: " + text);
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static boolean checkCopyright(JSONObject json) throws JSONException {
        if (json.has("copyright")) {
            if (copyright_post()) return true;

            var copyright = json.optJSONObject("copyright");
            var copyrightLink = copyright.getString("link").toLowerCase();
            for (String filter : mFiltersLinks) {
                if (copyrightLink.contains(filter)) {
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isRecomsGroup(String src) {
        return authorsrecomm() && src.equals("recommended_groups");
    }

    public static boolean isMusicBlock(String src) {
        return authorsrecomm() && (src.equals("recommended_audios") || src.equals("recommended_artists") || src.equals("recommended_playlists"));
    }

    public static boolean isNewsBlock(String src) {
        return ads() && src.equals("tags_suggestions");
    }

    public static String getAllFilters() {
        return getPrefsValue("spamfilters");
    }

    public static boolean isBadNews(String text) {
        var textInLowerCase = text.toLowerCase();
        for (String filter : mFilters) {
            if (textInLowerCase.contains(filter)) {
                if (dev())
                    Log.d("VTLite", text);
                return true;
            }
        }
        return false;
    }

    public static boolean checkCaption(JSONObject postJson) {
        if (postJson.has("caption")) {
            if (captions()) return true;
            var caption = postJson.optJSONObject("caption");
            if (postsrecomm()) {
                try {
                    var type = caption.getString("type");
                    return type.equals("explorebait") || // Может быть интересно
                            type.equals("shared") || // Поделился записью
                            type.equals("digest") || // Рекомедации
                            type.equals("commented") || // Комментирует
                            type.equals("voted"); // Проголосовал в опросе
                } catch (JSONException e) {
                    Log.d("checkCaption", "Caption error");
                }
            }
        }

        return false;
    }

    public static boolean isAds(String optString) {
        return ads() && (optString.equals("ads_easy_promote") ||
                optString.equals("promo_button") ||
                optString.equals("app_widget") ||
                optString.equals("ads"));
    }

    public static boolean isAuthorRecommendations(String optString) {
        return authorsrecomm() && optString.equals("authors_rec");
    }

    public static boolean isPostRecommendations(String optString) {
        return postsrecomm() && (optString.equals("live_recommended") ||
                optString.equals("inline_user_rec"));
    }

    public static boolean isFriendsRecommendations(String optString) {
        return friendsrecomm() && (optString.equals("user_rec") ||
                optString.equals("friends_recommendations") ||
                optString.equals("friends_recomm"));
    }

    public static boolean isGroupAds(JSONObject obj) {
        return adsgroup() && obj.optInt("marked_as_ads", 0) == 1;
    }
}
