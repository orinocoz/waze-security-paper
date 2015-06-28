// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            cd

static final class  extends Enum
{

    public static final agB agA;
    private static final agB agB[];
    public static final agB agy;
    public static final agB agz;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/android/gms/tagmanager/cd$a, s);
    }

    public static [] values()
    {
        return ([])agB.clone();
    }

    static 
    {
        agy = new <init>("NONE", 0);
        agz = new <init>("CONTAINER", 1);
        agA = new <init>("CONTAINER_DEBUG", 2);
        one aone[] = new <init>[3];
        aone[0] = agy;
        aone[1] = agz;
        aone[2] = agA;
        agB = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
