// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.view.View;

// Referenced classes of package com.waze.social:
//            AddFriendDialog

class this._cls0
    implements android.view.er
{

    final AddFriendDialog this$0;

    public void onClick(View view)
    {
        if (AddFriendDialog.access$0(AddFriendDialog.this) != null)
        {
            AddFriendDialog.access$0(AddFriendDialog.this).onSendRequestClicked();
        }
    }

    ddFriendDialog()
    {
        this$0 = AddFriendDialog.this;
        super();
    }
}
