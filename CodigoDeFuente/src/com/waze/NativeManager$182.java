// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.confidence
    implements Runnable
{

    final NativeManager this$0;
    private final long val$callback;
    private final float val$confidence[];
    private final Object val$voiceResult[];

    public void run()
    {
        NativeManager.access$104(NativeManager.this, val$callback, val$voiceResult, val$confidence);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$callback = l;
        val$voiceResult = aobj;
        val$confidence = _5B_F.this;
        super();
    }
}
