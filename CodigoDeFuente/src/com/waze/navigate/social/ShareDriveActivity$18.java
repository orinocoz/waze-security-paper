// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.social.AddFriendDialog;
import com.waze.strings.DisplayStrings;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class val.askToAdd
    implements com.waze.social.iendDialog
{

    final ShareDriveActivity this$0;
    private final PersonBase val$askToAdd;

    public void onNotNowClicked()
    {
        ShareDriveActivity.access$28(false);
        ShareDriveActivity.access$27(ShareDriveActivity.this).dismiss();
        Analytics.log("ASK_FRIENDSHIP_FROM_SHARE", "ACTION", "NOT_NOW");
    }

    public void onSendRequestClicked()
    {
        if (val$askToAdd.getIsOnWaze())
        {
            int ai1[] = new int[1];
            ai1[0] = ShareDriveActivity.access$4(ShareDriveActivity.this).getID();
            if (ai1[0] != 0)
            {
                String s2 = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_ADDED);
                Object aobj1[] = new Object[1];
                aobj1[0] = val$askToAdd.getName();
                String s3 = String.format(s2, aobj1);
                MyWazeNativeManager.getInstance().sendSocialAddFriends(ai1, s3);
            }
        } else
        {
            String as[] = new String[1];
            int ai[] = new int[1];
            as[0] = val$askToAdd.getPhone();
            ai[0] = val$askToAdd.getID();
            String s = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PS_INVITED);
            Object aobj[] = new Object[1];
            aobj[0] = val$askToAdd.getName();
            String s1 = String.format(s, aobj);
            MyWazeNativeManager.getInstance().sendSocialInviteFriends(ai, as, s1);
        }
        ShareDriveActivity.access$27(ShareDriveActivity.this).dismiss();
        Analytics.log("ASK_FRIENDSHIP_FROM_SHARE", "ACTION", "SEND");
    }

    g()
    {
        this$0 = final_sharedriveactivity;
        val$askToAdd = PersonBase.this;
        super();
    }
}
