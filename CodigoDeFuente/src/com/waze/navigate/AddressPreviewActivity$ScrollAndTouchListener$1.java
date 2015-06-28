// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.ui.ObservableScrollView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class val.y
    implements Runnable
{

    final cess._cls1 this$1;
    private final int val$y;

    public void run()
    {
        cess._mth0(this._cls1.this).smoothScrollTo(0, val$y);
        val.y y1 = this._cls1.this;
        int i = val$y;
        boolean flag = false;
        if (i == 0)
        {
            flag = true;
        }
        cess._mth1(y1, flag);
    }

    ()
    {
        this$1 = final_;
        val$y = I.this;
        super();
    }
}
