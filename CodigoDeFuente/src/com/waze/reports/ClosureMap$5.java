// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.LayoutManager;

// Referenced classes of package com.waze.reports:
//            ClosureMap

class this._cls0
    implements android.view.istener
{

    final ClosureMap this$0;

    public void onClick(View view)
    {
        ClosureMap.access$6().setClosureRunning(false);
        ClosureMap.access$6().removeDelayedReportButton();
        setResult(-1);
        finish();
    }

    ner()
    {
        this$0 = ClosureMap.this;
        super();
    }
}
