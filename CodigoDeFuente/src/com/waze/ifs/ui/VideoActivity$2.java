// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.media.MediaPlayer;
import android.widget.VideoView;

// Referenced classes of package com.waze.ifs.ui:
//            VideoActivity

class this._cls0
    implements android.media.mpletionListener
{

    final VideoActivity this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        ((VideoView)findViewById(0x7f0907c6)).setVisibility(8);
    }

    letionListener()
    {
        this$0 = VideoActivity.this;
        super();
    }
}
