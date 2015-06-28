// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.anim;

import android.view.View;
import android.view.animation.Animation;

// Referenced classes of package com.waze.view.anim:
//            AnimationUtils

class val.next
    implements android.view.animation.onListener
{

    private final Animation val$next;
    private final View val$v;

    public void onAnimationEnd(Animation animation)
    {
        val$v.startAnimation(val$next);
    }

    public void onAnimationRepeat(Animation animation)
    {
    }

    public void onAnimationStart(Animation animation)
    {
    }

    mationListener()
    {
        val$v = view;
        val$next = animation;
        super();
    }
}
