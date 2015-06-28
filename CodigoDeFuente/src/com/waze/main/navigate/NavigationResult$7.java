// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.view.View;
import android.view.ViewTreeObserver;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements android.view.GlobalLayoutListener
{

    final NavigationResult this$0;

    public void onGlobalLayout()
    {
        NavigationResult.access$8(NavigationResult.this).findViewById(0x7f090696).getViewTreeObserver().removeGlobalOnLayoutListener(this);
        NavigationResult.access$9(NavigationResult.this);
    }

    utListener()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
