// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import android.view.View;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private class view extends ReplacementSpan
{

    final TokenCompleteTextView this$0;
    protected View view;

    private void prepView()
    {
        int i = android.view.c((int)TokenCompleteTextView.access$0(TokenCompleteTextView.this), 0x80000000);
        int j = android.view.c(0, 0);
        view.measure(i, j);
        view.layout(0, 0, view.getMeasuredWidth(), view.getMeasuredHeight());
    }

    public void draw(Canvas canvas, CharSequence charsequence, int i, int j, float f, int k, int l, 
            int i1, Paint paint)
    {
        prepView();
        canvas.save();
        int j1 = (i1 - k - view.getBottom()) / 2;
        canvas.translate(f, i1 - view.getBottom() - j1);
        view.draw(canvas);
        canvas.restore();
    }

    public int getSize(Paint paint, CharSequence charsequence, int i, int j, android.graphics.Span span)
    {
        prepView();
        if (span != null)
        {
            int k = view.getMeasuredHeight() - (span.view - span.view);
            if (k > 0)
            {
                int l = k / 2;
                span.view = span.view + (k - l);
                span.view = span.view - l;
                span.view = span.view + (k - l);
                span.view = span.view - k / 2;
            }
        }
        return view.getRight();
    }

    public (View view1)
    {
        this$0 = TokenCompleteTextView.this;
        super();
        view = view1;
    }
}
