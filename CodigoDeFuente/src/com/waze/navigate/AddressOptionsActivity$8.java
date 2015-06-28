// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.view.ViewTreeObserver;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.navigate:
//            AddressOptionsActivity

class val.vto
    implements android.view.LayoutListener
{

    final AddressOptionsActivity this$0;
    private final View val$mapLayoutRoot;
    private final ViewTreeObserver val$vto;

    public void onGlobalLayout()
    {
        android.widget.ms ms = new android.widget.ms(val$mapLayoutRoot.getMeasuredWidth(), val$mapLayoutRoot.getMeasuredHeight());
        ms.topMargin = val$mapLayoutRoot.getTop();
        ms.leftMargin = val$mapLayoutRoot.getLeft();
        AddressOptionsActivity.access$4(AddressOptionsActivity.this).setLayoutParams(ms);
        val$vto.removeGlobalOnLayoutListener(this);
    }

    tListener()
    {
        this$0 = final_addressoptionsactivity;
        val$mapLayoutRoot = view;
        val$vto = ViewTreeObserver.this;
        super();
    }
}
