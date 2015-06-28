// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;

// Referenced classes of package com.waze:
//            ScreenShotManager, MainActivity

class val.view
    implements Runnable
{

    final ScreenShotManager this$0;
    private final MainActivity val$context;
    private final View val$view;

    public void run()
    {
        val$context.addContentView(val$view, new android.view.ms(-2, -2));
        val$view.invalidate();
    }

    Params()
    {
        this$0 = final_screenshotmanager;
        val$context = mainactivity;
        val$view = View.this;
        super();
    }
}
