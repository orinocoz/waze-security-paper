// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;


// Referenced classes of package com.facebook.internal:
//            LikeBoxCountView

public static final class  extends Enum
{

    public static final ENUM.VALUES BOTTOM;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES LEFT;
    public static final ENUM.VALUES RIGHT;
    public static final ENUM.VALUES TOP;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/facebook/internal/LikeBoxCountView$LikeBoxCountViewCaretPosition, s);
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
        LEFT = new <init>("LEFT", 0);
        TOP = new <init>("TOP", 1);
        RIGHT = new <init>("RIGHT", 2);
        BOTTOM = new <init>("BOTTOM", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = LEFT;
        avalues[1] = TOP;
        avalues[2] = RIGHT;
        avalues[3] = BOTTOM;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
