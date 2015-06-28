// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;


// Referenced classes of package com.waze.ifs.ui:
//            CameraPreview

public static final class  extends Enum
{

    public static final ENUM.VALUES Auto;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES Off;
    public static final ENUM.VALUES On;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/ifs/ui/CameraPreview$FlashMode, s);
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
        Off = new <init>("Off", 0);
        On = new <init>("On", 1);
        Auto = new <init>("Auto", 2);
        ENUM.VALUES avalues[] = new <init>[3];
        avalues[0] = Off;
        avalues[1] = On;
        avalues[2] = Auto;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
