// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.inbox:
//            InboxNativeManager

class k extends RunnableUICallback
{

    int mBadge;
    int mTotal;
    int mUnread;
    final InboxNativeManager this$0;
    private final boxCountersHandler val$dataHandler;

    public void callback()
    {
        if (val$dataHandler != null)
        {
            val$dataHandler.onCounters(mBadge, mUnread, mTotal);
        }
    }

    public void event()
    {
        mUnread = InboxNativeManager.access$5(InboxNativeManager.this);
        mTotal = InboxNativeManager.access$6(InboxNativeManager.this);
        mBadge = InboxNativeManager.access$7(InboxNativeManager.this);
    }

    boxCountersHandler()
    {
        this$0 = final_inboxnativemanager;
        val$dataHandler = boxCountersHandler.this;
        super();
    }
}
