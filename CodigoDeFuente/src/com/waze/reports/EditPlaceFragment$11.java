// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.utils.EditTextUtils;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, VenueData, EditPlaceServicesFragment, EditPlaceFlowActivity

class this._cls0
    implements android.view.._cls11
{

    final EditPlaceFragment this$0;

    public void onClick(View view)
    {
        EditTextUtils.closeKeyboard(getActivity(), EditPlaceFragment.access$11(EditPlaceFragment.this));
        EditPlaceFragment.access$0(EditPlaceFragment.this).numServices = EditPlaceServicesFragment.sortServiceIdsArray(EditPlaceFragment.access$0(EditPlaceFragment.this).services, EditPlaceFragment.access$0(EditPlaceFragment.this).numServices);
        EditPlaceFragment.access$18(EditPlaceFragment.this).numServices = EditPlaceServicesFragment.sortServiceIdsArray(EditPlaceFragment.access$18(EditPlaceFragment.this).services, EditPlaceFragment.access$18(EditPlaceFragment.this).numServices);
        ((EditPlaceFlowActivity)getActivity()).goToServices();
    }

    ()
    {
        this$0 = EditPlaceFragment.this;
        super();
    }
}
