// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.messages.UserMessage;
import com.waze.user.UserData;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class this._cls0
    implements android.view._cls5
{

    final UserDetailsActivity this$0;

    public void onClick(View view)
    {
        UserMessage.startPrivate(UserDetailsActivity.this, (UserData)UserDetailsActivity.access$0(UserDetailsActivity.this));
    }

    ()
    {
        this$0 = UserDetailsActivity.this;
        super();
    }
}
