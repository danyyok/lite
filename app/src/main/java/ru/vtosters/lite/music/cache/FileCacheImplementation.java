package ru.vtosters.lite.music.cache;

import android.net.Uri;

import com.vk.dto.music.MusicTrack;

import java.io.File;

import ru.vtosters.lite.utils.AndroidUtils;
import ru.vtosters.lite.utils.IOUtils;

public class FileCacheImplementation {

    public static void clear() {
        CacheDatabaseDelegate.clear();
        IOUtils.deleteRecursive(getCacheDir(), false);
    }

    public static File getCacheDir() {
        return AndroidUtils.getGlobalContext().getExternalFilesDir("vt_tracks");
    }

    public static File getTrackFolder(String trackId) {
        var dir = new File(getCacheDir(), trackId);
        dir.mkdirs();
        return dir;
    }

    public static File getThumbnailsFolder(String trackId) {
        var dir = new File(getTrackFolder(trackId), "thumbs");
        dir.mkdirs();
        return dir;
    }

    public static File getTrackFile(String trackId) {
        return new File(getTrackFolder(trackId), "track.mp3");
    }

    public static boolean isTrackExist(String trackId) {
        return CacheDatabaseDelegate.isCached(trackId);
    }

    public static File getTrackFile(MusicTrack track) {
        return getTrackFile(track.y1());
    }

    public static File getTrackThumbnail(String trackId, int factor) {
        return new File(getThumbnailsFolder(trackId), "thumb_" + factor + ".png");
    }

    public static String getFileUri(File file) {
        if (!file.exists()) return null;
        return Uri.fromFile(file).toString();
    }

    public static String getServerPath() {
        return "https://vtosters.app";
    }
}
