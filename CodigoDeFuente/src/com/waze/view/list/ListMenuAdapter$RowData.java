// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.list;

import android.graphics.drawable.Drawable;
import com.waze.ResManager;

// Referenced classes of package com.waze.view.list:
//            ListMenuAdapter

public static class setArrowImage
{

    private Drawable mArrowImage;
    private String mLabel;
    private int mLabelFontSize;
    private Drawable mLeftImage;
    private Drawable mRightImage;
    private int mRowHeight;
    private Object mValue;

    public String getLabel()
    {
        return mLabel;
    }

    public int getLabelFontSize()
    {
        return mLabelFontSize;
    }

    public int getRowHeight()
    {
        return mRowHeight;
    }

    public Object getValue()
    {
        return mValue;
    }

    public void setArrowImage(String s)
    {
        mArrowImage = ResManager.GetSkinDrawable(s);
    }

    public void setLabel(String s)
    {
        mLabel = s;
    }

    public void setLabelFontSize(int i)
    {
        mLabelFontSize = i;
    }

    public void setLeftImage(String s)
    {
        mLeftImage = ResManager.GetSkinDrawable(s);
    }

    public void setRightImage(String s)
    {
        mRightImage = ResManager.GetSkinDrawable(s);
    }

    public void setRowHeight(int i)
    {
        mRowHeight = i;
    }

    public void setValue(Object obj)
    {
        mValue = obj;
    }




    public (String s, Object obj, String s1, String s2, String s3)
    {
        setLabel(s);
        setValue(obj);
        setLeftImage(s1);
        setRightImage(s2);
        setArrowImage(s3);
    }
}
