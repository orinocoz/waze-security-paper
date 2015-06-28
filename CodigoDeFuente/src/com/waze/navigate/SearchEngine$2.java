// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import java.util.Comparator;

// Referenced classes of package com.waze.navigate:
//            SearchEngine, AddressItem

class this._cls0
    implements Comparator
{

    final SearchEngine this$0;

    public int compare(AddressItem addressitem, AddressItem addressitem1)
    {
        if (addressitem.sponsored == addressitem1.sponsored) goto _L2; else goto _L1
_L1:
        if (!addressitem.sponsored) goto _L4; else goto _L3
_L3:
        return -1;
_L4:
        return 1;
_L2:
        if (addressitem.distanceMeters > addressitem1.distanceMeters)
        {
            return 1;
        }
        if (true) goto _L3; else goto _L5
_L5:
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((AddressItem)obj, (AddressItem)obj1);
    }

    ()
    {
        this$0 = SearchEngine.this;
        super();
    }
}
