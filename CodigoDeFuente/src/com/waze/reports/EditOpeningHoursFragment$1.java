// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            EditOpeningHoursFragment, EditPlaceFlowActivity

class this._cls0
    implements android.view.t._cls1
{

    final EditOpeningHoursFragment this$0;

    public void onClick(View view)
    {
        ((EditPlaceFlowActivity)getActivity()).doneOpeningHours(EditOpeningHoursFragment.access$0(EditOpeningHoursFragment.this));
    }

    ()
    {
        this$0 = EditOpeningHoursFragment.this;
        super();
    }
}
