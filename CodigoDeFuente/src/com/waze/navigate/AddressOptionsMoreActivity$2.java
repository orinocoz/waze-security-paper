// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsMoreActivity, DriveToNativeManager

class this._cls0
    implements android.view.ty._cls2
{

    final AddressOptionsMoreActivity this$0;

    public void onClick(View view)
    {
        AddressOptionsMoreActivity.access$1(AddressOptionsMoreActivity.this).setStartPoint();
        setResult(1);
        finish();
    }

    ()
    {
        this$0 = AddressOptionsMoreActivity.this;
        super();
    }
}
