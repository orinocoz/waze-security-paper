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
    implements deoUrlListener
{

    final val.video this$1;
    private final VideoView val$video;

    public void onComplete(String s)
    {
        Uri uri = Uri.parse(s);
        val$video.setVideoURI(uri);
    }

    l.video()
    {
        this$1 = final_video1;
        val$video = VideoView.this;
        super();
    }

    // Unreferenced inner class com/waze/install/GuidedTourActivity$6

/* anonymous class */
    class GuidedTourActivity._cls6
        implements android.view.ViewTreeObserver.OnGlobalLayoutListener
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
            installnativemanager.getVideoUrl(flag, video.getWidth(), video.getHeight(), video. new GuidedTourActivity._cls6._cls1());
            video.getViewTreeObserver().removeGlobalOnLayoutListener(this);
        }

            
            {
                this$0 = final_guidedtouractivity;
                video = VideoView.this;
                super();
            }
    }

}
