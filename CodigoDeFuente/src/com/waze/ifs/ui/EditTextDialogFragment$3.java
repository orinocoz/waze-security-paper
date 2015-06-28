// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.waze.ifs.ui:
//            EditTextDialogFragment

class this._cls0
    implements TextWatcher
{

    final EditTextDialogFragment this$0;

    public void afterTextChanged(Editable editable)
    {
        if (editable.length() > EditTextDialogFragment.access$1(EditTextDialogFragment.this))
        {
            editable.delete(300, editable.length());
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = EditTextDialogFragment.this;
        super();
    }
}
