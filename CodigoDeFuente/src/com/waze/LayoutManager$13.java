// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;

// Referenced classes of package com.waze:
//            LayoutManager

class this._cls0
    implements android.view.animation.onListener
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
        LayoutManager.access$9(LayoutManager.this).findViewById(0x7f0903a4).postDelayed(new Runnable() {

            final LayoutManager._cls13 this$1;

            public void run()
            {
                OpenPopUps();
            }

            
            {
                this$1 = LayoutManager._cls13.this;
                super();
            }
        }, 100L);
    }


    _cls1.this._cls1()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
