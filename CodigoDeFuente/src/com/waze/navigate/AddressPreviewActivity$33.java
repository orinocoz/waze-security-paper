// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.NativeManager;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class this._cls0
    implements Runnable
{

    final AddressPreviewActivity this$0;

    public void run()
    {
        AddressPreviewActivity.access$20(AddressPreviewActivity.this).CloseProgressPopup();
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
