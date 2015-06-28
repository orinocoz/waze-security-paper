// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.db.dataObj;


// Referenced classes of package com.waze.db.dataObj:
//            FavoriteDb

public static final class value extends Enum
{

    public static final ENUM.VALUES Default;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES Home;
    public static final ENUM.VALUES Other;
    public static final ENUM.VALUES Work;
    private int value;

    public static value valueOf(String s)
    {
        return (value)Enum.valueOf(com/waze/db/dataObj/FavoriteDb$FavoriteType, s);
    }

    public static value[] values()
    {
        value avalue[] = ENUM$VALUES;
        int i = avalue.length;
        value avalue1[] = new ENUM.VALUES[i];
        System.arraycopy(avalue, 0, avalue1, 0, i);
        return avalue1;
    }

    static 
    {
        Default = new <init>("Default", 0, 0);
        Home = new <init>("Home", 1, 1);
        Work = new <init>("Work", 2, 2);
        Other = new <init>("Other", 3, 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = Default;
        avalues[1] = Home;
        avalues[2] = Work;
        avalues[3] = Other;
        ENUM$VALUES = avalues;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        value = j;
    }
}
