// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.i18n.phonenumbers;


// Referenced classes of package com.google.i18n.phonenumbers:
//            PhoneNumberMatcher

private static final class  extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES DONE;
    public static final .VALUES NOT_READY;
    public static final .VALUES READY;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/i18n/phonenumbers/PhoneNumberMatcher$State, s);
    }

    public static [] values()
    {
        return ([])$VALUES.clone();
    }

    static 
    {
        NOT_READY = new <init>("NOT_READY", 0);
        READY = new <init>("READY", 1);
        DONE = new <init>("DONE", 2);
        e_3B_.clone aclone[] = new <init>[3];
        aclone[0] = NOT_READY;
        aclone[1] = READY;
        aclone[2] = DONE;
        $VALUES = aclone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
