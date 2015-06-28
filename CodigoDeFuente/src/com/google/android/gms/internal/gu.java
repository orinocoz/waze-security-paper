// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;

// Referenced classes of package com.google.android.gms.internal:
//            iq

public final class gu extends Drawable
    implements android.graphics.drawable.Drawable.Callback
{
    private static final class a extends Drawable
    {

        private static final a FH = new a();
        private static final a FI = new a();

        static a fc()
        {
            return FH;
        }

        public void draw(Canvas canvas)
        {
        }

        public android.graphics.drawable.Drawable.ConstantState getConstantState()
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

    private static final class a.a extends android.graphics.drawable.Drawable.ConstantState
    {

        public int getChangingConfigurations()
        {
            return 0;
        }

        public Drawable newDrawable()
        {
            return a.fc();
        }

        private a.a()
        {
        }

    }

    static final class b extends android.graphics.drawable.Drawable.ConstantState
    {

        int FJ;
        int FK;

        public int getChangingConfigurations()
        {
            return FJ;
        }

        public Drawable newDrawable()
        {
            return new gu(this);
        }

        b(b b1)
        {
            if (b1 != null)
            {
                FJ = b1.FJ;
                FK = b1.FK;
            }
        }
    }


    private b FA;
    private Drawable FB;
    private Drawable FC;
    private boolean FD;
    private boolean FE;
    private boolean FF;
    private int FG;
    private boolean Fm;
    private int Fs;
    private long Ft;
    private int Fu;
    private int Fv;
    private int Fw;
    private int Fx;
    private int Fy;
    private boolean Fz;

    public gu(Drawable drawable, Drawable drawable1)
    {
        this(null);
        if (drawable == null)
        {
            drawable = a.fc();
        }
        FB = drawable;
        drawable.setCallback(this);
        b b1 = FA;
        b1.FK = b1.FK | drawable.getChangingConfigurations();
        if (drawable1 == null)
        {
            drawable1 = a.fc();
        }
        FC = drawable1;
        drawable1.setCallback(this);
        b b2 = FA;
        b2.FK = b2.FK | drawable1.getChangingConfigurations();
    }

    gu(b b1)
    {
        Fs = 0;
        Fw = 255;
        Fy = 0;
        Fm = true;
        FA = new b(b1);
    }

    public boolean canConstantState()
    {
        if (!FD)
        {
            boolean flag;
            if (FB.getConstantState() != null && FC.getConstantState() != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            FE = flag;
            FD = true;
        }
        return FE;
    }

    public void draw(Canvas canvas)
    {
        boolean flag = true;
        Fs;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 101
    //                   2 119;
           goto _L1 _L2 _L3
_L1:
        boolean flag1 = flag;
_L5:
        int i;
        boolean flag2;
        Drawable drawable;
        Drawable drawable1;
        i = Fy;
        flag2 = Fm;
        drawable = FB;
        drawable1 = FC;
        if (flag1)
        {
            if (!flag2 || i == 0)
            {
                drawable.draw(canvas);
            }
            if (i == Fw)
            {
                drawable1.setAlpha(Fw);
                drawable1.draw(canvas);
            }
            return;
        }
        break; /* Loop/switch isn't completed */
_L2:
        Ft = SystemClock.uptimeMillis();
        Fs = 2;
        flag1 = false;
        if (true) goto _L5; else goto _L4
_L4:
        break; /* Loop/switch isn't completed */
_L3:
        if (Ft >= 0L)
        {
            float f = (float)(SystemClock.uptimeMillis() - Ft) / (float)Fx;
            float f1;
            if (f < 1.0F)
            {
                flag = false;
            }
            if (flag)
            {
                Fs = 0;
            }
            f1 = Math.min(f, 1.0F);
            Fy = (int)((float)Fu + f1 * (float)(Fv - Fu));
        }
        if (true) goto _L1; else goto _L6
_L6:
        if (flag2)
        {
            drawable.setAlpha(Fw - i);
        }
        drawable.draw(canvas);
        if (flag2)
        {
            drawable.setAlpha(Fw);
        }
        if (i > 0)
        {
            drawable1.setAlpha(i);
            drawable1.draw(canvas);
            drawable1.setAlpha(Fw);
        }
        invalidateSelf();
        return;
    }

    public Drawable fb()
    {
        return FC;
    }

    public int getChangingConfigurations()
    {
        return super.getChangingConfigurations() | FA.FJ | FA.FK;
    }

    public android.graphics.drawable.Drawable.ConstantState getConstantState()
    {
        if (canConstantState())
        {
            FA.FJ = getChangingConfigurations();
            return FA;
        } else
        {
            return null;
        }
    }

    public int getIntrinsicHeight()
    {
        return Math.max(FB.getIntrinsicHeight(), FC.getIntrinsicHeight());
    }

    public int getIntrinsicWidth()
    {
        return Math.max(FB.getIntrinsicWidth(), FC.getIntrinsicWidth());
    }

    public int getOpacity()
    {
        if (!FF)
        {
            FG = Drawable.resolveOpacity(FB.getOpacity(), FC.getOpacity());
            FF = true;
        }
        return FG;
    }

    public void invalidateDrawable(Drawable drawable)
    {
        if (iq.fX())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.invalidateDrawable(this);
            }
        }
    }

    public Drawable mutate()
    {
        if (!Fz && super.mutate() == this)
        {
            if (!canConstantState())
            {
                throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
            }
            FB.mutate();
            FC.mutate();
            Fz = true;
        }
        return this;
    }

    protected void onBoundsChange(Rect rect)
    {
        FB.setBounds(rect);
        FC.setBounds(rect);
    }

    public void scheduleDrawable(Drawable drawable, Runnable runnable, long l)
    {
        if (iq.fX())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.scheduleDrawable(this, runnable, l);
            }
        }
    }

    public void setAlpha(int i)
    {
        if (Fy == Fw)
        {
            Fy = i;
        }
        Fw = i;
        invalidateSelf();
    }

    public void setColorFilter(ColorFilter colorfilter)
    {
        FB.setColorFilter(colorfilter);
        FC.setColorFilter(colorfilter);
    }

    public void startTransition(int i)
    {
        Fu = 0;
        Fv = Fw;
        Fy = 0;
        Fx = i;
        Fs = 1;
        invalidateSelf();
    }

    public void unscheduleDrawable(Drawable drawable, Runnable runnable)
    {
        if (iq.fX())
        {
            android.graphics.drawable.Drawable.Callback callback = getCallback();
            if (callback != null)
            {
                callback.unscheduleDrawable(this, runnable);
            }
        }
    }
}
