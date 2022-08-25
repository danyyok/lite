package ru.vtosters.lite.res.managers;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Environment;
import android.os.StrictMode;
import android.util.Log;

import com.vtosters.lite.auth.VKAccountManager;

import org.json.JSONException;

import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;

import ru.vtosters.lite.ui.dialogs.ThemesEditorBottomSheetDialog;
import ru.vtosters.lite.res.models.ColorModel;
import ru.vtosters.lite.res.models.ThemeModel;
import ru.vtosters.lite.utils.AndroidUtils;
import ru.vtosters.lite.utils.IOUtils;
import ru.vtosters.lite.utils.ThemesUtils;

public class ThemesManager {

    public static final List<ColorModel> DEFAULT_COLORS = Arrays.asList(
            ColorModel.valuesOf("windowBackground", "ff000000"),
            ColorModel.valuesOf("accent", "ff8eff71"),
            ColorModel.valuesOf("background_content", "ff000000"),
            ColorModel.valuesOf("background_keyboard", "ff000000"),
            ColorModel.valuesOf("background_light", "ff000000"),
            ColorModel.valuesOf("background_page", "ff000000"),
            ColorModel.valuesOf("background_suggestions", "ff000000"),
            ColorModel.valuesOf("boxBackgroundColor", "ff000000"),
            ColorModel.valuesOf("colorAccent", "ff8eff71"),
            ColorModel.valuesOf("colorPrimaryDark", "ff000000"),
            ColorModel.valuesOf("content_tint_background", "ff000000"),
            ColorModel.valuesOf("control_background", "ff000000"),
            ColorModel.valuesOf("counter_primary_background", "ff8eff71"),
            ColorModel.valuesOf("header_alternate_background", "ff000000"),
            ColorModel.valuesOf("header_background", "ff000000"),
            ColorModel.valuesOf("header_tab_active_indicator", "ff8eff71"),
            ColorModel.valuesOf("header_tint", "ff8eff71"),
            ColorModel.valuesOf("im_attach_tint", "ff8eff71"),
            ColorModel.valuesOf("im_bg_chat", "ff000000"),
            ColorModel.valuesOf("im_bubble_incoming", "ff000000"),
            ColorModel.valuesOf("im_bubble_outgoing", "ff121212"),
            ColorModel.valuesOf("im_bubble_wallpaper_incoming", "ff000000"),
            ColorModel.valuesOf("im_bubble_wallpaper_outgoing", "ff121212"),
            ColorModel.valuesOf("im_dropdown_icon_color", "ff8eff71"),
            ColorModel.valuesOf("im_history_banner_bg_color", "ff000000"),
            ColorModel.valuesOf("im_text_name", "ff8eff71"),
            ColorModel.valuesOf("im_toolbar_voice_msg_background", "ff000000"),
            ColorModel.valuesOf("input_background", "ff000000"),
            ColorModel.valuesOf("input_border", "ff000000"),
            ColorModel.valuesOf("landing_background", "ff000000"),
            ColorModel.valuesOf("link_alternate", "ff8eff71"),
            ColorModel.valuesOf("loader_background", "ff000000"),
            ColorModel.valuesOf("modal_card_background", "ff000000"),
            ColorModel.valuesOf("overlay_status_background", "ff000000"),
            ColorModel.valuesOf("overlay_status_foreground", "ff000000"),
            ColorModel.valuesOf("posting_input_background", "ff000000"),
            ColorModel.valuesOf("search_bar_background", "ff000000"),
            ColorModel.valuesOf("statusBarColorBack", "ff000000"),
            ColorModel.valuesOf("statusBarColorFront", "ff000000"),
            ColorModel.valuesOf("statusbar_alternate_legacy_background", "ff000000"),
            ColorModel.valuesOf("tabbar_background", "ff000000"),
            ColorModel.valuesOf("tabbar_tablet_background", "ff000000"),
            ColorModel.valuesOf("text_link", "ff8eff71"),
            ColorModel.valuesOf("toolbar_attach_background_from", "ff000000"),
            ColorModel.valuesOf("toolbar_attach_background_to", "ff000000"),
            ColorModel.valuesOf("vk_background_content", "ff000000"),
            ColorModel.valuesOf("vk_header_background", "ff000000"),
            ColorModel.valuesOf("vk_landing_background", "ff000000"),
            ColorModel.valuesOf("vkim_bgFillDrawable", "ff000000"),
            ColorModel.valuesOf("vkim_colorPrimary", "ff8eff71")
    );

    private static File themesDir;
    private static ThemesManager instance;
    private static ThemeModel currentTheme = null;
    private List<ThemeModel> themes = new ArrayList<>();

    public static ThemesManager getInstance() {
        if (instance == null)
            instance = new ThemesManager();
        return instance;
    }

    public ThemesManager() {
        init();
    }

    private void init() {
        themes = new ArrayList<>();
        currentTheme = new ThemeModel().setName("Тема по умолчанию")
                .setAuthor("Разработчики ВК")
                .setDarkMode(ThemesUtils.isDarkTheme())
                .setId("default");
        themes.add(currentTheme);
        themesDir = new File(Environment.getExternalStorageDirectory(), "VTL/themes");
        if (!themesDir.exists()) {
            themesDir.mkdirs();
            return;
        }
        // Support themes from Sova V RE (.svt)
        var files = themesDir.listFiles((dir, name) -> name.endsWith(".vtlt") || name.endsWith(".svt") || name.endsWith(".json"));
        if (files == null || files.length == 0)
            return;
        var currentThemeId = AndroidUtils.getPreferences().getString("vtl_theme_id", "default");
        for (File file : files) {
            try {
                ThemeModel theme;
                var abs = file.getAbsolutePath();
                if (abs.endsWith(".svt") || abs.endsWith(".json"))
                    theme = svt2vtlt(file);
                else
                    theme = read(file);
                if (theme != null) {
                    Log.d("ThemesManager", theme.toString());
                    if (currentThemeId.equals(theme.id))
                        currentTheme = theme;
                    themes.add(theme);
                }
            } catch (IOException | JSONException e) {
                e.printStackTrace();
            }
        }
        if ("default".equals(currentTheme.id))
            setTheme(currentTheme);
    }

    private ThemeModel svt2vtlt(File file) {
        try {
            var theme = read(file);
            save(theme);
            file.delete();
            return theme;
        } catch (Exception e) {
            e.printStackTrace();
        }
        return null;
    }

    public void reload() {
        init();
    }

    public File getThemeFile(ThemeModel theme) throws IOException {
        if (!themesDir.exists()) {
            themesDir.mkdirs();
            throw new FileNotFoundException("theme file not found");
        }

        var themeFile = new File(themesDir, theme.id + ".svt");
        if (!themeFile.exists()) {
            themeFile = new File(themesDir, theme.id + ".vtlt");
            if (!themeFile.exists())
                themeFile.createNewFile();
        }

        return themeFile;
    }

    public void setTheme(ThemeModel theme) {
        AndroidUtils.getPreferences()
                .edit()
                .putString("vtl_theme_id", theme.id)
                .commit();
    }

    public ThemeModel getTheme(int i) {
        return themes.get(i);
    }

    public ThemeModel getCurrentTheme() {
        return currentTheme;
    }

    public int getThemesCount() {
        return themes.size();
    }

    public boolean isCurrentTheme(ThemeModel theme) {
        return currentTheme.id.equals(theme.id);
    }

    public boolean hasTheme(ThemeModel theme) {
        return hasTheme(theme.id);
    }

    public boolean hasTheme(String id) {
        for (ThemeModel theme : themes) {
            if (id.equals(theme.id))
                return true;
        }
        return false;
    }

    /*
     * Theme file storing method from Sova V RE is storing json clearly or compressed with gzip.
     * If first byte byte is 0x1 or 0x2 json has been compressed with gzip,
     * but if first byte is 0x2 next int is length of json string. */

    private ThemeModel read(InputStream fis) throws IOException, JSONException {
        InputStream is = fis;
        var first = is.read();
        if (first > 0x0 && first < 0x3) {
            var gzis = new GZIPInputStream(is);
            var dis = new DataInputStream(gzis);
            if (first == 0x2)
                dis.readInt();
            is = dis;
        }
        return ThemeModel.fromJson(IOUtils.readAllLines(is));
    }

    private ThemeModel read(File file) throws IOException, JSONException {
        return read(new FileInputStream(file));
    }

    public void save(ThemeModel theme) throws IOException, JSONException {
        var buffer = theme.toJson().toString().getBytes(StandardCharsets.UTF_8);
        var fos = new FileOutputStream(getThemeFile(theme));
        // writing with data length
        fos.write(0x2);
        var gzos = new GZIPOutputStream(fos);
        var dos = new DataOutputStream(gzos);
        dos.writeInt(buffer.length);
        dos.write(buffer);
        dos.close();
    }

    public void delete(ThemeModel theme) {
        try {
            getThemeFile(theme).delete();
        } catch (IOException e) {
            e.printStackTrace();
        }
        themes.remove(theme);
        if (isCurrentTheme(theme)) {
            setTheme(null);
        }
    }

    public void create(Activity activity, String name) throws JSONException, IOException {
        var id = name.toLowerCase().replace(" ", "-");
        if (hasTheme(id)) {
            var i = 1;
            while (hasTheme(id + "-" + i)) {
                i++;
            }
            id += "-" + i;
        }
        var userProfile = VKAccountManager.d().e1();
        ThemeModel theme = new ThemeModel()
                .setName(name)
                .setAuthor(userProfile.c + " " + userProfile.e)
                .setDarkMode(true)
                .setColors(DEFAULT_COLORS)
                .setId(id);
        themes.add(theme);
        ThemesEditorBottomSheetDialog.create(activity, theme, false);
        save(theme);
    }

    public void copy(ContentResolver contentResolver, Uri uri) throws IOException, JSONException {
        var theme = read(contentResolver.openInputStream(uri));
        if (isCurrentTheme(theme)) {
            int i = 1;
            while (hasTheme(theme.id + "-" + i)) {
                i++;
            }
            theme.id += "-" + i;
        }
        themes.add(theme);
        save(theme);
    }

    public void share(Context context, ThemeModel theme) throws Exception {
        var vmPolicy = StrictMode.getVmPolicy();
        StrictMode.setVmPolicy(new StrictMode.VmPolicy.Builder().build());
        var intent = new Intent(Intent.ACTION_SEND)
                .setType("file/*")
                .putExtra(Intent.EXTRA_STREAM, Uri.fromFile(getThemeFile(theme)));
        context.startActivity(Intent.createChooser(intent, ""));
        StrictMode.setVmPolicy(vmPolicy);
    }
}
