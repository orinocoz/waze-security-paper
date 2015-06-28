// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.view.View;
import android.widget.AdapterView;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.inbox:
//            InboxActivity, InboxNativeManager, InboxMsgListAdapter, InboxMessage, 
//            InboxPreviewActivity

class this._cls0
    implements android.widget.emClickListener
{

    final InboxActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        InboxNativeManager inboxnativemanager = InboxNativeManager.getInstance();
        InboxMsgListAdapter inboxmsglistadapter = (InboxMsgListAdapter)adapterview.getAdapter();
        InboxActivity.access$0(InboxActivity.this, (InboxMessage)inboxmsglistadapter.getItem(i));
        Analytics.log("INBOX_TITLE_CLICKED", "MESSAGE_ID", InboxActivity.access$1(InboxActivity.this).id);
        if (InboxActivity.access$1(InboxActivity.this).unread)
        {
            InboxActivity.access$1(InboxActivity.this).unread = false;
            String as[] = new String[1];
            as[0] = InboxActivity.access$1(InboxActivity.this).id;
            inboxnativemanager.setRead(as, true);
            inboxmsglistadapter.notifyDataSetChanged();
        }
        InboxPreviewActivity.Start(InboxActivity.this, InboxActivity.access$1(InboxActivity.this), null);
    }

    vity()
    {
        this$0 = InboxActivity.this;
        super();
    }
}
