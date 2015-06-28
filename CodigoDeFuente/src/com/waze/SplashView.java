// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.Activity;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.util.Log;
import android.view.View;

// Referenced classes of package com.waze:
//            NativeCanvas

public final class SplashView extends View
{

    private Bitmap mSplashBmp;

    public SplashView(Activity activity)
    {
        super(activity);
        mSplashBmp = null;
    }

    private void InitSplashBitmap()
    {
        mSplashBmp = NativeCanvas.GetSplashBmp(this);
    }

    protected void onDetachedFromWindow()
    {
        Log.w("WAZE DEBUG", "Splash view detached");
        mSplashBmp.recycle();
    }

    protected void onDraw(Canvas canvas)
    {
        canvas.drawBitmap(mSplashBmp, 0.0F, 0.0F, null);
    }

    protected void onMeasure(int i, int j)
    {
        super.onMeasure(i, j);
        InitSplashBitmap();
    }
}
