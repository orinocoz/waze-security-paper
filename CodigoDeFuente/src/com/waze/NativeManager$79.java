// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.sensor.VoiceActivator;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.twice
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$activate;
    private final boolean val$twice;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity == null)
        {
            return;
        }
        if (val$activate)
        {
            VoiceActivator.activate(mainactivity, val$twice);
            return;
        } else
        {
            VoiceActivator.deactivate(mainactivity);
            return;
        }
    }

    ator()
    {
        this$0 = final_nativemanager;
        val$activate = flag;
        val$twice = Z.this;
        super();
    }
}
