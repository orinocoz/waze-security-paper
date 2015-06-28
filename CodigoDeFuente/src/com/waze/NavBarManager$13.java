// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.unit
    implements Runnable
{

    final NavBarManager this$0;
    private final String val$dist;
    private final String val$unit;

    public void run()
    {
        if (NavBarManager.access$2() != null)
        {
            NavBarManager.access$2().setDistance(val$dist, val$unit);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$dist = s;
        val$unit = String.this;
        super();
    }
}
