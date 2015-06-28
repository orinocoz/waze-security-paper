// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.navbar;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.waze.view.navbar:
//            TrafficBarView

class this._cls0
    implements android.view.animation.onListener
{

    final TrafficBarView this$0;

    public void onAnimationEnd(Animation animation)
    {
        TrafficBarView.access$2(TrafficBarView.this, false);
        TrafficBarView.access$1(TrafficBarView.this).setVisibility(8);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    tionListener()
    {
        this$0 = TrafficBarView.this;
        super();
    }
}
