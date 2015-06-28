// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeCanvas, LayoutManager

class val.layoutMgr
    implements Runnable
{

    final NativeCanvas this$0;
    private final LayoutManager val$layoutMgr;

    public void run()
    {
        val$layoutMgr.onBackPressed();
    }

    ()
    {
        this$0 = final_nativecanvas;
        val$layoutMgr = LayoutManager.this;
        super();
    }
}
