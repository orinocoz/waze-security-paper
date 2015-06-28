// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.waze.menus:
//            MainMenu

class this._cls0
    implements android.view.animation.nimationListener
{

    final MainMenu this$0;

    public void onAnimationEnd(Animation animation)
    {
        MainMenu.access$4(MainMenu.this).post(new Runnable() {

            final MainMenu._cls6 this$1;

            public void run()
            {
                dismiss();
            }

            
            {
                this$1 = MainMenu._cls6.this;
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
        this$0 = MainMenu.this;
        super();
    }
}
