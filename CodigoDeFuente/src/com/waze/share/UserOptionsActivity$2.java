// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.messages.UserMessage;

// Referenced classes of package com.waze.share:
//            UserOptionsActivity

class this._cls0
    implements android.view._cls2
{

    final UserOptionsActivity this$0;

    public void onClick(View view)
    {
        UserMessage.startPrivate(UserOptionsActivity.this, UserOptionsActivity.access$1(UserOptionsActivity.this));
    }

    ()
    {
        this$0 = UserOptionsActivity.this;
        super();
    }
}
