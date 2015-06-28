// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls1
    implements Runnable
{

    final iss this$1;

    public void run()
    {
        dismiss();
    }

    is._cls0()
    {
        this$1 = this._cls1.this;
        super();
    }

    // Unreferenced inner class com/waze/menus/MainMenu$6

/* anonymous class */
    class MainMenu._cls6
        implements android.view.animation.Animation.AnimationListener
    {

        final MainMenu this$0;

        public void onAnimationEnd(Animation animation)
        {
            MainMenu.access$4(MainMenu.this).post(new MainMenu._cls6._cls1());
        }

        public void onAnimationRepeat(Animation animation)
        {
        }

        public void onAnimationStart(Animation animation)
        {
        }


            
            {
                this$0 = MainMenu.this;
                super();
            }
    }

}
