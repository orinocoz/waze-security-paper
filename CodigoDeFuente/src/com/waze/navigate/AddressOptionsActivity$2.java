// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.ViewTreeObserver;
import android.widget.ImageView;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity

class this._cls0
    implements android.view.LayoutListener
{

    final AddressOptionsActivity this$0;

    public void onGlobalLayout()
    {
        android.widget.ms ms = new android.widget.ms(AddressOptionsActivity.access$3(AddressOptionsActivity.this).getMeasuredWidth(), AddressOptionsActivity.access$3(AddressOptionsActivity.this).getMeasuredHeight());
        ms.topMargin = AddressOptionsActivity.access$3(AddressOptionsActivity.this).getTop();
        ms.leftMargin = AddressOptionsActivity.access$3(AddressOptionsActivity.this).getLeft();
        AddressOptionsActivity.access$4(AddressOptionsActivity.this).setLayoutParams(ms);
        android.widget.ms ms1 = (android.widget.ms)AddressOptionsActivity.access$7(AddressOptionsActivity.this).getLayoutParams();
        ms1.topMargin = 1 + (-16 + (AddressOptionsActivity.access$3(AddressOptionsActivity.this).getTop() + AddressOptionsActivity.access$3(AddressOptionsActivity.this).getMeasuredHeight()));
        ms1.leftMargin = -1 + AddressOptionsActivity.access$3(AddressOptionsActivity.this).getLeft();
        AddressOptionsActivity.access$7(AddressOptionsActivity.this).setLayoutParams(ms1);
        android.widget.ms ms2 = new android.widget.ms(-2, -2);
        ms2.topMargin = 1 + (-16 + (AddressOptionsActivity.access$3(AddressOptionsActivity.this).getTop() + AddressOptionsActivity.access$3(AddressOptionsActivity.this).getMeasuredHeight()));
        ms2.leftMargin = 1 + (-14 + (AddressOptionsActivity.access$3(AddressOptionsActivity.this).getLeft() + AddressOptionsActivity.access$3(AddressOptionsActivity.this).getMeasuredWidth()));
        AddressOptionsActivity.access$8(AddressOptionsActivity.this).setLayoutParams(ms2);
        AddressOptionsActivity.access$3(AddressOptionsActivity.this).getViewTreeObserver().removeGlobalOnLayoutListener(this);
    }

    tListener()
    {
        this$0 = AddressOptionsActivity.this;
        super();
    }
}
