// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.text;

import android.content.Context;
import android.graphics.Rect;
import android.util.AttributeSet;
import android.widget.AutoCompleteTextView;

public class InstantAutoComplete extends AutoCompleteTextView
{

    public InstantAutoComplete(Context context)
    {
        super(context);
    }

    public InstantAutoComplete(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public InstantAutoComplete(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public boolean enoughToFilter()
    {
        return true;
    }

    public void filterNow()
    {
        if (getAdapter() != null)
        {
            performFiltering(getText(), 0);
        }
    }

    protected void onFocusChanged(boolean flag, int i, Rect rect)
    {
        super.onFocusChanged(flag, i, rect);
        if (flag && getAdapter() != null)
        {
            performFiltering(getText(), 0);
        }
    }
}
