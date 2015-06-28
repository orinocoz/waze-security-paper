// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES FIXED_LINE;
    public static final .VALUES FIXED_LINE_OR_MOBILE;
    public static final .VALUES MOBILE;
    public static final .VALUES PAGER;
    public static final .VALUES PERSONAL_NUMBER;
    public static final .VALUES PREMIUM_RATE;
    public static final .VALUES SHARED_COST;
    public static final .VALUES TOLL_FREE;
    public static final .VALUES UAN;
    public static final .VALUES UNKNOWN;
    public static final .VALUES VOICEMAIL;
    public static final .VALUES VOIP;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$PhoneNumberType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        FIXED_LINE = new <init>("FIXED_LINE", 0);
        MOBILE = new <init>("MOBILE", 1);
        FIXED_LINE_OR_MOBILE = new <init>("FIXED_LINE_OR_MOBILE", 2);
        TOLL_FREE = new <init>("TOLL_FREE", 3);
        PREMIUM_RATE = new <init>("PREMIUM_RATE", 4);
        SHARED_COST = new <init>("SHARED_COST", 5);
        VOIP = new <init>("VOIP", 6);
        PERSONAL_NUMBER = new <init>("PERSONAL_NUMBER", 7);
        PAGER = new <init>("PAGER", 8);
        UAN = new <init>("UAN", 9);
        VOICEMAIL = new <init>("VOICEMAIL", 10);
        UNKNOWN = new <init>("UNKNOWN", 11);
        e_3B_.clone aclone[] = new <init>[12];
        aclone[0] = FIXED_LINE;
        aclone[1] = MOBILE;
        aclone[2] = FIXED_LINE_OR_MOBILE;
        aclone[3] = TOLL_FREE;
        aclone[4] = PREMIUM_RATE;
        aclone[5] = SHARED_COST;
        aclone[6] = VOIP;
        aclone[7] = PERSONAL_NUMBER;
        aclone[8] = PAGER;
        aclone[9] = UAN;
        aclone[10] = VOICEMAIL;
        aclone[11] = UNKNOWN;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
