// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.content.Context;
import android.widget.TextView;

// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

private class setCount extends setCount
{

    private int count;
    public String text;
    final TokenCompleteTextView this$0;

    public int getCount()
    {
        return count;
    }

    public void setCount(int i)
    {
        count = i;
        text = (new StringBuilder("+")).append(count).toString();
        ((TextView)view).setText(text);
    }

    public (int i, Context context, int j, int k, int l)
    {
        this$0 = TokenCompleteTextView.this;
        super(TokenCompleteTextView.this, new TextView(context));
        text = "";
        TextView textview = (TextView)view;
        textview.setLayoutParams(new android.view.ountSpan.view(-2, -2));
        textview.setTextColor(j);
        textview.setTextSize(0, k);
        textview.setMinimumWidth(l);
        setCount(i);
    }
}
