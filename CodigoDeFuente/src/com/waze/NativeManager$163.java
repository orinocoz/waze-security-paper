// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze:
//            NativeManager

class val.aAlwaysOn
    implements Runnable
{

    final NativeManager this$0;
    private final int val$aAlwaysOn;

    public void run()
    {
        boolean flag = true;
        if (val$aAlwaysOn != flag)
        {
            flag = false;
        }
        ActivityBase.setScreenBacklightOn(flag);
    }

    e()
    {
        this$0 = final_nativemanager;
        val$aAlwaysOn = I.this;
        super();
    }
}
