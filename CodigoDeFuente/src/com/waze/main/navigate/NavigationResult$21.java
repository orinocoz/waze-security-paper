// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import com.waze.ifs.ui.TinyTooltip;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements Runnable
{

    final NavigationResult this$0;

    public void run()
    {
        if (NavigationResult.access$24(NavigationResult.this) != null && NavigationResult.access$24(NavigationResult.this).isShowing())
        {
            NavigationResult.access$24(NavigationResult.this).dismiss(true);
            NavigationResult.access$25(NavigationResult.this, null);
        }
    }

    ()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
