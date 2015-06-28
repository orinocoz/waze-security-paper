// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, MainActivity, LayoutManager

class val.activity
    implements Runnable
{

    final NativeManager this$0;
    private final MainActivity val$activity;

    public void run()
    {
        val$activity.getLayoutMgr().HideWebView();
    }

    ()
    {
        this$0 = final_nativemanager;
        val$activity = MainActivity.this;
        super();
    }
}
