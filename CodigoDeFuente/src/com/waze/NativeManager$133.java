// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.allData
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$allData;
    private final String val$id;
    private final int val$type;

    public void run()
    {
        NativeManager.access$82(NativeManager.this, val$id, val$type, val$allData);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$id = s;
        val$type = i;
        val$allData = Z.this;
        super();
    }
}
