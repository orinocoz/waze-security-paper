// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;

// Referenced classes of package com.waze:
//            PhoneList

class this._cls1
    implements com.waze.view.tabs.
{

    final this._cls1 this$1;

    public void onClick(int i)
    {
        if (i == cess._mth0(this._cls1.this))
        {
            return;
        }
        View view = null;
        if (i == 0)
        {
            view = cess._mth1(this._cls1.this).findViewById(0x7f0904eb);
        }
        if (i == 1)
        {
            view = cess._mth1(this._cls1.this).findViewById(0x7f0904e7);
        }
        cess._mth2(this._cls1.this, i);
        cess._mth3(this._cls1.this).setVisibility(8);
        view.setVisibility(0);
        cess._mth4(this._cls1.this, view);
    }

    tener()
    {
        this$1 = this._cls1.this;
        super();
    }
}
