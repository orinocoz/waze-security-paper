// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, DriveToNativeManager

class this._cls0
    implements android.view.y._cls28
{

    final AddressPreviewActivity this$0;

    public void onClick(View view)
    {
        AddressPreviewActivity.access$10(AddressPreviewActivity.this).setStartPoint();
        setResult(1);
        AddressPreviewActivity.access$22(AddressPreviewActivity.this, true);
        finish();
    }

    ()
    {
        this$0 = AddressPreviewActivity.this;
        super();
    }
}
