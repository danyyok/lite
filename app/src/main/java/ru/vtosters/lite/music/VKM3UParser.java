package ru.vtosters.lite.music;

import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class VKM3UParser{
    private final String mData;
    private final List<TransportStream> mTransportStreams = new ArrayList<>();

    // maybe will be used
    private int mDuration;
    private int mHeapSize = 0;
    private String mBaseURL;

    public VKM3UParser(String data){
        mData = data;
        init();
    }

    private void init(){
        int i = 0;
        Scanner scanner = new Scanner(mData);
        while(scanner.hasNext()) {
            String line = scanner.nextLine();
            mHeapSize += line.getBytes().length;
            if (line.startsWith("#EXT-X-TARGETDURATION")) {
                mDuration = Integer.parseInt(getDirectiveValue(line));
            } else if (line.startsWith("#EXT-X-KEY")) {
                String base = getDirectiveValue(line);
                final TransportStream ts;
                if (!base.startsWith("METHOD=NONE")) {
                    String keyURL = base.substring(base.indexOf("\"") + 1, base.lastIndexOf("\""));
                    mBaseURL = keyURL.substring(0, keyURL.lastIndexOf("/") + 1);
                    ts = new TransportStream(TransportStream.METHOD_AES128, keyURL);
                } else {
                    ts = new TransportStream();
                }
                mTransportStreams.add(ts);
            } else if (line.startsWith("#EXTINF")) {
                if (mTransportStreams.size() == i)
                    mTransportStreams.add(new TransportStream());
            } else if (isM3U8(line)) {
                mTransportStreams.get(i).setName(line);
                ++i;
            }
        }
    }

    private String getDirectiveValue(String directive){
        return directive.substring(directive.indexOf(":") + 1);
    }

    public static boolean isM3U8(String str) {
        return str.endsWith(".ts") || str.endsWith(".tp") || str.endsWith(".mpeg-ts") || str.endsWith(".m2ts");
    }

    public int getHeapSize(){
        return mHeapSize;
    }

    public String getBaseUrl(){
        return mBaseURL;
    }

    public List<TransportStream> getTransportStreams(){
        return mTransportStreams;
    }
}
