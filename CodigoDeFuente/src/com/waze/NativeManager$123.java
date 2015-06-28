// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.url
    implements Runnable
{

    final NativeManager this$0;
    private final LayoutManager val$layoutMgr;
    private final String val$url;

    public void run()
    {
        val$layoutMgr.OpenSystemMessageWebPopUp(val$url);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$url = String.this;
        super();
    }
}
