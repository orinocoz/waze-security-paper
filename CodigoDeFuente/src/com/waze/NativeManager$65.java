// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.aConnTypeStr
    implements Runnable
{

    final NativeManager this$0;
    private final int val$aConnType;
    private final String val$aConnTypeStr;
    private final boolean val$aConnected;

    public void run()
    {
        NativeManager.access$71(NativeManager.this, val$aConnected, val$aConnType, val$aConnTypeStr);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$aConnected = flag;
        val$aConnType = i;
        val$aConnTypeStr = String.this;
        super();
    }
}
