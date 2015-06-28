// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.webkit.WebView;

public class CustomWebView extends WebView
{

    public CustomWebView(Context context)
    {
        super(context);
    }

    public CustomWebView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    public CustomWebView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
    }

    public void onWindowFocusChanged(boolean flag)
    {
        try
        {
            super.onWindowFocusChanged(flag);
            return;
        }
        catch (NullPointerException nullpointerexception)
        {
            return;
        }
    }
}
