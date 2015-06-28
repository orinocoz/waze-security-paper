// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.value
    implements Runnable
{

    final NavBarManager this$0;
    private final boolean val$value;

    public void run()
    {
        if (NavBarManager.access$2() != null)
        {
            NavBarManager.access$2().setWaypoint(val$value);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$value = Z.this;
        super();
    }
}
