// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.str
    implements Runnable
{

    final NavBarManager this$0;
    private final String val$str;

    public void run()
    {
        if (NavBarManager.access$2() != null && NavBarManager.access$2().setEtaStr(val$str))
        {
            NavBarManager.access$9(NavBarManager.this, val$str);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$str = String.this;
        super();
    }
}
