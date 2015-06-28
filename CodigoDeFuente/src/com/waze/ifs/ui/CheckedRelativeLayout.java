// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Checkable;
import android.widget.CheckedTextView;
import android.widget.RelativeLayout;

public class CheckedRelativeLayout extends RelativeLayout
    implements Checkable
{

    protected CheckedTextView mCheckedTextView;

    public CheckedRelativeLayout(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mCheckedTextView = null;
    }

    public boolean isChecked()
    {
        if (mCheckedTextView == null)
        {
            return false;
        } else
        {
            return mCheckedTextView.isChecked();
        }
    }

    protected void onFinishInflate()
    {
        super.onFinishInflate();
        mCheckedTextView = (CheckedTextView)findViewById(0x7f0906c0);
    }

    public void setChecked(boolean flag)
    {
        if (mCheckedTextView != null)
        {
            mCheckedTextView.setChecked(flag);
        }
    }

    public void toggle()
    {
        if (mCheckedTextView == null)
        {
            mCheckedTextView.toggle();
        }
    }
}
