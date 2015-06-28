// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.db.dataObj;


public class FavoriteDb
{
    public static final class FavoriteType extends Enum
    {

        public static final FavoriteType Default;
        private static final FavoriteType ENUM$VALUES[];
        public static final FavoriteType Home;
        public static final FavoriteType Other;
        public static final FavoriteType Work;
        private int value;

        public static FavoriteType valueOf(String s)
        {
            return (FavoriteType)Enum.valueOf(com/waze/db/dataObj/FavoriteDb$FavoriteType, s);
        }

        public static FavoriteType[] values()
        {
            FavoriteType afavoritetype[] = ENUM$VALUES;
            int i = afavoritetype.length;
            FavoriteType afavoritetype1[] = new FavoriteType[i];
            System.arraycopy(afavoritetype, 0, afavoritetype1, 0, i);
            return afavoritetype1;
        }

        static 
        {
            Default = new FavoriteType("Default", 0, 0);
            Home = new FavoriteType("Home", 1, 1);
            Work = new FavoriteType("Work", 2, 2);
            Other = new FavoriteType("Other", 3, 3);
            FavoriteType afavoritetype[] = new FavoriteType[4];
            afavoritetype[0] = Default;
            afavoritetype[1] = Home;
            afavoritetype[2] = Work;
            afavoritetype[3] = Other;
            ENUM$VALUES = afavoritetype;
        }

        private FavoriteType(String s, int i, int j)
        {
            super(s, i);
            value = j;
        }
    }


    public FavoriteDb()
    {
    }
}
