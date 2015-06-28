// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.animation.Animation;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class this._cls0
    implements android.view.animation.nimationListener
{

    final PoiPopUp this$0;

    public void onAnimationEnd(Animation animation)
    {
        post(new Runnable() {

            final PoiPopUp._cls2 this$1;

            public void run()
            {
                hide();
            }

            
            {
                this$1 = PoiPopUp._cls2.this;
                super();
            }
        });
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }


    _cls1.this._cls1()
    {
        this$0 = PoiPopUp.this;
        super();
    }
}
