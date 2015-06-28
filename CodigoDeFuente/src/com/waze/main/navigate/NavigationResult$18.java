// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.app.Dialog;
import android.content.DialogInterface;
import android.view.View;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements android.content.smissListener
{

    final NavigationResult this$0;

    public void onDismiss(DialogInterface dialoginterface)
    {
        tooltipDismissed();
        NavigationResult.access$8(NavigationResult.this).findViewById(0x7f0904b4).performClick();
    }

    stener()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
