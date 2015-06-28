// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;

// Referenced classes of package com.waze.reports:
//            RoadClosureReport

class val.optionValues
    implements android.content.ickListener
{

    final RoadClosureReport this$0;
    private final int val$optionValues[];

    public void onClick(DialogInterface dialoginterface, int i)
    {
        RoadClosureReport.access$2(RoadClosureReport.this, val$optionValues[i]);
    }

    ckListener()
    {
        this$0 = final_roadclosurereport;
        val$optionValues = _5B_I.this;
        super();
    }
}
