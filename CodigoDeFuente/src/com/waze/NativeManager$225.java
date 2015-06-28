// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.flush
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$beforeLogin;
    private final String val$event;
    private final boolean val$flush;

    public void run()
    {
        NativeManager.access$111(NativeManager.this, val$event, val$beforeLogin, val$flush);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$event = s;
        val$beforeLogin = flag;
        val$flush = Z.this;
        super();
    }
}
