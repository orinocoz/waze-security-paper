// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


// Referenced classes of package com.waze.animation.easing:
//            AnimationEasingManager

class mValue
    implements Runnable
{

    double mValue;
    final AnimationEasingManager this$0;

    public void run()
    {
        mEasingCallback.onStarted(mValue);
    }

    public ck(double d)
    {
        this$0 = AnimationEasingManager.this;
        super();
        mValue = d;
    }
}
