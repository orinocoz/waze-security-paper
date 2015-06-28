// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            ResManager

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES ZIP_ENTRY_DIRECTORY;
    public static final ENUM.VALUES ZIP_ENTRY_FILE;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/ResManager$ZipEntryType, s);
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
        ZIP_ENTRY_FILE = new <init>("ZIP_ENTRY_FILE", 0);
        ZIP_ENTRY_DIRECTORY = new <init>("ZIP_ENTRY_DIRECTORY", 1);
        ENUM.VALUES avalues[] = new <init>[2];
        avalues[0] = ZIP_ENTRY_FILE;
        avalues[1] = ZIP_ENTRY_DIRECTORY;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
