// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment, VenueData

class val.id
    implements android.view.t._cls9
{

    final AddPlaceNewFragment this$0;
    private final String val$id;

    public void onClick(View view)
    {
        mVenue.removeCategory(val$id);
        refreshCategories();
    }

    ()
    {
        this$0 = final_addplacenewfragment;
        val$id = String.this;
        super();
    }
}
