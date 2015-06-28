// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.content.Intent;
import android.view.View;
import android.widget.VideoView;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.MinimalSignInActivity;
import com.waze.profile.SignInActivity;
import com.waze.profile.WelcomeDoneActivity;
import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.install:
//            GuidedTourActivity, InstallNativeManager

class this._cls0
    implements android.view.y._cls2
{

    final GuidedTourActivity this$0;

    public void onClick(View view)
    {
        if (InstallNativeManager.IsMinimalInstallation())
        {
            VideoView videoview1 = (VideoView)findViewById(0x7f090352);
            if (videoview1.isPlaying())
            {
                videoview1.stopPlayback();
            }
            NativeManager.getInstance().SignUplogAnalytics("LOGIN", null, null, true);
            Intent intent3 = new Intent(GuidedTourActivity.this, com/waze/profile/MinimalSignInActivity);
            startActivityForResult(intent3, 5000);
        } else
        if (!GuidedTourActivity.access$2())
        {
            VideoView videoview = (VideoView)findViewById(0x7f090352);
            if (videoview.isPlaying())
            {
                videoview.stopPlayback();
            }
            if (InstallNativeManager.IsCleanInstallation())
            {
                NativeManager.getInstance().SignUplogAnalytics("START_OTHER", null, null, true);
                if (GuidedTourActivity.access$1())
                {
                    if (MyWazeNativeManager.getInstance().isRandomUserNTV())
                    {
                        Intent intent1 = new Intent(GuidedTourActivity.this, com/waze/profile/SignInActivity);
                        startActivityForResult(intent1, 5000);
                        return;
                    } else
                    {
                        Intent intent2 = new Intent(GuidedTourActivity.this, com/waze/profile/WelcomeDoneActivity);
                        startActivityForResult(intent2, 5000);
                        return;
                    }
                } else
                {
                    Intent intent = new Intent(GuidedTourActivity.this, com/waze/profile/SignInActivity);
                    startActivityForResult(intent, 5000);
                    return;
                }
            } else
            {
                NativeManager.getInstance().SignUplogAnalytics("SOCIAL_UPGRADE_SKIP", null, null, false);
                MyWazeNativeManager.getInstance().facebookDisconnectNow();
                FacebookWrapper.getInstance().logout(GuidedTourActivity.this, null);
                setResult(-1);
                finish();
                return;
            }
        }
    }

    er()
    {
        this$0 = GuidedTourActivity.this;
        super();
    }
}
