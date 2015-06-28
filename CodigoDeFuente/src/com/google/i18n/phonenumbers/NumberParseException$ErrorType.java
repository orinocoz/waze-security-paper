// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            NumberParseException

public static final class A extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES INVALID_COUNTRY_CODE;
    public static final .VALUES NOT_A_NUMBER;
    public static final .VALUES TOO_LONG;
    public static final .VALUES TOO_SHORT_AFTER_IDD;
    public static final .VALUES TOO_SHORT_NSN;

    public static A valueOf(String s)
    {
        return (A)Enum.valueOf(com/google/i18n/phonenumbers/NumberParseException$ErrorType, s);
    }

    public static A[] values()
    {
        return (A[])$VALUES.clone();
    }

    static 
    {
        INVALID_COUNTRY_CODE = new <init>("INVALID_COUNTRY_CODE", 0);
        NOT_A_NUMBER = new <init>("NOT_A_NUMBER", 1);
        TOO_SHORT_AFTER_IDD = new <init>("TOO_SHORT_AFTER_IDD", 2);
        TOO_SHORT_NSN = new <init>("TOO_SHORT_NSN", 3);
        TOO_LONG = new <init>("TOO_LONG", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = INVALID_COUNTRY_CODE;
        aclone[1] = NOT_A_NUMBER;
        aclone[2] = TOO_SHORT_AFTER_IDD;
        aclone[3] = TOO_SHORT_NSN;
        aclone[4] = TOO_LONG;
        $VALUES = aclone;
    }

    private A(String s, int i)
    {
        super(s, i);
    }
}
