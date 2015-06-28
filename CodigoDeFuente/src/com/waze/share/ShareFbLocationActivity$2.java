// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.text.Editable;
import android.text.TextWatcher;

// Referenced classes of package com.waze.share:
//            ShareFbLocationActivity

class this._cls0
    implements TextWatcher
{

    final ShareFbLocationActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        String s = editable.toString();
        if (s != null && s.length() > 0)
        {
            ShareFbLocationActivity.access$2(ShareFbLocationActivity.this, s, false, false);
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
        this$0 = ShareFbLocationActivity.this;
        super();
    }
}
