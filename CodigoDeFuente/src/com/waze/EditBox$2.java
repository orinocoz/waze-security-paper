// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.waze:
//            EditBox, AppService, NativeManager

class nit>
    implements TextWatcher
{

    final EditBox this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        if (charsequence.length() == 1)
        {
            AppService.getNativeManager().EditBoxCheckTypingLock(EditBox.this);
        }
    }

    nce()
    {
        this$0 = EditBox.this;
        super();
    }
}
