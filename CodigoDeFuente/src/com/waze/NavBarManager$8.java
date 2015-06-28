// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class this._cls0
    implements Runnable
{

    final NavBarManager this$0;

    public void run()
    {
        if (NavBarManager.access$2() != null)
        {
            NavBarManager.access$2().setSkin(NavBarManager.access$6(NavBarManager.this));
        }
    }

    ()
    {
        this$0 = NavBarManager.this;
        super();
    }
}
