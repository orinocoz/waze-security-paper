// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteActivity

class this._cls0
    implements Runnable
{

    final AddFavoriteActivity this$0;

    public void run()
    {
        searchBox.requestFocus();
        ((InputMethodManager)getSystemService("input_method")).showSoftInput(searchBox, 2);
    }

    ger()
    {
        this$0 = AddFavoriteActivity.this;
        super();
    }
}
