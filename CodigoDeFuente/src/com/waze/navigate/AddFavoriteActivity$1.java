// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Transformation;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteActivity

class val.grid extends Animation
{

    final AddFavoriteActivity this$0;
    private final View val$grid;

    protected void applyTransformation(float f, Transformation transformation)
    {
        super.applyTransformation(f, transformation);
        val$grid.setTranslationX(200F * (float)Math.cos(2.7000000000000002D * (3.1415926535897931D * (double)(f * 2.0F))));
        val$grid.setTranslationY(200F * (float)Math.sin(2.2999999999999998D * (3.1415926535897931D * (double)(f * 2.0F))));
    }

    ()
    {
        this$0 = final_addfavoriteactivity;
        val$grid = View.this;
        super();
    }
}
