// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;


// Referenced classes of package com.tokenautocomplete:
//            TokenCompleteTextView

public static final class  extends Enum
{

    public static final ENUM.VALUES Clear;
    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES PartialCompletion;
    public static final ENUM.VALUES ToString;
    public static final ENUM.VALUES _Parent;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/tokenautocomplete/TokenCompleteTextView$TokenDeleteStyle, s);
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
        _Parent = new <init>("_Parent", 0);
        Clear = new <init>("Clear", 1);
        PartialCompletion = new <init>("PartialCompletion", 2);
        ToString = new <init>("ToString", 3);
        ENUM.VALUES avalues[] = new <init>[4];
        avalues[0] = _Parent;
        avalues[1] = Clear;
        avalues[2] = PartialCompletion;
        avalues[3] = ToString;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
