// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            Phonenumber

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FROM_DEFAULT_COUNTRY;
    public static final .VALUES FROM_NUMBER_WITHOUT_PLUS_SIGN;
    public static final .VALUES FROM_NUMBER_WITH_IDD;
    public static final .VALUES FROM_NUMBER_WITH_PLUS_SIGN;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/Phonenumber$PhoneNumber$CountryCodeSource, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FROM_NUMBER_WITH_PLUS_SIGN = new <init>("FROM_NUMBER_WITH_PLUS_SIGN", 0);
        FROM_NUMBER_WITH_IDD = new <init>("FROM_NUMBER_WITH_IDD", 1);
        FROM_NUMBER_WITHOUT_PLUS_SIGN = new <init>("FROM_NUMBER_WITHOUT_PLUS_SIGN", 2);
        FROM_DEFAULT_COUNTRY = new <init>("FROM_DEFAULT_COUNTRY", 3);
        e_3B_.clone aclone[] = new <init>[4];
        aclone[0] = FROM_NUMBER_WITH_PLUS_SIGN;
        aclone[1] = FROM_NUMBER_WITH_IDD;
        aclone[2] = FROM_NUMBER_WITHOUT_PLUS_SIGN;
        aclone[3] = FROM_DEFAULT_COUNTRY;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
