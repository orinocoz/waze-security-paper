// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            az

private static final class  extends Enum
{

    public static final afY afV;
    public static final afY afW;
    public static final afY afX;
    private static final afY afY[];

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/google/android/gms/tagmanager/az$a, s);
    }

    public static [] values()
    {
        return ([])afY.clone();
    }

    static 
    {
        afV = new <init>("NONE", 0);
        afW = new <init>("URL", 1);
        afX = new <init>("BACKSLASH", 2);
        one aone[] = new <init>[3];
        aone[0] = afV;
        aone[1] = afW;
        aone[2] = afX;
        afY = aone;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
