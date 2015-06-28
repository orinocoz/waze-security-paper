// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;


// Referenced classes of package com.waze.utils:
//            ImageUtils

public static final class scale extends Enum
{

    private static final ENUM.VALUES ENUM$VALUES[];
    public static final ENUM.VALUES HDPI;
    public static final ENUM.VALUES LDPI;
    public static final ENUM.VALUES MDPI;
    public static final ENUM.VALUES XHDPI;
    public static final ENUM.VALUES XXHDPI;
    public static final ENUM.VALUES XXXHDPI;
    private final String localDir;
    private final float scale;
    private final String serverDir;

    public static scale getEnumByScale(float f)
    {
        if (f < MDPI.getScale())
        {
            return LDPI;
        }
        if (f < HDPI.getScale())
        {
            return MDPI;
        }
        if (f < XHDPI.getScale())
        {
            return HDPI;
        }
        if (f < XXHDPI.getScale())
        {
            return XHDPI;
        }
        if (f < XXXHDPI.getScale())
        {
            return XXHDPI;
        } else
        {
            return XXXHDPI;
        }
    }

    public static XXXHDPI valueOf(String s)
    {
        return (XXXHDPI)Enum.valueOf(com/waze/utils/ImageUtils$DensityProps, s);
    }

    public static XXXHDPI[] values()
    {
        XXXHDPI axxxhdpi[] = ENUM$VALUES;
        int i = axxxhdpi.length;
        XXXHDPI axxxhdpi1[] = new ENUM.VALUES[i];
        System.arraycopy(axxxhdpi, 0, axxxhdpi1, 0, i);
        return axxxhdpi1;
    }

    public String getLocalDrawableSuffix()
    {
        return localDir;
    }

    public float getScale()
    {
        return scale;
    }

    public String getServerDir()
    {
        return serverDir;
    }

    static 
    {
        LDPI = new <init>("LDPI", 0, "ldpi", ".", 0.75F);
        MDPI = new <init>("MDPI", 1, "mdpi", ".", 1.0F);
        HDPI = new <init>("HDPI", 2, "hdpi", "HD", 1.5F);
        XHDPI = new <init>("XHDPI", 3, "xhdpi", "2x", 2.0F);
        XXHDPI = new <init>("XXHDPI", 4, "xxhdpi", "2x", 3F);
        XXXHDPI = new <init>("XXXHDPI", 5, "xxhdpi", "2x", 4F);
        serverDir aserverdir[] = new <init>[6];
        aserverdir[0] = LDPI;
        aserverdir[1] = MDPI;
        aserverdir[2] = HDPI;
        aserverdir[3] = XHDPI;
        aserverdir[4] = XXHDPI;
        aserverdir[5] = XXXHDPI;
        ENUM$VALUES = aserverdir;
    }

    private (String s, int i, String s1, String s2, float f)
    {
        super(s, i);
        localDir = s1;
        serverDir = s2;
        scale = f;
    }
}
