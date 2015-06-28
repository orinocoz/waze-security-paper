// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.navbar.NavBar;

// Referenced classes of package com.waze:
//            NavBarManager

class val.instruction
    implements Runnable
{

    final NavBarManager this$0;
    private final int val$instruction;

    public void run()
    {
        if (NavBarManager.access$2() != null)
        {
            NavBarManager.access$2().setInstruction(val$instruction);
        }
    }

    ()
    {
        this$0 = final_navbarmanager;
        val$instruction = I.this;
        super();
    }
}
