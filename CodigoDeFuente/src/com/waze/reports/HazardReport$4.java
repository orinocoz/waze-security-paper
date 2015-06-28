// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import android.widget.TextView;

// Referenced classes of package com.waze.reports:
//            HazardReport

class val.optionValues
    implements android.content..OnClickListener
{

    final HazardReport this$0;
    private final int val$optionValues[];
    private final String val$options[];

    public void onClick(DialogInterface dialoginterface, int i)
    {
        ((TextView)findViewById(0x7f090034)).setText(val$options[i]);
        HazardReport.access$2(HazardReport.this, val$optionValues[i]);
    }

    OnClickListener()
    {
        this$0 = final_hazardreport;
        val$options = as;
        val$optionValues = _5B_I.this;
        super();
    }
}
