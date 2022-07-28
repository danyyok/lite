package ru.vtosters.lite.hooks;

import static java.lang.Long.MAX_VALUE;
import static ru.vtosters.lite.utils.AndroidUtils.getPrefsValue;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.checkCaption;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.checkCopyright;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.injectFiltersReposts;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isAds;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isAuthorRecommendations;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isBadNews;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isFriendsRecommendations;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isGroupAds;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isMusicBlock;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isNewsBlock;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isPostRecommendations;
import static ru.vtosters.lite.utils.NewsFeedFiltersUtils.isRecomsGroup;
import static ru.vtosters.lite.utils.Preferences.getBoolValue;
import static ru.vtosters.lite.utils.Preferences.vkme;

import com.vk.core.preference.Preference;

import org.json.JSONException;
import org.json.JSONObject;

import java.util.ArrayList;
import java.util.List;

public class NewsfeedHook {
    public static boolean injectFilters(JSONObject obj) throws JSONException {
        if (getBoolValue("newadblock", true)) return true;

        var optString = obj.optString("type", "");
        if (isAds(optString) || isAuthorRecommendations(optString) || isPostRecommendations(optString) || isFriendsRecommendations(optString) || isRecomsGroup(optString) || isMusicBlock(optString) || isNewsBlock(optString)) {
            return false;
        }
        optString = obj.optString("post_type", "");
        if (isAds(optString) || isAuthorRecommendations(optString) || isPostRecommendations(optString) || isFriendsRecommendations(optString) || isMusicBlock(optString) || isNewsBlock(optString)) {
            return false;
        }
        optString = obj.optString("filters", "");
        if (isAds(optString) || isAuthorRecommendations(optString) || isPostRecommendations(optString) || isFriendsRecommendations(optString)) {
            return false;
        }

        if (checkCopyright(obj)) return false;

        if (isBadNews(obj.optString("text", ""))) return false;

        if (checkCaption(obj)) return false;

        if (isGroupAds(obj)) return false;

        return !injectFiltersReposts(obj);
    } // inject our filters to newsfeed, getpost and discover

    public static long getUpdateNewsfeed(boolean refresh_timeout) {
        if (vkme()) {
            return MAX_VALUE;
        }
        switch (getPrefsValue("newsupdate")) {
            case "no_update":
                return MAX_VALUE;
            case "imd_update":
                return 10000L;
            default:
                return Preference.b().getLong(refresh_timeout ? "refresh_timeout_top" : "refresh_timeout_recent", 600000L);
        }
    }

    public static List hideElement(ArrayList list) {
        if (!getBoolValue("whatsnew", true)) {
            list.clear();
        }
        return list;
    }
}
