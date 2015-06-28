// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.WzWebView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity

class val.res
    implements Runnable
{

    final this._cls1 this$1;
    private final int val$res;

    public void run()
    {
        android.view.ce ce = AddressPreviewActivity.access$3(cess._mth1(this._cls1.this)).getLayoutParams();
        ce.ce = (int)((float)val$res * AddressPreviewActivity.access$4(cess._mth1(this._cls1.this)));
        AddressPreviewActivity.access$3(cess._mth1(this._cls1.this)).setLayoutParams(ce);
        AddressPreviewActivity.access$3(cess._mth1(this._cls1.this)).requestLayout();
    }

    A()
    {
        this$1 = final_a;
        val$res = I.this;
        super();
    }
}
