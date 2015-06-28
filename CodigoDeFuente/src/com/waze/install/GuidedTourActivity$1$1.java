// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import android.widget.VideoView;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.install:
//            GuidedTourActivity, InstallNativeManager

class this._cls1
    implements com.waze.social.facebook.orizeCompletedListener
{

    final E_WAIT___ this$1;

    public void onAuthorizeCompleted(boolean flag, int i)
    {
        if (i == 3)
        {
            NativeManager.getInstance().SignUplogAnalytics("FACEBOOK_DECLINE", null, null, true);
        }
        if (i == 0)
        {
            NativeManager nativemanager = NativeManager.getInstance();
            NativeManager.getInstance().OpenProgressPopup(nativemanager.getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        }
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/install/GuidedTourActivity$1

/* anonymous class */
    class GuidedTourActivity._cls1
        implements android.view.View.OnClickListener
    {

        final GuidedTourActivity this$0;

        public void onClick(View view)
        {
            if (InstallNativeManager.IsMinimalInstallation())
            {
                MyWazeNativeManager.getInstance().skipSignup();
                return;
            }
            GuidedTourActivity.access$0(true);
            VideoView videoview = (VideoView)findViewById(0x7f090352);
            if (videoview.isPlaying())
            {
                videoview.stopPlayback();
            }
            NativeManager.getInstance().SignUplogAnalytics("START_FBCONNECT", null, null, true);
            if (GuidedTourActivity.access$1())
            {
                FacebookWrapper.getInstance().authorize(GuidedTourActivity.this, null, false);
                return;
            }
            if (InstallNativeManager.IsCleanInstallation())
            {
                GuidedTourActivity._cls1._cls1 _lcls1 = new GuidedTourActivity._cls1._cls1();
                FacebookWrapper.getInstance().SignIn(GuidedTourActivity.this, _lcls1, true);
                return;
            } else
            {
                com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener ionauthorizecompletedlistener = new GuidedTourActivity._cls1._cls2();
                FacebookWrapper.getInstance().authorize(GuidedTourActivity.this, ionauthorizecompletedlistener, true);
                return;
            }
        }

            
            {
                this$0 = GuidedTourActivity.this;
                super();
            }

        // Unreferenced inner class com/waze/install/GuidedTourActivity$1$2

/* anonymous class */
        class GuidedTourActivity._cls1._cls2
            implements com.waze.social.facebook.FacebookWrapper.IOnAuthorizeCompletedListener
        {

            final GuidedTourActivity._cls1 this$1;

            public void onAuthorizeCompleted(boolean flag, int i)
            {
                if (i == 3)
                {
                    NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_FACEBOOK_DECLINE", null, null, true);
                }
            }

                    
                    {
                        this$1 = GuidedTourActivity._cls1.this;
                        super();
                    }
        }

    }

}
