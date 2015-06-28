// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze:
//            LayoutManager

class this._cls1
    implements Runnable
{

    final opUps this$1;

    public void run()
    {
        OpenPopUps();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/LayoutManager$13

/* anonymous class */
    class LayoutManager._cls13
        implements android.view.animation.Animation.AnimationListener
    {

        final LayoutManager this$0;

        public void onAnimationEnd(Animation animation)
        {
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
            LayoutManager.access$9(LayoutManager.this).findViewById(0x7f0903a4).postDelayed(new LayoutManager._cls13._cls1(), 100L);
        }


            
            {
                this$0 = LayoutManager.this;
                super();
            }
    }

}
