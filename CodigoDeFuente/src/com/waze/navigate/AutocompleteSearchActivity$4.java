// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.text.Editable;
import android.text.TextWatcher;
import com.waze.view.text.InstantAutoComplete;

// Referenced classes of package com.waze.navigate:
//            AutocompleteSearchActivity

class this._cls0
    implements TextWatcher
{

    final AutocompleteSearchActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        searchBox.post(new Runnable() {

            final AutocompleteSearchActivity._cls4 this$1;

            public void run()
            {
                searchBox.showDropDown();
            }

            
            {
                this$1 = AutocompleteSearchActivity._cls4.this;
                super();
            }
        });
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


    _cls1.this._cls1()
    {
        this$0 = AutocompleteSearchActivity.this;
        super();
    }
}
