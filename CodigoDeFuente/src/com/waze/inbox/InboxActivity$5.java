// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.view.View;

// Referenced classes of package com.waze.inbox:
//            InboxActivity, InboxMsgListAdapter

class this._cls0
    implements android.view.ener
{

    final InboxActivity this$0;

    public void onClick(View view)
    {
        if (InboxActivity.access$8(InboxActivity.this))
        {
            InboxActivity.access$3(InboxActivity.this).checkAll();
            return;
        } else
        {
            InboxActivity.access$3(InboxActivity.this).clearChecked();
            return;
        }
    }

    ter()
    {
        this$0 = InboxActivity.this;
        super();
    }
}
