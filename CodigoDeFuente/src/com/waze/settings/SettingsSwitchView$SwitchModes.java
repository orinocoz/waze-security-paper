// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;


// Referenced classes of package com.waze.settings:
//            SettingsSwitchView

private static final class  extends Enum
{

    public static final ENUM.VALUES CHECKED;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES UNCHECKED;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/settings/SettingsSwitchView$SwitchModes, s);
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
        CHECKED = new <init>("CHECKED", 0);
        UNCHECKED = new <init>("UNCHECKED", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = CHECKED;
        avalues[1] = UNCHECKED;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
