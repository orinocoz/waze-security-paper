// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            ShortNumberUtil

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES PREMIUM_RATE;
    public static final .VALUES STANDARD_RATE;
    public static final .VALUES TOLL_FREE;
    public static final .VALUES UNKNOWN_COST;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/ShortNumberUtil$ShortNumberCost, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        TOLL_FREE = new <init>("TOLL_FREE", 0);
        STANDARD_RATE = new <init>("STANDARD_RATE", 1);
        PREMIUM_RATE = new <init>("PREMIUM_RATE", 2);
        UNKNOWN_COST = new <init>("UNKNOWN_COST", 3);
        t_3B_.clone aclone[] = new <init>[4];
        aclone[0] = TOLL_FREE;
        aclone[1] = STANDARD_RATE;
        aclone[2] = PREMIUM_RATE;
        aclone[3] = UNKNOWN_COST;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
