// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.widget.CompoundButton;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.social:
//            KeepYourFriendsDialog

class this._cls0
    implements android.widget.ChangeListener
{

    final KeepYourFriendsDialog this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        KeepYourFriendsDialog keepyourfriendsdialog = KeepYourFriendsDialog.this;
        boolean flag1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        KeepYourFriendsDialog.access$2(keepyourfriendsdialog, flag1);
        if (!KeepYourFriendsDialog.access$3(KeepYourFriendsDialog.this))
        {
            if (KeepYourFriendsDialog.access$0(KeepYourFriendsDialog.this) == null)
            {
                Analytics.log("SHARE_DRIVE_ETA_TIP_CLICK", "ACTION", "DONT_SHOW_AGAIN");
            } else
            {
                Analytics.log("SHARE_LOCATION_BACK_CLICKED", "ACTION", "DONT_SHOW_AGAIN");
            }
            dismiss();
        }
    }

    hangeListener()
    {
        this$0 = KeepYourFriendsDialog.this;
        super();
    }
}
