// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.content.Context;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0 extends Dialog
{

    final NavigationResult this$0;

    public void onBackPressed()
    {
        NavigationResult.access$20(NavigationResult.this);
    }

    (Context context, int i)
    {
        this$0 = NavigationResult.this;
        super(context, i);
    }
}
