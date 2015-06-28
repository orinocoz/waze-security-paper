// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.TextView;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourNumbersActivity

class this._cls0
    implements android.widget.this._cls0
{

    final PhoneVerifyYourNumbersActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 4)
        {
            PhoneVerifyYourNumbersActivity.access$6(PhoneVerifyYourNumbersActivity.this).performClick();
            return true;
        } else
        {
            return false;
        }
    }

    ()
    {
        this$0 = PhoneVerifyYourNumbersActivity.this;
        super();
    }
}
