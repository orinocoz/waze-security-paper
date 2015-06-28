// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.push.Registrar;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.updateNow
    implements Runnable
{

    private final boolean val$isSet;
    private final boolean val$updateNow;

    public void run()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        boolean flag = val$isSet;
        String s = null;
        if (flag)
        {
            s = Registrar.instance().getRegistrationId(AppService.getAppContext());
        }
        NativeManager.access$69(nativemanager, s, val$updateNow);
    }

    ()
    {
        val$isSet = flag;
        val$updateNow = flag1;
        super();
    }
}
