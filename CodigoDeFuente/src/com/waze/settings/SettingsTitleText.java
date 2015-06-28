// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SettingsTitleText extends RelativeLayout
{

    private LayoutInflater inflater;

    public SettingsTitleText(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300f9, this);
    }

    public void setText(String s)
    {
        ((TextView)findViewById(0x7f09062d)).setText(s.toUpperCase());
    }
}
