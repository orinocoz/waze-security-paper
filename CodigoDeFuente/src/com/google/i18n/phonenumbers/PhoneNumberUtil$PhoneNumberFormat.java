// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES E164;
    public static final .VALUES INTERNATIONAL;
    public static final .VALUES NATIONAL;
    public static final .VALUES RFC3966;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberFormat, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        E164 = new <init>("E164", 0);
        INTERNATIONAL = new <init>("INTERNATIONAL", 1);
        NATIONAL = new <init>("NATIONAL", 2);
        RFC3966 = new <init>("RFC3966", 3);
        t_3B_.clone aclone[] = new <init>[4];
        aclone[0] = E164;
        aclone[1] = INTERNATIONAL;
        aclone[2] = NATIONAL;
        aclone[3] = RFC3966;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
