// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.profile:
//            AccountSignInDetails

class this._cls0
    implements android.widget.Listener
{

    final AccountSignInDetails this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            AccountSignInDetails.access$0(AccountSignInDetails.this);
            return true;
        } else
        {
            return false;
        }
    }

    stener()
    {
        this$0 = AccountSignInDetails.this;
        super();
    }
}
