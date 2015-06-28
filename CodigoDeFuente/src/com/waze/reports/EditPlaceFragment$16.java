// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.LinearLayout;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, VenueData

class val.categoriesPlace
    implements android.view.._cls16
{

    final EditPlaceFragment this$0;
    private final LinearLayout val$categoriesPlace;
    private final String val$id;

    public void onClick(View view)
    {
        EditPlaceFragment.access$0(EditPlaceFragment.this).removeCategory(val$id);
        refreshCategories(val$categoriesPlace);
    }

    ()
    {
        this$0 = final_editplacefragment;
        val$id = s;
        val$categoriesPlace = LinearLayout.this;
        super();
    }
}
