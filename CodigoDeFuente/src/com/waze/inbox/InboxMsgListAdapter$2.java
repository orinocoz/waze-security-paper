// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.view.View;
import android.widget.CheckBox;

// Referenced classes of package com.waze.inbox:
//            InboxMsgListAdapter

class this._cls0
    implements android.view._cls2
{

    final InboxMsgListAdapter this$0;

    public void onClick(View view)
    {
        CheckBox checkbox = (CheckBox)view.getTag();
        boolean flag;
        if (checkbox.isChecked())
        {
            flag = false;
        } else
        {
            flag = true;
        }
        checkbox.setChecked(flag);
    }

    ()
    {
        this$0 = InboxMsgListAdapter.this;
        super();
    }
}
