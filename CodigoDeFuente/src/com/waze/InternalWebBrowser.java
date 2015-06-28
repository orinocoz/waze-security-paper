// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.os.Bundle;
import com.waze.view.web.SimpleWebActivity;

public class InternalWebBrowser extends SimpleWebActivity
{

    private String mTitle;
    private String mUrl;

    public InternalWebBrowser()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            mTitle = bundle1.getString("title");
            if (mTitle != null)
            {
                setTitleStr(mTitle);
            }
            mUrl = bundle1.getString("url");
            onUrl(mUrl);
        }
    }

    public void onUrl(String s)
    {
        loadUrl(mUrl);
    }

    public void onWebViewSize(int i, int j)
    {
    }
}
