// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.Index
    implements Runnable
{

    final NativeManager this$0;
    private final int val$Index;
    private final LayoutManager val$layoutMgr;

    public void run()
    {
        val$layoutMgr.ClosureMapEnableButton(val$Index);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$Index = I.this;
        super();
    }
}
