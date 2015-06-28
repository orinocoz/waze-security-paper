// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageButton;
import com.waze.pioneer.PioneerManager;

public class ReportRecordButton extends ImageButton
{

    public ReportRecordButton(Context context)
    {
        super(context);
    }

    public ReportRecordButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
    }

    protected void onWindowVisibilityChanged(int i)
    {
        super.onWindowVisibilityChanged(i);
        if (PioneerManager.isActive() && i == 0)
        {
            setVisibility(4);
        }
    }
}
