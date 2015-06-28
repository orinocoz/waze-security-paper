// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import com.waze.ifs.ui.ObservableScrollView;

// Referenced classes of package com.waze.navigate:
//            AddressPreviewActivity, AddressItem, DriveToNativeManager

class startX
    implements android.view.ty._cls8
{

    private long lastDown;
    float startX;
    final AddressPreviewActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (AddressPreviewActivity.access$15(AddressPreviewActivity.this))
        {
            return false;
        }
        int i = motionevent.getAction();
        float f = motionevent.getX();
        if (i == 0)
        {
            startX = f;
            lastDown = System.currentTimeMillis();
            return true;
        }
        if (i == 2)
        {
            float f3 = f - startX;
            float f4 = Math.min(AddressPreviewActivity.access$1(AddressPreviewActivity.this), f3);
            if (f4 > 0.0F)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).clearAnimation();
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).clearAnimation();
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(f4);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(f4);
                int j = (int)(((float)AddressPreviewActivity.access$1(AddressPreviewActivity.this) - f4) * AddressPreviewActivity.access$9(AddressPreviewActivity.this));
                int k = (int)(1000F + (1000F * ((float)AddressPreviewActivity.access$1(AddressPreviewActivity.this) - f4)) / (float)AddressPreviewActivity.access$1(AddressPreviewActivity.this));
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(j + AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), k);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(-f4);
            } else
            {
                startX = f;
            }
            return true;
        }
        if (i == 1)
        {
            float f1 = f - startX;
            long l = System.currentTimeMillis() - lastDown;
            float f2 = Math.min(AddressPreviewActivity.access$1(AddressPreviewActivity.this), f1);
            if (f2 > 30F || l < 180L)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(0.0F);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(0.0F);
                TranslateAnimation translateanimation = new TranslateAnimation(f2, AddressPreviewActivity.access$1(AddressPreviewActivity.this), 0.0F, 0.0F);
                translateanimation.setDuration(200L);
                translateanimation.setInterpolator(new DecelerateInterpolator());
                translateanimation.setFillAfter(false);
                translateanimation.setAnimationListener(AddressPreviewActivity.access$17(AddressPreviewActivity.this));
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).startAnimation(translateanimation);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).startAnimation(translateanimation);
                AddressPreviewActivity.access$18(AddressPreviewActivity.this, true);
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setEnabled(false);
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), 1000);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(-AddressPreviewActivity.access$1(AddressPreviewActivity.this));
            } else
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(0.0F);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(0.0F);
                TranslateAnimation translateanimation1 = new TranslateAnimation(f2, 0.0F, 0.0F, 0.0F);
                translateanimation1.setDuration(200L);
                translateanimation1.setInterpolator(new DecelerateInterpolator());
                translateanimation1.setFillAfter(false);
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).startAnimation(translateanimation1);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).startAnimation(translateanimation1);
                AddressPreviewActivity.access$18(AddressPreviewActivity.this, false);
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue() + (int)((float)AddressPreviewActivity.access$1(AddressPreviewActivity.this) * AddressPreviewActivity.access$9(AddressPreviewActivity.this)), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), 2000);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(0.0F);
            }
            return true;
        }
        if (i == 3)
        {
            AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(0.0F);
            AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(0.0F);
            return true;
        } else
        {
            return false;
        }
    }

    or()
    {
        this$0 = AddressPreviewActivity.this;
        super();
        startX = 0.0F;
    }
}
