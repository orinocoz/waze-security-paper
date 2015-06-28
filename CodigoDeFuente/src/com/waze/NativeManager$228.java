// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.infoVal
    implements Runnable
{

    final NativeManager this$0;
    private final String val$event;
    private final String val$infoName;
    private final String val$infoVal;

    public void run()
    {
        NativeManager.access$114(NativeManager.this, val$event, val$infoName, val$infoVal);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$event = s;
        val$infoName = s1;
        val$infoVal = String.this;
        super();
    }
}
