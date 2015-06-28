// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.num
    implements Runnable
{

    final NavBarManager this$0;
    private final int val$num;

    public void run()
    {
        if (NavBarManager.access$12(NavBarManager.this))
        {
            NavBarManager.access$2().setFriendsNum(val$num);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$num = I.this;
        super();
    }
}
