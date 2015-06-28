// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.text.Editable;
import android.text.TextWatcher;
import android.widget.EditText;

// Referenced classes of package com.waze.mywaze.social:
//            FacebookEventActivity

class this._cls0
    implements TextWatcher
{

    final FacebookEventActivity this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (charsequence.length() == 0)
        {
            searchBox.setTextSize(1, 14F);
            return;
        } else
        {
            searchBox.setTextSize(1, 16F);
            return;
        }
    }

    ()
    {
        this$0 = FacebookEventActivity.this;
        super();
    }
}
