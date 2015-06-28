// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.view.View;

// Referenced classes of package com.waze.inbox:
//            InboxActivity, InboxNativeManager

class this._cls0
    implements android.view.ener
{

    final InboxActivity this$0;

    public void onClick(View view)
    {
        String as[] = InboxActivity.access$5(InboxActivity.this);
        if (as != null)
        {
            InboxActivity.access$6(InboxActivity.this).deleteMessages(as);
            InboxActivity.access$7(InboxActivity.this, true);
        }
    }

    er()
    {
        this$0 = InboxActivity.this;
        super();
    }
}
