// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import java.util.Comparator;

// Referenced classes of package com.waze.navigate:
//            SearchEngine, AddressItem, SortPreferences

class 
    implements Comparator
{

    final SearchEngine this$0;
    private final SortPreferences val$sortPreferences;

    public int compare(AddressItem addressitem, AddressItem addressitem1)
    {
        byte byte0 = 1;
        if (addressitem.sponsored == addressitem1.sponsored) goto _L2; else goto _L1
_L1:
        if (addressitem.sponsored)
        {
            byte0 = -1;
        }
_L4:
        return byte0;
_L2:
        byte byte1;
        byte byte2;
        if (addressitem.brand != null && !addressitem.brand.equals(""))
        {
            byte1 = 0;
        } else
        {
            byte1 = byte0;
        }
        if (addressitem1.brand != null && !addressitem1.brand.equals(""))
        {
            byte2 = 0;
        } else
        {
            byte2 = byte0;
        }
        if (byte1 != 0 && byte2 != 0)
        {
            return addressitem.getTitle().compareTo(addressitem1.getTitle());
        }
        if (byte1 != 0 && byte2 == 0)
        {
            continue; /* Loop/switch isn't completed */
        }
        if (byte1 == 0 && byte2 != 0)
        {
            return -1;
        }
        byte byte3;
        boolean flag;
        if (val$sortPreferences.brand != null && !val$sortPreferences.brand.equals(""))
        {
            byte3 = byte0;
        } else
        {
            byte3 = 0;
        }
        if (byte3 == 0)
        {
            break; /* Loop/switch isn't completed */
        }
        flag = addressitem.brand.equals(val$sortPreferences.brand);
        if (flag == addressitem1.brand.equals(val$sortPreferences.brand))
        {
            break; /* Loop/switch isn't completed */
        }
        if (flag)
        {
            return -1;
        }
        if (true) goto _L4; else goto _L3
_L3:
        return addressitem.brand.compareTo(addressitem1.brand);
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((AddressItem)obj, (AddressItem)obj1);
    }

    ()
    {
        this$0 = final_searchengine;
        val$sortPreferences = SortPreferences.this;
        super();
    }
}
