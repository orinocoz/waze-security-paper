// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.notificationbar;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;

public class NotifBar extends RelativeLayout
{

    private LayoutInflater inflater;

    public NotifBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        inflater.inflate(0x7f03009a, this);
    }
}
