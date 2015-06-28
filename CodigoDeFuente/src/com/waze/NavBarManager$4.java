// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager, LayoutManager

class val.mode
    implements Runnable
{

    final NavBarManager this$0;
    private final int val$mode;

    public void run()
    {
        if (val$mode != 0)
        {
            if (NavBarManager.access$2() == null)
            {
                NavBarManager.access$4(NavBarManager.access$3(NavBarManager.this).createNavBar());
                NavBarManager.access$2().setDrivingDirection(NavBarManager.access$5(NavBarManager.this));
                NavBarManager.access$2().setSkin(NavBarManager.access$6(NavBarManager.this));
            }
            NavBarManager.access$2().clear();
        } else
        if (NavBarManager.access$2() != null)
        {
            NavBarManager.access$2().hide();
            return;
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$mode = I.this;
        super();
    }
}
