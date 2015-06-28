// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.promotionUrl
    implements Runnable
{

    final NativeManager this$0;
    private final int val$iID;
    private final LayoutManager val$layoutMgr;
    private final String val$promotionUrl;

    public void run()
    {
        val$layoutMgr.preparePoi(val$iID, val$promotionUrl);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$iID = i;
        val$promotionUrl = String.this;
        super();
    }
}
