// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;
import android.text.SpannableStringBuilder;
import java.util.ArrayList;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

class val.sourceText
    implements Runnable
{

    final TokenCompleteTextView this$0;
    private final Object val$object;
    private final CharSequence val$sourceText;

    public void run()
    {
        if (val$object != null && (TokenCompleteTextView.access$12(TokenCompleteTextView.this) || !TokenCompleteTextView.access$6(TokenCompleteTextView.this).contains(val$object)))
        {
            SpannableStringBuilder spannablestringbuilder = TokenCompleteTextView.access$13(TokenCompleteTextView.this, val$sourceText);
            kenImageSpan kenimagespan = buildSpanForObject(val$object);
            Editable editable = getText();
            if (editable != null)
            {
                int i = editable.length();
                if (TokenCompleteTextView.access$14(TokenCompleteTextView.this))
                {
                    i = TokenCompleteTextView.access$9(TokenCompleteTextView.this).length();
                    editable.insert(i, spannablestringbuilder);
                } else
                {
                    editable.append(spannablestringbuilder);
                }
                editable.setSpan(kenimagespan, i, -1 + (i + spannablestringbuilder.length()), 33);
                if (!TokenCompleteTextView.access$6(TokenCompleteTextView.this).contains(val$object))
                {
                    TokenCompleteTextView.access$15(TokenCompleteTextView.this).onSpanAdded(editable, kenimagespan, i, -1 + (i + spannablestringbuilder.length()));
                }
                setSelection(editable.length());
                return;
            }
        }
    }

    kenSpanWatcher()
    {
        this$0 = final_tokencompletetextview;
        val$object = obj;
        val$sourceText = CharSequence.this;
        super();
    }
}
