// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.text.Editable;
import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

class this._cls0
    implements android.view._cls5
{

    final PhoneNumberSignInActivity this$0;

    public void onClick(View view)
    {
        if (PhoneBox.getText() != null && PhoneBox.getText().toString() != null && !PhoneBox.getText().toString().equals(""))
        {
            SendPhone(view);
        }
    }

    ()
    {
        this$0 = PhoneNumberSignInActivity.this;
        super();
    }
}
