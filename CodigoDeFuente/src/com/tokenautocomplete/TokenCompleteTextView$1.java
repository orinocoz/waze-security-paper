// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.InputFilter;
import android.text.Spanned;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

class this._cls0
    implements InputFilter
{

    final TokenCompleteTextView this$0;

    public CharSequence filter(CharSequence charsequence, int i, int j, Spanned spanned, int k, int l)
    {
        if (charsequence.length() == 1 && charsequence.charAt(0) == ',')
        {
            performCompletion();
            return "";
        }
        if (k < TokenCompleteTextView.access$9(TokenCompleteTextView.this).length() && l == TokenCompleteTextView.access$9(TokenCompleteTextView.this).length())
        {
            return TokenCompleteTextView.access$9(TokenCompleteTextView.this).substring(k, l);
        } else
        {
            return null;
        }
    }

    ()
    {
        this$0 = TokenCompleteTextView.this;
        super();
    }
}
