// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            ReportMenu, ClosureMap

class this._cls0
    implements android.view.stener
{

    final ReportMenu this$0;

    public void onClick(View view)
    {
        hideBottomNotification(false);
        ClosureMap.launch(getContext(), ReportMenu.this, ReportMenu.access$5(ReportMenu.this), false);
    }

    er()
    {
        this$0 = ReportMenu.this;
        super();
    }
}
