// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;

import android.os.Handler;
import android.os.SystemClock;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.waze.animation.easing:
//            AnimationEasingManager

class this._cls0
    implements Runnable
{

    final AnimationEasingManager this$0;

    public void run()
    {
        long l = mBase;
        long l1 = SystemClock.uptimeMillis() - l;
        double d = mValue;
        double d1;
        double d2;
        long l2;
        try
        {
            Method method = mMethod;
            AnimationEasing animationeasing = mEasing;
            Object aobj[] = new Object[4];
            aobj[0] = Long.valueOf(l1);
            aobj[1] = Double.valueOf(mStartValue);
            aobj[2] = Double.valueOf(mEndValue);
            aobj[3] = Integer.valueOf(mDuration);
            d1 = ((Double)method.invoke(animationeasing, aobj)).doubleValue();
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            illegalargumentexception.printStackTrace();
            return;
        }
        catch (IllegalAccessException illegalaccessexception)
        {
            illegalaccessexception.printStackTrace();
            return;
        }
        catch (InvocationTargetException invocationtargetexception)
        {
            invocationtargetexception.printStackTrace();
            return;
        }
        d2 = d1;
        mValue = d2;
        l2 = l + (long)(16 * (1 + (int)(l1 / 16L)));
        if (l1 < (long)mDuration)
        {
            allback allback1 = mEasingCallback;
            if (mInverted)
            {
                d2 = mEndValue - d2;
            }
            allback1.onValueChanged(d2, d);
            AnimationEasingManager.mHandler.postAtTime(this, mToken, l2);
            return;
        }
        allback allback = mEasingCallback;
        double d3;
        if (mInverted)
        {
            d3 = mEndValue;
        } else
        {
            d3 = mStartValue;
        }
        allback.onFinished(d3);
        mRunning = false;
    }

    allback()
    {
        this$0 = AnimationEasingManager.this;
        super();
    }
}
