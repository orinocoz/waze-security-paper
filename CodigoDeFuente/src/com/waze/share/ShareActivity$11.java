// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.navigate.AddressItem;

// Referenced classes of package com.waze.share:
//            ShareActivity, ShareUtility

class this._cls0
    implements com.waze.navigate.ger.DriveToGetAddressItemArrayCallback
{

    final ShareActivity this$0;

    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
    {
        if (aaddressitem != null)
        {
            ShareUtility.OpenShareActivity(eType.ShareType_ShareSelection, null, aaddressitem[0], null);
        }
    }

    eType()
    {
        this$0 = ShareActivity.this;
        super();
    }
}
