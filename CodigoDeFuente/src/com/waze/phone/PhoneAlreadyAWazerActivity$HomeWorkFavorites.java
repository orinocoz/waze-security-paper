// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;


// Referenced classes of package com.waze.phone:
//            PhoneAlreadyAWazerActivity

public static final class numVal extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES HOME;
    public static final ENUM.VALUES WORK;
    private int numVal;

    public static numVal valueOf(String s)
    {
        return (numVal)Enum.valueOf(com/waze/phone/PhoneAlreadyAWazerActivity$HomeWorkFavorites, s);
    }

    public static numVal[] values()
    {
        numVal anumval[] = ENUM$VALUES;
        int i = anumval.length;
        numVal anumval1[] = new ENUM.VALUES[i];
        System.arraycopy(anumval, 0, anumval1, 0, i);
        return anumval1;
    }

    public int getNumVal()
    {
        return numVal;
    }

    static 
    {
        HOME = new <init>("HOME", 0, 0);
        WORK = new <init>("WORK", 1, 1);
        numVal anumval[] = new <init>[2];
        anumval[0] = HOME;
        anumval[1] = WORK;
        ENUM$VALUES = anumval;
    }

    private A(String s, int i, int j)
    {
        super(s, i);
        numVal = j;
    }
}
