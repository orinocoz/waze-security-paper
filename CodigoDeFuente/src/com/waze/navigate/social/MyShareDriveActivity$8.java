// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.DialogInterface;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity

class this._cls0
    implements android.content.Listener
{

    final MyShareDriveActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            Analytics.log("MY_SHARED_DRIVE_STOP_SHARING", "VAUE", sMeeting);
            MyShareDriveActivity.access$11(MyShareDriveActivity.this).StopFollow();
            setResult(3);
            finish();
        }
    }

    ()
    {
        this$0 = MyShareDriveActivity.this;
        super();
    }
}
