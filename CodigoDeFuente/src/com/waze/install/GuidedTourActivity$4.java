// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.media.MediaPlayer;
import android.view.View;
import android.widget.VideoView;

// Referenced classes of package com.waze.install:
//            GuidedTourActivity

class this._cls0
    implements android.media.ionListener
{

    final GuidedTourActivity this$0;

    public void onCompletion(MediaPlayer mediaplayer)
    {
        findViewById(0x7f090350).setVisibility(0);
        findViewById(0x7f090351).setVisibility(0);
        findViewById(0x7f09034f).setVisibility(0);
        ((VideoView)findViewById(0x7f090352)).setVisibility(8);
    }

    Listener()
    {
        this$0 = GuidedTourActivity.this;
        super();
    }
}
