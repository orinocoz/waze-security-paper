// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


public final class PopupAction extends Enum
{

    private static final PopupAction ENUM$VALUES[];
    public static final PopupAction popup_close;
    public static final PopupAction popup_hidden;
    public static final PopupAction popup_shown;

    private PopupAction(String s, int i)
    {
        super(s, i);
    }

    public static PopupAction valueOf(String s)
    {
        return (PopupAction)Enum.valueOf(com/waze/PopupAction, s);
    }

    public static PopupAction[] values()
    {
        PopupAction apopupaction[] = ENUM$VALUES;
        int i = apopupaction.length;
        PopupAction apopupaction1[] = new PopupAction[i];
        System.arraycopy(apopupaction, 0, apopupaction1, 0, i);
        return apopupaction1;
    }

    static 
    {
        popup_shown = new PopupAction("popup_shown", 0);
        popup_hidden = new PopupAction("popup_hidden", 1);
        popup_close = new PopupAction("popup_close", 2);
        PopupAction apopupaction[] = new PopupAction[3];
        apopupaction[0] = popup_shown;
        apopupaction[1] = popup_hidden;
        apopupaction[2] = popup_close;
        ENUM$VALUES = apopupaction;
    }
}
