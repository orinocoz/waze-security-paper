// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.user.UserData;

// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.y
    implements Runnable
{

    final NativeManager this$0;
    private final UserData val$data;
    private final LayoutManager val$layoutMgr;
    private final int val$x;
    private final int val$y;

    public void run()
    {
        val$layoutMgr.openUserPopup(val$data, val$x, val$y);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$data = userdata;
        val$x = i;
        val$y = I.this;
        super();
    }
}