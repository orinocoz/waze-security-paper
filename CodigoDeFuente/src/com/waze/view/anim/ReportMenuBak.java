// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.app.Dialog;
import android.content.Context;
import android.view.animation.AccelerateInterpolator;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze.view.anim:
//            Flip3dAnimation, DisplayNextView

public class ReportMenuBak extends Dialog
{

    private RelativeLayout firstLayout;
    protected boolean isFirstImage;
    private RelativeLayout secondLayout;

    public ReportMenuBak(Context context)
    {
        super(context, 0x7f06000f);
        isFirstImage = true;
        setContentView(0x7f0300c8);
    }

    private void applyRotation(float f, float f1)
    {
        Flip3dAnimation flip3danimation = new Flip3dAnimation(f, f1, (float)firstLayout.getWidth() / 2.0F, (float)firstLayout.getHeight() / 2.0F);
        flip3danimation.setDuration(500L);
        flip3danimation.setFillAfter(true);
        flip3danimation.setInterpolator(new AccelerateInterpolator());
        flip3danimation.setAnimationListener(new DisplayNextView(isFirstImage, firstLayout, secondLayout));
        if (isFirstImage)
        {
            firstLayout.startAnimation(flip3danimation);
            return;
        } else
        {
            secondLayout.startAnimation(flip3danimation);
            return;
        }
    }

    public void onBackPressed()
    {
        if (!isFirstImage)
        {
            applyRotation(0.0F, -90F);
            boolean flag;
            if (isFirstImage)
            {
                flag = false;
            } else
            {
                flag = true;
            }
            isFirstImage = flag;
            return;
        } else
        {
            super.onBackPressed();
            return;
        }
    }
}
