// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberUtil

public static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES EXACT_MATCH;
    public static final .VALUES NOT_A_NUMBER;
    public static final .VALUES NO_MATCH;
    public static final .VALUES NSN_MATCH;
    public static final .VALUES SHORT_NSN_MATCH;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberUtil$MatchType, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_A_NUMBER = new <init>("NOT_A_NUMBER", 0);
        NO_MATCH = new <init>("NO_MATCH", 1);
        SHORT_NSN_MATCH = new <init>("SHORT_NSN_MATCH", 2);
        NSN_MATCH = new <init>("NSN_MATCH", 3);
        EXACT_MATCH = new <init>("EXACT_MATCH", 4);
        e_3B_.clone aclone[] = new <init>[5];
        aclone[0] = NOT_A_NUMBER;
        aclone[1] = NO_MATCH;
        aclone[2] = SHORT_NSN_MATCH;
        aclone[3] = NSN_MATCH;
        aclone[4] = EXACT_MATCH;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
