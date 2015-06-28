// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;

import android.view.animation.Interpolator;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.waze.animation.easing:
//            AnimationEasingManager, AnimationEasing

public static class mEasing
    implements Interpolator
{

    AnimationEasing mEasing;
    Method mMethod;

    public float getInterpolation(float f)
    {
        double d = 0.0D;
        double d1;
        Method method = mMethod;
        AnimationEasing animationeasing = mEasing;
        Object aobj[] = new Object[4];
        aobj[0] = Float.valueOf(f);
        aobj[1] = Integer.valueOf(0);
        aobj[2] = Integer.valueOf(1);
        aobj[3] = Integer.valueOf(1);
        d1 = ((Double)method.invoke(animationeasing, aobj)).doubleValue();
        d = d1;
_L2:
        return (float)d;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        IllegalArgumentException illegalargumentexception;
        illegalargumentexception;
        illegalargumentexception.printStackTrace();
        continue; /* Loop/switch isn't completed */
        InvocationTargetException invocationtargetexception;
        invocationtargetexception;
        invocationtargetexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    public I(AnimationEasing animationeasing, Method method)
    {
        mMethod = method;
        mEasing = animationeasing;
    }
}
