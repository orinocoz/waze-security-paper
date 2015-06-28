// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.maxNum
    implements Runnable
{

    final NavBarManager this$0;
    private final int val$maxNum;
    private final int val$num;

    public void run()
    {
        if (NavBarManager.access$2() != null && NavBarManager.access$2().setFollowersNum(val$num, val$maxNum))
        {
            NavBarManager.access$10(NavBarManager.this, val$num);
            NavBarManager.access$11(NavBarManager.this, val$maxNum);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$num = i;
        val$maxNum = I.this;
        super();
    }
}
