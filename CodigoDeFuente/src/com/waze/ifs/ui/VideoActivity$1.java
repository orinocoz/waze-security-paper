// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.media.MediaPlayer;
import android.view.View;
import android.widget.VideoView;

// Referenced classes of package com.waze.ifs.ui:
//            VideoActivity

class this._cls0
    implements android.media.eparedListener
{

    final VideoActivity this$0;

    public void onPrepared(MediaPlayer mediaplayer)
    {
        findViewById(0x7f0907c7).setVisibility(8);
        ((VideoView)findViewById(0x7f0907c6)).setVisibility(0);
    }

    aredListener()
    {
        this$0 = VideoActivity.this;
        super();
    }
}
