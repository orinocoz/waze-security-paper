// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.animation.easing;


// Referenced classes of package com.waze.animation.easing:
//            AnimationEasingManager

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES EaseIn;
    public static final ENUM.VALUES EaseInOut;
    public static final ENUM.VALUES EaseNone;
    public static final ENUM.VALUES EaseOut;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/animation/easing/AnimationEasingManager$EaseType, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        EaseIn = new <init>("EaseIn", 0);
        EaseOut = new <init>("EaseOut", 1);
        EaseInOut = new <init>("EaseInOut", 2);
        EaseNone = new <init>("EaseNone", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = EaseIn;
        avalues[1] = EaseOut;
        avalues[2] = EaseInOut;
        avalues[3] = EaseNone;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
