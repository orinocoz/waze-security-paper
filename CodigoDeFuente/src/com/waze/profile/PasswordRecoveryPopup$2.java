// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.profile:
//            PasswordRecoveryPopup

class this._cls0
    implements android.widget.istener
{

    final PasswordRecoveryPopup this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            PasswordRecoveryPopup.access$0(PasswordRecoveryPopup.this);
            return true;
        } else
        {
            return false;
        }
    }

    tener()
    {
        this$0 = PasswordRecoveryPopup.this;
        super();
    }
}
