// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.animation.Animation;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class this._cls1
    implements Runnable
{

    final  this$1;

    public void run()
    {
        hide();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/view/popups/PoiPopUp$2

/* anonymous class */
    class PoiPopUp._cls2
        implements android.view.animation.Animation.AnimationListener
    {

        final PoiPopUp this$0;

        public void onAnimationEnd(Animation animation)
        {
            post(new PoiPopUp._cls2._cls1());
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = PoiPopUp.this;
                super();
            }
    }

}
