// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            bg

public static final class  extends Enum
{

    public static final agg agd;
    public static final agg age;
    public static final agg agf;
    private static final agg agg[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/android/gms/tagmanager/bg$a, s);
    }

    public static [] values()
    {
        return ([])agg.clone();
    }

    static 
    {
        agd = new <init>("NOT_AVAILABLE", 0);
        age = new <init>("IO_ERROR", 1);
        agf = new <init>("SERVER_ERROR", 2);
        one aone[] = new <init>[3];
        aone[0] = agd;
        aone[1] = age;
        aone[2] = agf;
        agg = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
