// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.content.Intent;
import android.os.Bundle;
import com.waze.view.web.SimpleWebActivity;

public class RTAlertsGroupActivity extends SimpleWebActivity
{

    private String mUrl;

    public RTAlertsGroupActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        setResult(j);
        finish();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            mUrl = bundle1.getString("url");
            onUrl(mUrl);
        }
        setTitleText(0x7f07019b);
    }

    public void onUrl(String s)
    {
        loadUrl(mUrl);
    }

    public void onWebViewSize(int i, int j)
    {
    }
}
