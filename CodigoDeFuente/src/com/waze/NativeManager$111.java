// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.distanceStr
    implements Runnable
{

    final NativeManager this$0;
    private final String val$distanceStr;
    private final String val$iconName;
    private final LayoutManager val$layoutMgr;
    private final String val$titleStr;

    public void run()
    {
        val$layoutMgr.updateAlerterPopup(val$titleStr, val$iconName, val$distanceStr);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$titleStr = s;
        val$iconName = s1;
        val$distanceStr = String.this;
        super();
    }
}
