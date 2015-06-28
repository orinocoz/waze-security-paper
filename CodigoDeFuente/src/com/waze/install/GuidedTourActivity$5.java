// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import android.widget.VideoView;
import com.waze.NativeManager;

// Referenced classes of package com.waze.install:
//            GuidedTourActivity

class this._cls0
    implements android.view.y._cls5
{

    final GuidedTourActivity this$0;

    public void onClick(View view)
    {
        if (!GuidedTourActivity.access$3())
        {
            GuidedTourActivity.access$4(true);
            NativeManager.getInstance().SignUplogAnalytics("START_MOVIE", null, null, true);
        }
        findViewById(0x7f090353).setVisibility(0);
        VideoView videoview = (VideoView)findViewById(0x7f090352);
        videoview.setVisibility(0);
        videoview.start();
        videoview.setBackgroundDrawable(null);
    }

    ()
    {
        this$0 = GuidedTourActivity.this;
        super();
    }
}
