// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.widget;


// Referenced classes of package com.facebook.widget:
//            LikeView

public static final class intValue extends Enum
{

    public static final BOTTOM BOTTOM;
    static BOTTOM DEFAULT;
    private static final BOTTOM ENUM$VALUES[];
    public static final BOTTOM INLINE;
    public static final BOTTOM TOP;
    private int intValue;
    private String stringValue;

    static intValue fromInt(int i)
    {
        intValue aintvalue[];
        int j;
        int k;
        aintvalue = values();
        j = aintvalue.length;
        k = 0;
_L6:
        if (k < j) goto _L2; else goto _L1
_L1:
        intValue intvalue = null;
_L4:
        return intvalue;
_L2:
        intvalue = aintvalue[k];
        if (intvalue.getValue() == i) goto _L4; else goto _L3
_L3:
        k++;
        if (true) goto _L6; else goto _L5
_L5:
    }

    private int getValue()
    {
        return intValue;
    }

    public static intValue valueOf(String s)
    {
        return (intValue)Enum.valueOf(com/facebook/widget/LikeView$AuxiliaryViewPosition, s);
    }

    public static intValue[] values()
    {
        intValue aintvalue[] = ENUM$VALUES;
        int i = aintvalue.length;
        intValue aintvalue1[] = new ENUM.VALUES[i];
        System.arraycopy(aintvalue, 0, aintvalue1, 0, i);
        return aintvalue1;
    }

    public String toString()
    {
        return stringValue;
    }

    static 
    {
        BOTTOM = new <init>("BOTTOM", 0, "bottom", 0);
        INLINE = new <init>("INLINE", 1, "inline", 1);
        TOP = new <init>("TOP", 2, "top", 2);
        stringValue astringvalue[] = new <init>[3];
        astringvalue[0] = BOTTOM;
        astringvalue[1] = INLINE;
        astringvalue[2] = TOP;
        ENUM$VALUES = astringvalue;
        DEFAULT = BOTTOM;
    }


    private (String s, int i, String s1, int j)
    {
        super(s, i);
        stringValue = s1;
        intValue = j;
    }
}
