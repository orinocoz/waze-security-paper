// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.timeout
    implements Runnable
{

    final NativeManager this$0;
    private final String val$icon;
    private final LayoutManager val$layoutMgr;
    private final String val$text;
    private final int val$timeout;
    private final String val$title;

    public void run()
    {
        val$layoutMgr.showMessageTicker(val$title, val$text, val$icon, val$timeout);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$title = s;
        val$text = s1;
        val$icon = s2;
        val$timeout = I.this;
        super();
    }
}
