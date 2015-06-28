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
    implements android.view.animation.istener
{

    final val.remove this$1;
    private final View val$remove;

    public void onAnimationEnd(Animation animation)
    {
        if (val$remove != null)
        {
            if (val$remove instanceof ProgressAnimation)
            {
                ((ProgressAnimation)val$remove).stop();
            }
            val$remove.setVisibility(8);
        }
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    l.remove()
    {
        this$1 = final_remove1;
        val$remove = View.this;
        super();
    }

    // Unreferenced inner class com/waze/utils/ImageRepository$5

/* anonymous class */
    class ImageRepository._cls5
        implements android.view.animation.Animation.AnimationListener
    {

        private final Animation val$anim_in;
        private final Bitmap val$newImage;
        private final View val$remove;
        private final ImageView val$v;

        public void onAnimationEnd(Animation animation)
        {
            v.setImageBitmap(newImage);
            anim_in.setAnimationListener(remove. new ImageRepository._cls5._cls1());
            v.startAnimation(anim_in);
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }

            
            {
                v = imageview;
                newImage = bitmap;
                anim_in = animation;
                remove = view;
                super();
            }
    }

}
