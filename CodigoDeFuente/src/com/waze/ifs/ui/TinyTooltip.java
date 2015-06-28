// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.view.View;
import android.widget.PopupWindow;
import android.widget.TextView;

// Referenced classes of package com.waze.ifs.ui:
//            LayoutTooltip

public class TinyTooltip extends LayoutTooltip
{

    protected Context mContext;
    private TextView mTextView;
    protected PopupWindow mWindow;

    public TinyTooltip(Context context, String s)
    {
        super(context, 0x7f03011d);
        setDelta((int)(3F * mDensity), (int)(10F * mDensity));
        mPreferLeft = false;
        mTextView = (TextView)mView.findViewById(0x7f090727);
        mTextView.setText(s);
    }
}
