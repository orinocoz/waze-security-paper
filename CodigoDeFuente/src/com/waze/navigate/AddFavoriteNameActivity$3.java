// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteNameActivity

class this._cls0
    implements Runnable
{

    final AddFavoriteNameActivity this$0;

    public void run()
    {
        editText.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(editText, 2);
    }

    ()
    {
        this$0 = AddFavoriteNameActivity.this;
        super();
    }
}
