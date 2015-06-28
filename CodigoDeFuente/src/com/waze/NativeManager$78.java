// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.user.UserData;

// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.LocationText
    implements Runnable
{

    final NativeManager this$0;
    private final String val$LocationText;
    private final UserData val$data;
    private final LayoutManager val$layoutMgr;
    private final int val$nType;
    private final String val$sMeeting;

    public void run()
    {
        val$layoutMgr.openSharePopup(val$data, val$nType, val$sMeeting, val$LocationText);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$data = userdata;
        val$nType = i;
        val$sMeeting = s;
        val$LocationText = String.this;
        super();
    }
}
