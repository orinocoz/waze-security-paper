// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;
import android.view.animation.Animation;
import android.widget.PopupWindow;

// Referenced classes of package com.waze.ifs.ui:
//            LayoutTooltip

class this._cls1
    implements Runnable
{

    final  this$1;

    public void run()
    {
        mWindow.dismiss();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/ifs/ui/LayoutTooltip$1

/* anonymous class */
    class LayoutTooltip._cls1
        implements android.view.animation.Animation.AnimationListener
    {

        final LayoutTooltip this$0;

        public void onAnimationEnd(Animation animation)
        {
            mView.post(new LayoutTooltip._cls1._cls1());
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = LayoutTooltip.this;
                super();
            }
    }

}
