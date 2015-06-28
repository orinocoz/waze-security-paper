// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Intent;
import android.media.MediaPlayer;
import android.net.Uri;
import android.os.Bundle;
import android.view.View;
import android.widget.MediaController;
import android.widget.VideoView;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

public class VideoActivity extends ActivityBase
{

    private VideoView video;

    public VideoActivity()
    {
        video = null;
    }

    public void onBackPressed()
    {
        if (video != null && video.isPlaying())
        {
            video.stopPlayback();
        }
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030132);
        Intent intent = getIntent();
        String s = intent.getStringExtra("url");
        MediaController mediacontroller;
        Uri uri;
        if (intent.getBooleanExtra("landscape", false))
        {
            setRequestedOrientation(0);
        } else
        {
            setRequestedOrientation(1);
        }
        video = (VideoView)findViewById(0x7f0907c6);
        mediacontroller = new MediaController(this);
        mediacontroller.setMediaPlayer(video);
        video.setMediaController(mediacontroller);
        uri = Uri.parse(s);
        video.setVideoURI(uri);
        video.setOnPreparedListener(new android.media.MediaPlayer.OnPreparedListener() {

            final VideoActivity this$0;

            public void onPrepared(MediaPlayer mediaplayer)
            {
                findViewById(0x7f0907c7).setVisibility(8);
                ((VideoView)findViewById(0x7f0907c6)).setVisibility(0);
            }

            
            {
                this$0 = VideoActivity.this;
                super();
            }
        });
        video.setOnCompletionListener(new android.media.MediaPlayer.OnCompletionListener() {

            final VideoActivity this$0;

            public void onCompletion(MediaPlayer mediaplayer)
            {
                ((VideoView)findViewById(0x7f0907c6)).setVisibility(8);
            }

            
            {
                this$0 = VideoActivity.this;
                super();
            }
        });
        video.start();
    }
}
