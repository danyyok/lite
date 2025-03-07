package ru.vtosters.lite.downloaders;

import static ru.vtosters.lite.downloaders.VideoDownloader.downloadVideo;
import static ru.vtosters.lite.utils.AndroidUtils.getGlobalContext;

import android.app.DownloadManager;
import android.content.Context;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;

import com.vk.dto.common.ImageSize;
import com.vk.dto.stories.model.StoryEntry;

import org.json.JSONArray;

import java.util.List;

public class StoryDownloader {
    public static Runnable injectButton(StoryEntry story) {
        return () -> downloadStory(story);
    }

    public static void downloadStory(StoryEntry story){
        if (story.T1()) {
            List<ImageSize> imageSizes = story.E.Q.t1();
            String url = imageSizes.get(imageSizes.size() - 1).url;
            DownloadManager.Request request = new DownloadManager.Request(Uri.parse(url));
            request.setNotificationVisibility(DownloadManager.Request.VISIBILITY_VISIBLE_NOTIFY_COMPLETED);
            request.setTitle("photo" + story.E.a + ".jpg");
            request.setDestinationInExternalPublicDir(Environment.DIRECTORY_PICTURES, "photo" + story.E.a + ".jpg");
            request.allowScanningByMediaScanner();
            ((DownloadManager) getGlobalContext().getSystemService(Context.DOWNLOAD_SERVICE)).enqueue(request);
            return;
        }
        // if story is a video
        if (story.F != null) {
            downloadVideo(story.F, null);
        }
    }
}
