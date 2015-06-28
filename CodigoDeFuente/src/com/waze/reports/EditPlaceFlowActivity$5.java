// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.DialogInterface;
import com.waze.NativeManager;

// Referenced classes of package com.waze.reports:
//            EditPlaceFlowActivity, VenueData

class this._cls0
    implements android.content.istener
{

    final EditPlaceFlowActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        if (i == 1)
        {
            EditPlaceFlowActivity.access$0(EditPlaceFlowActivity.this).venueFlag(EditPlaceFlowActivity.access$2(EditPlaceFlowActivity.this).id, EditPlaceFlowActivity.access$5(EditPlaceFlowActivity.this), null, null);
            EditPlaceFlowActivity.access$10(EditPlaceFlowActivity.this);
        }
    }

    stener()
    {
        this$0 = EditPlaceFlowActivity.this;
        super();
    }
}
