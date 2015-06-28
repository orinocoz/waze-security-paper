// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;


// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment, VenueData

class this._cls0
    implements xtValidator
{

    final AddPlaceNewFragment this$0;

    public boolean isTextValid(String s)
    {
        return mVenue.street != null && !mVenue.street.isEmpty() || !mIsResidential && mVenue.city != null && !mVenue.city.isEmpty();
    }

    xtValidator()
    {
        this$0 = AddPlaceNewFragment.this;
        super();
    }
}
