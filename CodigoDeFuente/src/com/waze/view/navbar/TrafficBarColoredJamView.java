// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;

public class TrafficBarColoredJamView extends View
{

    private static final int COLORS[] = {
        -9104, -21392, 0xfffc6060, 0xff980606
    };
    private static final int PAST_COLOR = 0xffc0c0c0;
    Drawable mBase;
    Bitmap mBmp;
    private Canvas mCanvas;
    int mColors[];
    float mDistances[];
    private Paint mPaint;
    private Paint mTrafficPaint;

    public TrafficBarColoredJamView(Context context)
    {
        super(context);
        init();
    }

    public TrafficBarColoredJamView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init();
    }

    public TrafficBarColoredJamView(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init();
    }

    private void colorizeDrawable()
    {
        float f = mCanvas.getHeight();
        float f1 = f + 1.0F;
        int i = 0;
        do
        {
            if (i >= mColors.length)
            {
                invalidate();
                return;
            }
            mTrafficPaint.setColor(mColors[i]);
            float f2 = f1 - f * mDistances[i] - 0.5F;
            mCanvas.drawRect(0.0F, f2, 100F, f1 + 0.5F, mTrafficPaint);
            f1 = f2 + 0.5F;
            i++;
        } while (true);
    }

    private void init()
    {
        mPaint = new Paint();
        mPaint.setColor(-1);
        mPaint.setAntiAlias(true);
        mTrafficPaint = new Paint();
        mTrafficPaint.setColor(0xff0000ff);
        mTrafficPaint.setXfermode(new PorterDuffXfermode(android.graphics.PorterDuff.Mode.SRC_IN));
        mTrafficPaint.setAntiAlias(true);
        setLayerType(1, null);
        if (isInEditMode())
        {
            int ai[] = new int[9];
            ai[2] = 1;
            ai[3] = 1;
            ai[4] = 2;
            ai[5] = 2;
            ai[6] = 3;
            ai[7] = 3;
            ai[8] = 4;
            setColors(ai, new int[] {
                5, 5, 5, 5, 5, 5, 5, 5, 5
            }, 10);
        }
    }

    protected void onDraw(Canvas canvas)
    {
        super.onDraw(canvas);
        canvas.drawBitmap(mBmp, 0.0F, 0.0F, mPaint);
    }

    protected void onSizeChanged(int i, int j, int k, int l)
    {
        super.onSizeChanged(i, j, k, l);
        if (android.os.Build.VERSION.SDK_INT < 17)
        {
            mBmp = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
            mBmp.setDensity(getResources().getDisplayMetrics().densityDpi);
        } else
        {
            mBmp = Bitmap.createBitmap(getResources().getDisplayMetrics(), i, j, android.graphics.Bitmap.Config.ARGB_8888);
        }
        mCanvas = new Canvas(mBmp);
        mBase = getResources().getDrawable(0x7f020422);
        mBase.setBounds(0, 0, mCanvas.getWidth(), mCanvas.getHeight());
        mBase.draw(mCanvas);
        if (mColors != null)
        {
            colorizeDrawable();
        }
    }

    public void setColors(int ai[], int ai1[], int i)
    {
        if (i != 100) goto _L2; else goto _L1
_L1:
        mDistances = new float[1];
        mDistances[0] = 1.0F;
        mColors = new int[1];
        mColors[0] = 0xffc0c0c0;
        if (mCanvas != null)
        {
            colorizeDrawable();
        }
_L7:
        return;
_L2:
        int j;
        int k;
        j = 0;
        k = 0;
_L8:
        if (k < ai1.length) goto _L4; else goto _L3
_L3:
        int i1;
        int j1;
        int l = (j * i) / (100 - i);
        i1 = j + l;
        mDistances = new float[1 + ai1.length];
        mDistances[0] = (float)l / (float)i1;
        j1 = 0;
_L9:
        if (j1 < ai1.length) goto _L6; else goto _L5
_L5:
        int k1;
        mColors = new int[1 + ai.length];
        mColors[0] = 0xffc0c0c0;
        k1 = 0;
_L10:
        if (k1 < ai.length)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        if (mCanvas != null)
        {
            colorizeDrawable();
            return;
        }
          goto _L7
_L4:
        j += ai1[k];
        k++;
          goto _L8
_L6:
        mDistances[j1 + 1] = (float)ai1[j1] / (float)i1;
        j1++;
          goto _L9
        int l1 = ai[k1];
        if (l1 < 0 || l1 >= COLORS.length)
        {
            l1 = 2;
        }
        mColors[k1 + 1] = COLORS[l1];
        k1++;
          goto _L10
    }

}
