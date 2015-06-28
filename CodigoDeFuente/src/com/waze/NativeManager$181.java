// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class val.contextLong
    implements Runnable
{

    final NativeManager this$0;
    private final long val$callbackLong;
    private final long val$contextLong;
    private final int val$displayStringInt;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity == null)
        {
            return;
        } else
        {
            mainactivity.startEditTextDialog(val$displayStringInt, val$callbackLong, val$contextLong);
            return;
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$displayStringInt = i;
        val$callbackLong = l;
        val$contextLong = J.this;
        super();
    }
}
