// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            ReportForm, ReportMenu

class this._cls0
    implements android.view.istener
{

    final ReportForm this$0;

    public void onClick(View view)
    {
        stop();
        reportMenu.close();
    }

    ner()
    {
        this$0 = ReportForm.this;
        super();
    }
}
