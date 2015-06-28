// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.text.InputFilter;
import android.text.Spanned;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class this._cls0
    implements InputFilter
{

    final UpdatePriceActivity this$0;

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        if (overrideFilter)
        {
            overrideFilter = false;
        } else
        if (charsequence.equals(".") || charsequence.equals(","))
        {
            return "";
        }
        return null;
    }

    ()
    {
        this$0 = UpdatePriceActivity.this;
        super();
    }
}
