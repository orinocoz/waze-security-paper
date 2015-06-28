// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;

import android.os.Handler;
import android.os.SystemClock;
import android.view.animation.Interpolator;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

// Referenced classes of package com.waze.animation.easing:
//            AnimationEasing, Elastic

public final class AnimationEasingManager
{
    public static final class EaseType extends Enum
    {

        private static final EaseType ENUM$VALUES[];
        public static final EaseType EaseIn;
        public static final EaseType EaseInOut;
        public static final EaseType EaseNone;
        public static final EaseType EaseOut;

        public static EaseType valueOf(String s)
        {
            return (EaseType)Enum.valueOf(com/waze/animation/easing/AnimationEasingManager$EaseType, s);
        }

        public static EaseType[] values()
        {
            EaseType aeasetype[] = ENUM$VALUES;
            int i = aeasetype.length;
            EaseType aeasetype1[] = new EaseType[i];
            System.arraycopy(aeasetype, 0, aeasetype1, 0, i);
            return aeasetype1;
        }

        static 
        {
            EaseIn = new EaseType("EaseIn", 0);
            EaseOut = new EaseType("EaseOut", 1);
            EaseInOut = new EaseType("EaseInOut", 2);
            EaseNone = new EaseType("EaseNone", 3);
            EaseType aeasetype[] = new EaseType[4];
            aeasetype[0] = EaseIn;
            aeasetype[1] = EaseOut;
            aeasetype[2] = EaseInOut;
            aeasetype[3] = EaseNone;
            ENUM$VALUES = aeasetype;
        }

        private EaseType(String s, int i)
        {
            super(s, i);
        }
    }

    public static interface EasingCallback
    {

        public abstract void onFinished(double d);

        public abstract void onStarted(double d);

        public abstract void onValueChanged(double d, double d1);
    }

    public static class EasingInterpolator
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

        public EasingInterpolator(AnimationEasing animationeasing, Method method)
        {
            mMethod = method;
            mEasing = animationeasing;
        }
    }

    class Ticker
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
                EasingCallback easingcallback1 = mEasingCallback;
                if (mInverted)
                {
                    d2 = mEndValue - d2;
                }
                easingcallback1.onValueChanged(d2, d);
                AnimationEasingManager.mHandler.postAtTime(this, mToken, l2);
                return;
            }
            EasingCallback easingcallback = mEasingCallback;
            double d3;
            if (mInverted)
            {
                d3 = mEndValue;
            } else
            {
                d3 = mStartValue;
            }
            easingcallback.onFinished(d3);
            mRunning = false;
        }

        Ticker()
        {
            this$0 = AnimationEasingManager.this;
            super();
        }
    }

    class TickerStart
        implements Runnable
    {

        double mValue;
        final AnimationEasingManager this$0;

        public void run()
        {
            mEasingCallback.onStarted(mValue);
        }

        public TickerStart(double d)
        {
            this$0 = AnimationEasingManager.this;
            super();
            mValue = d;
        }
    }


    private static int $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType[];
    static final int FPS = 60;
    static final int FRAME_TIME = 16;
    static final Handler mHandler = new Handler();
    long mBase;
    int mDuration;
    AnimationEasing mEasing;
    EasingCallback mEasingCallback;
    double mEndValue;
    boolean mInverted;
    Method mMethod;
    boolean mRunning;
    double mStartValue;
    Ticker mTicker;
    String mToken;
    double mValue;

    static int[] $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType()
    {
        int ai[] = $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[EaseType.values().length];
        try
        {
            ai1[EaseType.EaseIn.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[EaseType.EaseInOut.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[EaseType.EaseNone.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[EaseType.EaseOut.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType = ai1;
        return ai1;
    }

    public AnimationEasingManager(EasingCallback easingcallback)
    {
        mEasingCallback = easingcallback;
        mToken = String.valueOf(System.currentTimeMillis());
    }

    static AnimationEasing createInstance(Class class1)
    {
        AnimationEasing animationeasing = (AnimationEasing)class1.newInstance();
        return animationeasing;
        IllegalAccessException illegalaccessexception;
        illegalaccessexception;
        illegalaccessexception.printStackTrace();
_L2:
        return null;
        InstantiationException instantiationexception;
        instantiationexception;
        instantiationexception.printStackTrace();
        if (true) goto _L2; else goto _L1
_L1:
    }

    static Method getEasingMethod(AnimationEasing animationeasing, EaseType easetype)
    {
        String s = getMethodName(easetype);
        Method method = null;
        if (s != null)
        {
            Method method1;
            try
            {
                Class class1 = animationeasing.getClass();
                Class aclass[] = new Class[4];
                aclass[0] = Double.TYPE;
                aclass[1] = Double.TYPE;
                aclass[2] = Double.TYPE;
                aclass[3] = Double.TYPE;
                method1 = class1.getMethod(s, aclass);
            }
            catch (SecurityException securityexception)
            {
                securityexception.printStackTrace();
                return null;
            }
            catch (NoSuchMethodException nosuchmethodexception)
            {
                nosuchmethodexception.printStackTrace();
                return null;
            }
            method = method1;
        }
        return method;
    }

    public static Interpolator getElasticInterpolator(EaseType easetype, double d, double d1)
    {
        Elastic elastic = new Elastic(d, d1);
        Method method = getEasingMethod(elastic, easetype);
        if (method == null)
        {
            return null;
        } else
        {
            return new EasingInterpolator(elastic, method);
        }
    }

    public static Interpolator getInterpolator(Class class1, EaseType easetype)
    {
        AnimationEasing animationeasing = createInstance(class1);
        Method method;
        if (animationeasing != null)
        {
            if ((method = getEasingMethod(animationeasing, easetype)) != null)
            {
                return new EasingInterpolator(animationeasing, method);
            }
        }
        return null;
    }

    static String getMethodName(EaseType easetype)
    {
        switch ($SWITCH_TABLE$com$waze$animation$easing$AnimationEasingManager$EaseType()[easetype.ordinal()])
        {
        default:
            return null;

        case 1: // '\001'
            return "easeIn";

        case 3: // '\003'
            return "easeInOut";

        case 4: // '\004'
            return "easeNone";

        case 2: // '\002'
            return "easeOut";
        }
    }

    public void start(Class class1, EaseType easetype, double d, double d1, int i)
    {
        start(class1, easetype, d, d1, i, 0L);
    }

    public void start(Class class1, EaseType easetype, double d, double d1, int i, 
            long l)
    {
        if (!mRunning)
        {
            mEasing = createInstance(class1);
            if (mEasing != null)
            {
                mMethod = getEasingMethod(mEasing, easetype);
                if (mMethod != null)
                {
                    boolean flag;
                    long l1;
                    if (d > d1)
                    {
                        flag = true;
                    } else
                    {
                        flag = false;
                    }
                    mInverted = flag;
                    if (mInverted)
                    {
                        mStartValue = d1;
                        mEndValue = d;
                    } else
                    {
                        mStartValue = d;
                        mEndValue = d1;
                    }
                    mValue = mStartValue;
                    mDuration = i;
                    mBase = l + SystemClock.uptimeMillis();
                    mRunning = true;
                    mTicker = new Ticker();
                    l1 = l + (16L + SystemClock.uptimeMillis());
                    if (l == 0L)
                    {
                        mEasingCallback.onStarted(d);
                    } else
                    {
                        mHandler.postAtTime(new TickerStart(d), mToken, l1 - 16L);
                    }
                    mHandler.postAtTime(mTicker, mToken, l1);
                    return;
                }
            }
        }
    }

    public void stop()
    {
        mRunning = false;
        mHandler.removeCallbacks(mTicker, mToken);
    }

}
