// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import java.util.ArrayList;

// Referenced classes of package com.waze.inbox:
//            InboxNativeManager, InboxMessage

class val.more
    implements Runnable
{

    final InboxNativeManager this$0;
    private final int val$badge;
    private final InboxMessage val$list[];
    private final boolean val$more;
    private final int val$unread;

    public void run()
    {
        int i = 0;
        do
        {
            if (i >= InboxNativeManager.access$9(InboxNativeManager.this).size())
            {
                return;
            }
            ((boxDataListener)InboxNativeManager.access$9(InboxNativeManager.this).get(i)).onData(val$list, val$badge, val$unread, val$more);
            i++;
        } while (true);
    }

    boxDataListener()
    {
        this$0 = final_inboxnativemanager;
        val$list = ainboxmessage;
        val$badge = i;
        val$unread = j;
        val$more = Z.this;
        super();
    }
}
