// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity

class val.optionValues
    implements android.content.istener
{

    final EditPlaceFlowActivity this$0;
    private final int val$optionValues[];

    public void onClick(DialogInterface dialoginterface, int i)
    {
        EditPlaceFlowActivity.access$4(EditPlaceFlowActivity.this, val$optionValues[i]);
        switch (EditPlaceFlowActivity.access$5(EditPlaceFlowActivity.this))
        {
        case 2: // '\002'
        default:
            return;

        case 1: // '\001'
            EditPlaceFlowActivity.access$6(EditPlaceFlowActivity.this);
            return;

        case 4: // '\004'
            EditPlaceFlowActivity.access$7(EditPlaceFlowActivity.this);
            return;

        case 5: // '\005'
            EditPlaceFlowActivity.access$8(EditPlaceFlowActivity.this, true);
            return;

        case 6: // '\006'
            EditPlaceFlowActivity.access$8(EditPlaceFlowActivity.this, false);
            return;

        case 3: // '\003'
            EditPlaceFlowActivity.access$9(EditPlaceFlowActivity.this);
            return;
        }
    }

    stener()
    {
        this$0 = final_editplaceflowactivity;
        val$optionValues = _5B_I.this;
        super();
    }
}
