// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class val.showMessage
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$showMessage;

    public void run()
    {
        AppService.getMainActivity().startStopPointActivity(val$showMessage);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$showMessage = Z.this;
        super();
    }
}
