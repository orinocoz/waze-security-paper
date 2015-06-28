// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.reports:
//            ReportMenu

class this._cls0
    implements android.view.stener
{

    final ReportMenu this$0;

    public void onClick(View view)
    {
        hideBottomNotification(false);
        ReportMenu.access$6(ReportMenu.this).foursquareCheckin();
        dismiss();
    }

    ager()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
