// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.aUrl
    implements Runnable
{

    final NativeManager this$0;
    private final String val$aUrl;
    private final rlHandleResult val$onResult;

    public void run()
    {
        val$onResult.result = NativeManager.access$9(NativeManager.this, val$aUrl);
        val$onResult.run();
    }

    rlHandleResult()
    {
        this$0 = final_nativemanager;
        val$onResult = rlhandleresult;
        val$aUrl = String.this;
        super();
    }
}
