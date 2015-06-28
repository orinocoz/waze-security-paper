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
    implements android.view.ty._cls9
{

    float startX;
    final AddressPreviewActivity this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        if (!AddressPreviewActivity.access$15(AddressPreviewActivity.this))
        {
            return false;
        }
        int i = motionevent.getAction();
        float f = motionevent.getX();
        if (i == 0)
        {
            startX = f;
            return true;
        }
        if (i == 2)
        {
            float f2 = Math.max(f - startX, -AddressPreviewActivity.access$1(AddressPreviewActivity.this));
            if (f2 < 0.0F)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).clearAnimation();
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).clearAnimation();
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(f2);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(f2);
                int j = (int)(-f2 * AddressPreviewActivity.access$9(AddressPreviewActivity.this));
                int k = (int)(1000F + (1000F * -f2) / (float)AddressPreviewActivity.access$1(AddressPreviewActivity.this));
                AddressPreviewActivity.access$10(AddressPreviewActivity.this).zoomOnMap(j + AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationX().intValue(), AddressPreviewActivity.access$6(AddressPreviewActivity.this).getLocationY().intValue(), k);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(-(f2 + (float)AddressPreviewActivity.access$1(AddressPreviewActivity.this)));
            } else
            {
                startX = f;
            }
            return true;
        }
        if (i == 1)
        {
            float f1 = Math.max(f - startX, -AddressPreviewActivity.access$1(AddressPreviewActivity.this));
            if (f1 < -30F)
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(0.0F);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(0.0F);
                TranslateAnimation translateanimation1 = new TranslateAnimation(f1, -AddressPreviewActivity.access$1(AddressPreviewActivity.this), 0.0F, 0.0F);
                translateanimation1.setDuration(200L);
                translateanimation1.setInterpolator(new DecelerateInterpolator());
                translateanimation1.setFillAfter(false);
                translateanimation1.setAnimationListener(AddressPreviewActivity.access$19(AddressPreviewActivity.this));
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).startAnimation(translateanimation1);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).startAnimation(translateanimation1);
                AddressPreviewActivity.access$18(AddressPreviewActivity.this, false);
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setEnabled(true);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(0.0F);
                TranslateAnimation translateanimation2 = new TranslateAnimation(0.0F, 0.0F, -(f1 + (float)AddressPreviewActivity.access$1(AddressPreviewActivity.this)), 0.0F);
                translateanimation2.setDuration(200L);
                translateanimation2.setInterpolator(new DecelerateInterpolator());
                translateanimation2.setFillAfter(true);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).startAnimation(translateanimation2);
            } else
            {
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(0.0F);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(0.0F);
                TranslateAnimation translateanimation = new TranslateAnimation(f1, 0.0F, 0.0F, 0.0F);
                translateanimation.setDuration(200L);
                translateanimation.setFillAfter(false);
                translateanimation.setInterpolator(new DecelerateInterpolator());
                translateanimation.setAnimationListener(AddressPreviewActivity.access$17(AddressPreviewActivity.this));
                AddressPreviewActivity.access$0(AddressPreviewActivity.this).startAnimation(translateanimation);
                AddressPreviewActivity.access$16(AddressPreviewActivity.this).startAnimation(translateanimation);
                AddressPreviewActivity.access$18(AddressPreviewActivity.this, true);
                AddressPreviewActivity.access$11(AddressPreviewActivity.this).setTranslationY(-AddressPreviewActivity.access$1(AddressPreviewActivity.this));
            }
            return true;
        }
        if (i == 3)
        {
            AddressPreviewActivity.access$0(AddressPreviewActivity.this).clearAnimation();
            AddressPreviewActivity.access$16(AddressPreviewActivity.this).clearAnimation();
            AddressPreviewActivity.access$0(AddressPreviewActivity.this).setTranslationX(AddressPreviewActivity.access$1(AddressPreviewActivity.this));
            AddressPreviewActivity.access$16(AddressPreviewActivity.this).setTranslationX(AddressPreviewActivity.access$1(AddressPreviewActivity.this));
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
