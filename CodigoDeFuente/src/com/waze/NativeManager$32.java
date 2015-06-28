// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.bToSave
    implements Runnable
{

    final NativeManager this$0;
    private final boolean val$bToSave;
    private final int val$nCount;
    private final int val$waze_ids[];
    private final Object val$wazes_phones[];

    public void run()
    {
        NativeManager.access$49(NativeManager.this, val$waze_ids, val$nCount, val$wazes_phones, val$bToSave);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$waze_ids = ai;
        val$nCount = i;
        val$wazes_phones = aobj;
        val$bToSave = Z.this;
        super();
    }
}
