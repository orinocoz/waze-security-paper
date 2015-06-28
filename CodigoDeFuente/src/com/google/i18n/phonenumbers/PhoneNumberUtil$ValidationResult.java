// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INVALID_COUNTRY_CODE;
    public static final .VALUES IS_POSSIBLE;
    public static final .VALUES TOO_LONG;
    public static final .VALUES TOO_SHORT;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$ValidationResult, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        IS_POSSIBLE = new <init>("IS_POSSIBLE", 0);
        INVALID_COUNTRY_CODE = new <init>("INVALID_COUNTRY_CODE", 1);
        TOO_SHORT = new <init>("TOO_SHORT", 2);
        TOO_LONG = new <init>("TOO_LONG", 3);
        t_3B_.clone aclone[] = new <init>[4];
        aclone[0] = IS_POSSIBLE;
        aclone[1] = INVALID_COUNTRY_CODE;
        aclone[2] = TOO_SHORT;
        aclone[3] = TOO_LONG;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
