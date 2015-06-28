// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.widget.AbsListView;

// Referenced classes of package com.waze.inbox:
//            InboxActivity, InboxMsgListAdapter

class this._cls0
    implements android.widget.rollListener
{

    final InboxActivity this$0;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
        if (i + j == k && InboxActivity.access$2(InboxActivity.this))
        {
            InboxActivity.access$3(InboxActivity.this).setLoading(true);
            InboxActivity.access$4(InboxActivity.this);
        }
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
    }

    ter()
    {
        this$0 = InboxActivity.this;
        super();
    }
}
