// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.LastAccessTime
    implements Runnable
{

    final NativeManager this$0;
    private final String val$LastAccessTime;

    public void run()
    {
        NativeManager.access$23(NativeManager.this, val$LastAccessTime);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$LastAccessTime = String.this;
        super();
    }
}
