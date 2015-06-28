// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.graphics.Bitmap;
import android.view.View;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.utils:
//            ImageRepository

class val.remove
    implements android.view.animation.nListener
{

    private final Animation val$anim_in;
    private final Bitmap val$newImage;
    private final View val$remove;
    private final ImageView val$v;

    public void onAnimationEnd(Animation animation)
    {
        val$v.setImageBitmap(val$newImage);
        val$anim_in.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final ImageRepository._cls5 this$1;
            private final View val$remove;

            public void onAnimationEnd(Animation animation1)
            {
                if (remove != null)
                {
                    if (remove instanceof ProgressAnimation)
                    {
                        ((ProgressAnimation)remove).stop();
                    }
                    remove.setVisibility(8);
                }
            }

            public void onAnimationRepeat(Animation animation1)
            {
            }

            public void onAnimationStart(Animation animation1)
            {
            }

            
            {
                this$1 = ImageRepository._cls5.this;
                remove = view;
                super();
            }
        });
        val$v.startAnimation(val$anim_in);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    _cls1.val.remove()
    {
        val$v = imageview;
        val$newImage = bitmap;
        val$anim_in = animation;
        val$remove = view;
        super();
    }
}
