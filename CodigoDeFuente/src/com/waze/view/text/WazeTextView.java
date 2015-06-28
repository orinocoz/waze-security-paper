// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.text;

import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Typeface;
import android.util.AttributeSet;
import android.widget.TextView;
import com.waze.ResManager;

public class WazeTextView extends TextView
{

    int nType;

    public WazeTextView(Context context)
    {
        super(context);
        nType = 0;
        setFont(context);
    }

    public WazeTextView(Context context, int i, int j)
    {
        super(context);
        nType = 0;
        boolean flag = isInEditMode();
        Typeface typeface = null;
        if (!flag)
        {
            if (nType == 1)
            {
                typeface = ResManager.getRobotoReg(context);
            } else
            if (nType == 2)
            {
                typeface = ResManager.getRobotoLight(context);
            } else
            if (nType == 3)
            {
                typeface = ResManager.getRobotoMedium(context);
            } else
            if (nType == 5)
            {
                typeface = ResManager.getRobotoBlack(context);
            } else
            if (nType == 6)
            {
                typeface = ResManager.getRobotoSlab(context);
            } else
            {
                typeface = ResManager.getRobotoReg(context);
            }
        }
        setTypeface(typeface, j);
    }

    public WazeTextView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        nType = 0;
        nType = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.WazeTextView).getInteger(0, 1);
        setFont(context);
    }

    public WazeTextView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        nType = 0;
        nType = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.WazeTextView).getInteger(0, 1);
        setFont(context);
    }

    private void setFont(Context context)
    {
        Typeface typeface = getTypeface();
        boolean flag = false;
        int i = 0;
        if (typeface != null)
        {
            boolean flag1 = getTypeface().isBold();
            i = 0;
            if (flag1)
            {
                i = 1;
            }
            boolean flag2 = getTypeface().isItalic();
            flag = false;
            if (flag2)
            {
                flag = true;
            }
        }
        Typeface typeface1 = getTypeface();
        if (isInEditMode())
        {
            if (nType == 2 || flag)
            {
                setTypeface(Typeface.create("sans-serif-light", 0));
            } else
            {
                setTypeface(Typeface.create("sans-serif", i));
            }
        } else
        if (nType == 4)
        {
            typeface1 = Typeface.create(typeface1, i);
        } else
        if (nType == 5)
        {
            typeface1 = ResManager.getRobotoBlack(context);
        } else
        if (nType == 1)
        {
            typeface1 = ResManager.getRobotoReg(context);
        } else
        if (nType == 2)
        {
            typeface1 = ResManager.getRobotoLight(context);
        } else
        if (nType == 3)
        {
            typeface1 = ResManager.getRobotoMedium(context);
        } else
        if (nType == 6)
        {
            typeface1 = ResManager.getRobotoSlab(context);
        } else
        if (flag)
        {
            typeface1 = ResManager.getRobotoLight(context);
        } else
        {
            typeface1 = ResManager.getRobotoReg(context);
        }
        setTypeface(typeface1, i);
    }
}
