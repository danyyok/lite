package ru.vtosters.lite.music;

import android.app.DownloadManager;
import android.net.Uri;
import android.os.Environment;
import android.util.Log;
import android.widget.Toast;

import com.vk.dto.music.MusicTrack;

import org.json.JSONException;
import org.json.JSONObject;

import java.io.IOException;

import okhttp3.Call;
import okhttp3.Callback;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import ru.vtosters.lite.downloaders.AudioDownloader;
import ru.vtosters.lite.utils.Globals;

public class MP3Downloader {

    private static final String URL_FORMAT = "https://api.vk.com/method/audio.getById?v=5.131&access_token=%s&audios=%s&copyright=https://vtosters.app/";
    private static final OkHttpClient client = new OkHttpClient();

    public MP3Downloader() {
    }

    public void execute(MusicTrack track) {
        var token = Globals.getPreferences().getString("vk_admin_token", "");
        if (token.isEmpty()) {
            Toast.makeText(Globals.getContext(), "Обновите токен VK Admin в настройках", Toast.LENGTH_SHORT).show();
            return;
        }
        var request = new Request.a()
                .b(String.format(URL_FORMAT, token, track.y1()))
                .a();
        client.a(request).a(new Callback() {
            @Override
            public void a(Call call, IOException e) {
                Log.d("MP3Downloader", e+"");
            }

            @Override
            public void a(Call call, Response response) throws IOException {
                var payload = response.a().g();
                Log.d("MP3Downloader", payload);
                try {
                   JSONObject jsonObj = new JSONObject(payload);
                   if (jsonObj.has("response")) {
                       JSONObject responseNode = new JSONObject(payload).getJSONArray("response")
                               .getJSONObject(0);
                       if (responseNode.has("url")) {
                           var url = responseNode.optString("url");
                           Log.d("MP3Downloader", url);
                           if (url != null) {
                               if (url.endsWith(".mp3")) {
                                   downloadMP3(track.toString(), url);
                               } else if (VKM3UParser.isM3U8(url)) {
                                   AudioDownloader.downloadM3U8(track);
                               }
                           }
                       }
                   }
                } catch (JSONException e) {
                    Log.d("MP3Downloader", e+"");
                }
            }
        });
    }

    private void downloadMP3(String title, String url) {
        var downloadManager = Globals.getContext().getSystemService(DownloadManager.class);
        var request = new DownloadManager.Request(Uri.parse(url))
                .setAllowedOverRoaming(true)
                .setTitle("Downloading " + title)
                .setDestinationInExternalFilesDir(Globals.getContext(),
                        Environment.getExternalStoragePublicDirectory(Environment.DIRECTORY_DOWNLOADS).getAbsolutePath(),
                        title + ".mp3")
                .setVisibleInDownloadsUi(true);
        downloadManager.enqueue(request);
    }
}
