// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.inbox:
//            InboxNativeManager, InboxPreviewActivity, InboxMessage

class val.showInbox
    implements Runnable
{

    final InboxNativeManager this$0;
    private final ActivityBase val$activity;
    private final InboxMessage val$msg;
    private final boolean val$showInbox;

    public void run()
    {
        InboxPreviewActivity.Start(val$activity, val$msg, Boolean.valueOf(val$showInbox));
    }

    ()
    {
        this$0 = final_inboxnativemanager;
        val$activity = activitybase;
        val$msg = inboxmessage;
        val$showInbox = Z.this;
        super();
    }
}
