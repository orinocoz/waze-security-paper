// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.view.animation.Animation;
import com.waze.ifs.ui.CameraPreview;

// Referenced classes of package com.waze.reports:
//            TakePhotoFragment

class val.flash
    implements android.view.animation.stener
{

    final TakePhotoFragment this$0;
    private final View val$flash;

    public void onAnimationEnd(Animation animation)
    {
        TakePhotoFragment.access$2(TakePhotoFragment.this).reset();
        TakePhotoFragment.access$11(TakePhotoFragment.this);
        TakePhotoFragment.access$12(TakePhotoFragment.this);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
        val$flash.setVisibility(0);
    }

    tionListener()
    {
        this$0 = final_takephotofragment;
        val$flash = View.this;
        super();
    }
}
