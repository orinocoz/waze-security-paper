// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, MainActivity, LayoutManager

class Rect
    implements Runnable
{

    final NativeManager this$0;
    private final Rect val$rect;

    public void run()
    {
        LayoutManager layoutmanager = getMainActivity().getLayoutMgr();
        if (layoutmanager != null)
        {
            layoutmanager.ResizeWebView(val$rect);
        }
    }

    Rect()
    {
        this$0 = final_nativemanager;
        val$rect = Rect.this;
        super();
    }
}
