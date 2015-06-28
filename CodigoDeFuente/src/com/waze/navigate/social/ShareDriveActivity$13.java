// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.main.navigate.LocationData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.Activity._cls13
{

    final ShareDriveActivity this$0;

    public void onClick(View view)
    {
        String s;
        String s1;
        if (mType == 0)
        {
            s = "DRIVE";
        } else
        {
            s = "LOCATION";
        }
        Analytics.log("SHARE_MORE_OPTIONS", "TYPE", s);
        s1 = MyWazeNativeManager.getInstance().GetLastShareURL();
        if (mType == 0 && ShareDriveActivity.access$18(ShareDriveActivity.this).isFollowActiveNTV() && s1 != null && !s1.equals(""))
        {
            ShareUtility.BuildShareURL(com.waze.share..ShareType_ShareDrive, s1, null);
            return;
        }
        if (mType == 0)
        {
            ShareDriveActivity.access$18(ShareDriveActivity.this).CreateMeeting(ShareDriveActivity.access$1(ShareDriveActivity.this).locationName, "ShareDrive", ShareDriveActivity.access$1(ShareDriveActivity.this).locationX, ShareDriveActivity.access$1(ShareDriveActivity.this).locationY, ShareDriveActivity.access$1(ShareDriveActivity.this).mStreet, ShareDriveActivity.access$1(ShareDriveActivity.this).mCity, null, ShareDriveActivity.access$1(ShareDriveActivity.this).mVenueId);
            return;
        } else
        {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.setType("text/plain");
            intent.putExtra("android.intent.extra.SUBJECT", "");
            intent.putExtra("android.intent.extra.TEXT", mUrl);
            intent.putExtra("exit_on_sent", true);
            startActivityForResult(Intent.createChooser(intent, ShareDriveActivity.access$18(ShareDriveActivity.this).getLanguageString(DisplayStrings.DS_SHARE)), 4000);
            return;
        }
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
