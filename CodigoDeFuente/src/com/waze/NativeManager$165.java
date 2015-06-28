// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, MainActivity, LayoutManager

class val.aFlags
    implements Runnable
{

    final NativeManager this$0;
    private final int val$aFlags;
    private final byte val$aUrl[];
    private final Rect val$rect;

    public void run()
    {
        getMainActivity().getLayoutMgr().ShowWebView(new String(val$aUrl), val$rect, val$aFlags);
    }

    Rect()
    {
        this$0 = final_nativemanager;
        val$aUrl = abyte0;
        val$rect = rect1;
        val$aFlags = I.this;
        super();
    }
}
