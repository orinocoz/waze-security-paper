// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.text.Editable;
import android.text.SpanWatcher;
import android.text.Spannable;
import java.util.ArrayList;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private class <init>
    implements SpanWatcher
{

    final TokenCompleteTextView this$0;

    private void updateCountSpan(final int change)
    {
        final Editable text = getText();
        <init> a_3C_init>[];
        if (text != null && TokenCompleteTextView.access$4(TokenCompleteTextView.this) != null)
        {
            if ((a_3C_init> = (this._cls0[])text.getSpans(0, text.length(), com/tokenautocomplete/TokenCompleteTextView$CountSpan)).length == 1)
            {
                final <init> span = a_3C_init>[0];
                post(new Runnable() {

                    final TokenCompleteTextView.TokenSpanWatcher this$1;
                    private final int val$change;
                    private final TokenCompleteTextView.CountSpan val$span;
                    private final Editable val$text;

                    public void run()
                    {
                        int i = text.getSpanStart(span);
                        int j = text.getSpanEnd(span);
                        span.setCount(span.getCount() + change);
                        if (span.getCount() > 0)
                        {
                            text.replace(i, j, span.text);
                            return;
                        } else
                        {
                            text.delete(i, j);
                            text.removeSpan(span);
                            return;
                        }
                    }

            
            {
                this$1 = TokenCompleteTextView.TokenSpanWatcher.this;
                text = editable;
                span = countspan;
                change = i;
                super();
            }
                });
                return;
            }
        }
    }

    public void onSpanAdded(Spannable spannable, Object obj, int i, int j)
    {
        if ((obj instanceof _cls1.val.span) && !TokenCompleteTextView.access$5(TokenCompleteTextView.this))
        {
            _cls1.val.span span = (this._cls0)obj;
            TokenCompleteTextView.access$6(TokenCompleteTextView.this).add(span.tToken());
            updateCountSpan(1);
            if (TokenCompleteTextView.access$7(TokenCompleteTextView.this) != null)
            {
                TokenCompleteTextView.access$7(TokenCompleteTextView.this).okenAdded(span.tToken());
            }
        }
    }

    public void onSpanChanged(Spannable spannable, Object obj, int i, int j, int k, int l)
    {
    }

    public void onSpanRemoved(Spannable spannable, Object obj, int i, int j)
    {
        if ((obj instanceof tToken) && !TokenCompleteTextView.access$5(TokenCompleteTextView.this))
        {
            tToken ttoken = (this._cls0)obj;
            if (TokenCompleteTextView.access$6(TokenCompleteTextView.this).contains(ttoken.tToken()))
            {
                TokenCompleteTextView.access$6(TokenCompleteTextView.this).remove(ttoken.tToken());
                updateCountSpan(-1);
            }
            if (TokenCompleteTextView.access$7(TokenCompleteTextView.this) != null)
            {
                TokenCompleteTextView.access$7(TokenCompleteTextView.this).okenRemoved(ttoken.tToken());
            }
        }
    }

    private _cls1.val.change()
    {
        this$0 = TokenCompleteTextView.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
