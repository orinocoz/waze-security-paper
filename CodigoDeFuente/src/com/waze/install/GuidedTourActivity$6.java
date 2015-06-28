// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.net.Uri;
import android.view.ViewTreeObserver;
import android.widget.VideoView;

// Referenced classes of package com.waze.install:
//            GuidedTourActivity, InstallNativeManager

class val.video
    implements android.view.obalLayoutListener
{

    final GuidedTourActivity this$0;
    private final VideoView val$video;

    public void onGlobalLayout()
    {
        InstallNativeManager installnativemanager = new InstallNativeManager();
        boolean flag;
        if (InstallNativeManager.IsCleanInstallation())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        installnativemanager.getVideoUrl(flag, val$video.getWidth(), val$video.getHeight(), new InstallNativeManager.VideoUrlListener() {

            final GuidedTourActivity._cls6 this$1;
            private final VideoView val$video;

            public void onComplete(String s)
            {
                Uri uri = Uri.parse(s);
                video.setVideoURI(uri);
            }

            
            {
                this$1 = GuidedTourActivity._cls6.this;
                video = videoview;
                super();
            }
        });
        val$video.getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    _cls1.val.video()
    {
        this$0 = final_guidedtouractivity;
        val$video = VideoView.this;
        super();
    }
}
