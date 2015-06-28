// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

class this._cls0
    implements android.widget.ner
{

    final PhoneNumberSignInActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            SendPhone(null);
            return true;
        } else
        {
            return false;
        }
    }

    ner()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
