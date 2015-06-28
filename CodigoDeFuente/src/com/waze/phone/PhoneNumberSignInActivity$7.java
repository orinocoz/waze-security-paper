// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.graphics.Color;
import android.graphics.drawable.Drawable;
import android.text.Editable;
import android.text.TextWatcher;
import android.widget.TextView;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

class this._cls0
    implements TextWatcher
{

    final PhoneNumberSignInActivity this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (PhoneNumberSignInActivity.access$1(PhoneNumberSignInActivity.this))
        {
            PhoneNumberSignInActivity.access$2(PhoneNumberSignInActivity.this).getBackground().setAlpha(255);
            PhoneNumberSignInActivity.access$2(PhoneNumberSignInActivity.this).setTextColor(Color.parseColor("#00bcfe"));
            return;
        } else
        {
            PhoneNumberSignInActivity.access$2(PhoneNumberSignInActivity.this).getBackground().setAlpha(125);
            PhoneNumberSignInActivity.access$2(PhoneNumberSignInActivity.this).setTextColor(Color.parseColor("#77000000"));
            return;
        }
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
