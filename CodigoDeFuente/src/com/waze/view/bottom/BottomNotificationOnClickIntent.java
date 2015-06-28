// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;


public final class BottomNotificationOnClickIntent extends Enum
{

    private static final BottomNotificationOnClickIntent ENUM$VALUES[];
    public static final BottomNotificationOnClickIntent MY_FRIENDS_ACTIVITY;
    public static final BottomNotificationOnClickIntent MY_WAZE_ACTIVITY;
    public static final BottomNotificationOnClickIntent NONE;
    public static final BottomNotificationOnClickIntent RT_ALERTS_MENU;

    private BottomNotificationOnClickIntent(String s, int i)
    {
        super(s, i);
    }

    public static BottomNotificationOnClickIntent valueOf(String s)
    {
        return (BottomNotificationOnClickIntent)Enum.valueOf(com/waze/view/bottom/BottomNotificationOnClickIntent, s);
    }

    public static BottomNotificationOnClickIntent[] values()
    {
        BottomNotificationOnClickIntent abottomnotificationonclickintent[] = ENUM$VALUES;
        int i = abottomnotificationonclickintent.length;
        BottomNotificationOnClickIntent abottomnotificationonclickintent1[] = new BottomNotificationOnClickIntent[i];
        System.arraycopy(abottomnotificationonclickintent, 0, abottomnotificationonclickintent1, 0, i);
        return abottomnotificationonclickintent1;
    }

    static 
    {
        NONE = new BottomNotificationOnClickIntent("NONE", 0);
        RT_ALERTS_MENU = new BottomNotificationOnClickIntent("RT_ALERTS_MENU", 1);
        MY_FRIENDS_ACTIVITY = new BottomNotificationOnClickIntent("MY_FRIENDS_ACTIVITY", 2);
        MY_WAZE_ACTIVITY = new BottomNotificationOnClickIntent("MY_WAZE_ACTIVITY", 3);
        BottomNotificationOnClickIntent abottomnotificationonclickintent[] = new BottomNotificationOnClickIntent[4];
        abottomnotificationonclickintent[0] = NONE;
        abottomnotificationonclickintent[1] = RT_ALERTS_MENU;
        abottomnotificationonclickintent[2] = MY_FRIENDS_ACTIVITY;
        abottomnotificationonclickintent[3] = MY_WAZE_ACTIVITY;
        ENUM$VALUES = abottomnotificationonclickintent;
    }
}
