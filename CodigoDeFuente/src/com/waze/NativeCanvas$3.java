// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeCanvas, MainActivity

class val.mainActivity
    implements Runnable
{

    final NativeCanvas this$0;
    private final MainActivity val$mainActivity;

    public void run()
    {
        val$mainActivity.cancelSplash();
    }

    ()
    {
        this$0 = final_nativecanvas;
        val$mainActivity = MainActivity.this;
        super();
    }
}
