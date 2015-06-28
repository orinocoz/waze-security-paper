// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.social:
//            KeepYourFriendsDialog

class this._cls0
    implements android.view.._cls2
{

    final KeepYourFriendsDialog this$0;

    public void onClick(View view)
    {
        if (KeepYourFriendsDialog.access$0(KeepYourFriendsDialog.this) == null)
        {
            Analytics.log("SHARE_DRIVE_ETA_TIP_CLICK", "ACTION", "X");
        } else
        {
            Analytics.log("SHARE_LOCATION_BACK_CLICKED", "ACTION", "X");
        }
        dismiss();
    }

    ()
    {
        this$0 = KeepYourFriendsDialog.this;
        super();
    }
}
