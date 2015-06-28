// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;


// Referenced classes of package com.waze.share:
//            ShareUtility

public static final class  extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES ShareType_PickUp;
    public static final ENUM.VALUES ShareType_ShareDestination;
    public static final ENUM.VALUES ShareType_ShareDrive;
    public static final ENUM.VALUES ShareType_ShareLocation;
    public static final ENUM.VALUES ShareType_ShareSelection;

    public static  valueOf(String s)
    {
        return ()Enum.valueOf(com/waze/share/ShareUtility$ShareType, s);
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
        ShareType_ShareDrive = new <init>("ShareType_ShareDrive", 0);
        ShareType_PickUp = new <init>("ShareType_PickUp", 1);
        ShareType_ShareLocation = new <init>("ShareType_ShareLocation", 2);
        ShareType_ShareDestination = new <init>("ShareType_ShareDestination", 3);
        ShareType_ShareSelection = new <init>("ShareType_ShareSelection", 4);
        ENUM.VALUES avalues[] = new <init>[5];
        avalues[0] = ShareType_ShareDrive;
        avalues[1] = ShareType_PickUp;
        avalues[2] = ShareType_ShareLocation;
        avalues[3] = ShareType_ShareDestination;
        avalues[4] = ShareType_ShareSelection;
        ENUM$VALUES = avalues;
    }

    private (String s, int i)
    {
        super(s, i);
    }
}
