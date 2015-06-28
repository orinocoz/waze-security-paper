// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.widget.CompoundButton;
import java.util.ArrayList;

// Referenced classes of package com.waze.inbox:
//            InboxMsgListAdapter, InboxMessage

class this._cls0
    implements android.widget.edChangeListener
{

    final InboxMsgListAdapter this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        Integer integer;
        String s;
        integer = (Integer)compoundbutton.getTag();
        s = ((InboxMessage)InboxMsgListAdapter.access$0(InboxMsgListAdapter.this).get(integer.intValue())).id;
        if (!flag) goto _L2; else goto _L1
_L1:
        if (!InboxMsgListAdapter.access$1(InboxMsgListAdapter.this).contains(s))
        {
            InboxMsgListAdapter.access$1(InboxMsgListAdapter.this).add(s);
        }
_L4:
        if (InboxMsgListAdapter.access$2(InboxMsgListAdapter.this) != null)
        {
            InboxMsgListAdapter.access$2(InboxMsgListAdapter.this).onCheckClicked(integer.intValue(), flag);
        }
        return;
_L2:
        if (InboxMsgListAdapter.access$1(InboxMsgListAdapter.this).contains(s))
        {
            InboxMsgListAdapter.access$1(InboxMsgListAdapter.this).remove(s);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    nCheckedListener()
    {
        this$0 = InboxMsgListAdapter.this;
        super();
    }
}
