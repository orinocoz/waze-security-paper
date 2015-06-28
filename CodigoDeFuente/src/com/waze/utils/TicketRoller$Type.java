// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;


// Referenced classes of package com.waze.utils:
//            TicketRoller

public static final class  extends Enum
{

    public static final ENUM.VALUES ActivityResult;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES Global;
    public static final ENUM.VALUES Handler;
    public static final ENUM.VALUES Last;
    public static final ENUM.VALUES Test;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/utils/TicketRoller$Type, s);
    }

    public static [] values()
    {
         a[] = ENUM$VALUES;
        int i = a.length;
         a1[] = new ENUM.VALUES[i];
        System.arraycopy(a, 0, a1, 0, i);
        return a1;
    }

    static 
    {
        Test = new <init>("Test", 0);
        Global = new <init>("Global", 1);
        Handler = new <init>("Handler", 2);
        ActivityResult = new <init>("ActivityResult", 3);
        Last = new <init>("Last", 4);
        ENUM.VALUES avalues[] = new <init>[5];
        avalues[0] = Test;
        avalues[1] = Global;
        avalues[2] = Handler;
        avalues[3] = ActivityResult;
        avalues[4] = Last;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
