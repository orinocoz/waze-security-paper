// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.utils.EditTextUtils;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, VenueData, EditPlaceCategoriesHolder, EditPlaceFlowActivity

class this._cls0
    implements android.view.._cls15
{

    final EditPlaceFragment this$0;

    public void onClick(View view)
    {
        EditPlaceFragment.access$0(EditPlaceFragment.this).numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(EditPlaceFragment.access$0(EditPlaceFragment.this).categories);
        EditPlaceFragment.access$18(EditPlaceFragment.this).numCategories = EditPlaceCategoriesHolder.sortCategoryIdsArray(EditPlaceFragment.access$18(EditPlaceFragment.this).categories);
        EditTextUtils.closeKeyboard(getActivity(), EditPlaceFragment.access$11(EditPlaceFragment.this));
        ((EditPlaceFlowActivity)getActivity()).goToAddCategory();
    }

    ()
    {
        this$0 = EditPlaceFragment.this;
        super();
    }
}
