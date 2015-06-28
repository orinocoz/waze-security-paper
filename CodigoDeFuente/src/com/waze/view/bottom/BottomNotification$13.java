// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import android.view.animation.Animation;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class this._cls0
    implements android.view.animation.tener
{

    final BottomNotification this$0;

    public void onAnimationEnd(Animation animation)
    {
        setVisibility(8);
        BottomNotification.access$6(BottomNotification.this, false);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    istener()
    {
        this$0 = BottomNotification.this;
        super();
    }
}
