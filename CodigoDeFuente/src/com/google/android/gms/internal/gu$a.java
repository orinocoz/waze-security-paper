// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.drawable.Drawable;

// Referenced classes of package com.google.android.gms.internal:
//            gu

private static final class a extends Drawable
{
    private static final class a extends android.graphics.drawable.Drawable.ConstantState
    {

        public int getChangingConfigurations()
        {
            return 0;
        }

        public Drawable newDrawable()
        {
            return gu.a.fc();
        }

        private a()
        {
        }

        a(gu._cls1 _pcls1)
        {
            this();
        }
    }


    private static final FI FH = new <init>();
    private static final a FI = new a(null);

    static fc fc()
    {
        return FH;
    }

    public void draw(Canvas canvas)
    {
    }

    public android.graphics.drawable.ble.ConstantState getConstantState()
    {
        return FI;
    }

    public int getOpacity()
    {
        return -2;
    }

    public void setAlpha(int i)
    {
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
    }


    private a()
    {
    }
}
