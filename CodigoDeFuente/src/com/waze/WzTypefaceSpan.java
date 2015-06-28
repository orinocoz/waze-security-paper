// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.graphics.Paint;
import android.graphics.Typeface;
import android.text.TextPaint;
import android.text.style.TypefaceSpan;

public class WzTypefaceSpan extends TypefaceSpan
{

    private final Typeface mNewType;

    public WzTypefaceSpan(Typeface typeface)
    {
        super("sans");
        mNewType = typeface;
    }

    public WzTypefaceSpan(String s, Typeface typeface)
    {
        super(s);
        mNewType = typeface;
    }

    private static void applyTypeFace(Paint paint, Typeface typeface)
    {
        Typeface typeface1 = paint.getTypeface();
        int i;
        int j;
        if (typeface1 == null)
        {
            i = 0;
        } else
        {
            i = typeface1.getStyle();
        }
        j = i & (-1 ^ typeface.getStyle());
        if ((j & 1) != 0)
        {
            paint.setFakeBoldText(true);
        }
        if ((j & 2) != 0)
        {
            paint.setTextSkewX(-0.25F);
        }
        paint.setTypeface(typeface);
    }

    public void updateDrawState(TextPaint textpaint)
    {
        applyTypeFace(textpaint, mNewType);
    }

    public void updateMeasureState(TextPaint textpaint)
    {
        applyTypeFace(textpaint, mNewType);
    }
}
