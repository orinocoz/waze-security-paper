// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.callback
    implements Runnable
{

    final NativeManager this$0;
    private final long val$callback;

    public void run()
    {
        encouragementCloseCallbackNTV(val$callback);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$callback = J.this;
        super();
    }
}
