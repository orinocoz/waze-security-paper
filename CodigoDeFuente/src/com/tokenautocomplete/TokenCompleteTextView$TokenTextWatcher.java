// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;
import android.text.TextWatcher;
import java.io.PrintStream;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private class <init>
    implements TextWatcher
{

    final TokenCompleteTextView this$0;

    public void afterTextChanged(Editable editable)
    {
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
        System.out.println((new StringBuilder("changing text: ")).append(charsequence).toString());
        Editable editable = getText();
        if (editable != null)
        {
            TokenCompleteTextView.access$2(TokenCompleteTextView.this);
            TokenCompleteTextView.access$8(TokenCompleteTextView.this);
            <init> a_3C_init>[] = (this._cls0[])editable.getSpans(i - j, k + (i - j), com/tokenautocomplete/TokenCompleteTextView$TokenImageSpan);
            int l = a_3C_init>.length;
            int i1 = 0;
            while (i1 < l) 
            {
                <init> <init>1 = a_3C_init>[i1];
                int j1 = i + k;
                if (editable.getSpanStart(<init>1) < j1 && j1 <= editable.getSpanEnd(<init>1))
                {
                    int k1 = editable.getSpanStart(<init>1);
                    int l1 = editable.getSpanEnd(<init>1);
                    removeToken(<init>1, editable);
                    int i2 = l1 - 1;
                    if (i2 >= 0 && editable.charAt(i2) == ',')
                    {
                        editable.delete(i2, i2 + 1);
                    }
                    if (k1 > 0 && editable.charAt(k1) == ',')
                    {
                        editable.delete(k1, k1 + 1);
                    }
                }
                i1++;
            }
        }
    }

    protected void removeToken(removeToken removetoken, Editable editable)
    {
        editable.removeSpan(removetoken);
    }

    private ()
    {
        this$0 = TokenCompleteTextView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
