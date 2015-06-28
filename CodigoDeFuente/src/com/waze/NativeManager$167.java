// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, MainActivity, LayoutManager, WzWebView

class val.url
    implements Runnable
{

    final NativeManager this$0;
    private final MainActivity val$activity;
    private final String val$url;

    public void run()
    {
        LayoutManager layoutmanager = val$activity.getLayoutMgr();
        if (layoutmanager != null)
        {
            WzWebView wzwebview = layoutmanager.getWebView();
            if (wzwebview != null)
            {
                wzwebview.loadUrl(val$url);
            }
        }
    }

    ()
    {
        this$0 = final_nativemanager;
        val$activity = mainactivity;
        val$url = String.this;
        super();
    }
}
