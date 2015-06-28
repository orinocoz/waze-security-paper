// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;


// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

private static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES URL_COUPONS;
    public static final ENUM.VALUES URL_FACEBOOKCONNECT;
    public static final ENUM.VALUES URL_FACEBOOKLIKE;
    public static final ENUM.VALUES URL_FACEBOOKSHARE;
    public static final ENUM.VALUES URL_FORGOTPASSWORD;
    public static final ENUM.VALUES URL_FOURSQUARECONNECT;
    public static final ENUM.VALUES URL_GROUPS;
    public static final ENUM.VALUES URL_SCOREBOARD;
    public static final ENUM.VALUES URL_TWITTERCONNECT;
    public static final ENUM.VALUES URL_TWITTERCONNECTPLUSINITIAL;
    public static final ENUM.VALUES URL_TWITTERFOLLOW;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/mywaze/MyWazeNativeManager$UrlSelector, s);
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
        URL_GROUPS = new <init>("URL_GROUPS", 0);
        URL_SCOREBOARD = new <init>("URL_SCOREBOARD", 1);
        URL_COUPONS = new <init>("URL_COUPONS", 2);
        URL_FACEBOOKCONNECT = new <init>("URL_FACEBOOKCONNECT", 3);
        URL_FOURSQUARECONNECT = new <init>("URL_FOURSQUARECONNECT", 4);
        URL_FORGOTPASSWORD = new <init>("URL_FORGOTPASSWORD", 5);
        URL_FACEBOOKSHARE = new <init>("URL_FACEBOOKSHARE", 6);
        URL_FACEBOOKLIKE = new <init>("URL_FACEBOOKLIKE", 7);
        URL_TWITTERFOLLOW = new <init>("URL_TWITTERFOLLOW", 8);
        URL_TWITTERCONNECT = new <init>("URL_TWITTERCONNECT", 9);
        URL_TWITTERCONNECTPLUSINITIAL = new <init>("URL_TWITTERCONNECTPLUSINITIAL", 10);
        ENUM.VALUES avalues[] = new <init>[11];
        avalues[0] = URL_GROUPS;
        avalues[1] = URL_SCOREBOARD;
        avalues[2] = URL_COUPONS;
        avalues[3] = URL_FACEBOOKCONNECT;
        avalues[4] = URL_FOURSQUARECONNECT;
        avalues[5] = URL_FORGOTPASSWORD;
        avalues[6] = URL_FACEBOOKSHARE;
        avalues[7] = URL_FACEBOOKLIKE;
        avalues[8] = URL_TWITTERFOLLOW;
        avalues[9] = URL_TWITTERCONNECT;
        avalues[10] = URL_TWITTERCONNECTPLUSINITIAL;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
