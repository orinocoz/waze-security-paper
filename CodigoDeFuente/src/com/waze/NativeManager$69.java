// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navigate.social.ShareDriveActivity;
import com.waze.share.ShareUtility;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class val.aUrl
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$IsShareMyRide;
    private final String val$aUrl;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (val$IsShareMyRide)
        {
            if (AppService.getActiveActivity() instanceof ShareDriveActivity)
            {
                ShareUtility.BuildShareURL(com.waze.share.eType.ShareType_ShareDrive, val$aUrl, null);
            }
            return;
        } else
        {
            mainactivity.SendPickUp(val$aUrl);
            return;
        }
    }

    y()
    {
        this$0 = final_nativemanager;
        val$IsShareMyRide = flag;
        val$aUrl = String.this;
        super();
    }
}
