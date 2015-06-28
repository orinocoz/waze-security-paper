// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze:
//            StandbyManager

class val.screenOn
    implements Runnable
{

    final StandbyManager this$0;
    private final boolean val$screenOn;

    public void run()
    {
        ActivityBase.setScreenState(val$screenOn);
    }

    se()
    {
        this$0 = final_standbymanager;
        val$screenOn = Z.this;
        super();
    }
}
