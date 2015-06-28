// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class this._cls0
    implements android.view.y._cls3
{

    final UpdatePriceActivity this$0;

    public void onClick(View view)
    {
        EditText edittext = (EditText)findViewById(0x7f09077d);
        edittext.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(edittext, 1);
    }

    ager()
    {
        this$0 = UpdatePriceActivity.this;
        super();
    }
}
