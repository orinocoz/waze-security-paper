// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;
import android.view.animation.Animation;
import android.widget.PopupWindow;

// Referenced classes of package com.waze.ifs.ui:
//            LayoutTooltip

class this._cls0
    implements android.view.animation.ionListener
{

    final LayoutTooltip this$0;

    public void onAnimationEnd(Animation animation)
    {
        mView.post(new Runnable() {

            final LayoutTooltip._cls1 this$1;

            public void run()
            {
                mWindow.dismiss();
            }

            
            {
                this$1 = LayoutTooltip._cls1.this;
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
        this$0 = LayoutTooltip.this;
        super();
    }
}
