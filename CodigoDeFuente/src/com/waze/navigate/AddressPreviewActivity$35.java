// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class this._cls0
    implements com.waze.phone.honeRequestAccessResultListener
{

    final AddressPreviewActivity this$0;

    public void onResult(boolean flag)
    {
        if (flag)
        {
            openShareActivity();
        }
    }

    eRequestAccessResultListener()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
