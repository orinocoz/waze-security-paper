// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


public final class ResourceDownloadType extends Enum
{

    private static final ResourceDownloadType ENUM$VALUES[];
    public static final ResourceDownloadType RES_DOWNLOAD_AD_IMAGE;
    public static final ResourceDownloadType RES_DOWNLOAD_CONFIFG;
    public static final ResourceDownloadType RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES;
    public static final ResourceDownloadType RES_DOWNLOAD_IMAGE;
    public static final ResourceDownloadType RES_DOWNLOAD_IMAGE_JAVA;
    public static final ResourceDownloadType RES_DOWNLOAD_LANG;
    public static final ResourceDownloadType RES_DOWNLOAD_LANG_ASR;
    public static final ResourceDownloadType RES_DOWNLOAD_LANG_TTS;
    public static final ResourceDownloadType RES_DOWNLOAD_SEARCH_CONF;
    public static final ResourceDownloadType RES_DOWNLOAD_SHIELD;
    public static final ResourceDownloadType RES_DOWNLOAD_SOUND;
    public static final ResourceDownloadType RES_DOWNLOAD_SPLASH;
    private int value;

    private ResourceDownloadType(String s, int i, int j)
    {
        super(s, i);
        value = j;
    }

    public static ResourceDownloadType valueOf(String s)
    {
        return (ResourceDownloadType)Enum.valueOf(com/waze/ResourceDownloadType, s);
    }

    public static ResourceDownloadType[] values()
    {
        ResourceDownloadType aresourcedownloadtype[] = ENUM$VALUES;
        int i = aresourcedownloadtype.length;
        ResourceDownloadType aresourcedownloadtype1[] = new ResourceDownloadType[i];
        System.arraycopy(aresourcedownloadtype, 0, aresourcedownloadtype1, 0, i);
        return aresourcedownloadtype1;
    }

    public int getValue()
    {
        return value;
    }

    static 
    {
        RES_DOWNLOAD_IMAGE = new ResourceDownloadType("RES_DOWNLOAD_IMAGE", 0, 0);
        RES_DOWNLOAD_SOUND = new ResourceDownloadType("RES_DOWNLOAD_SOUND", 1, 1);
        RES_DOWNLOAD_CONFIFG = new ResourceDownloadType("RES_DOWNLOAD_CONFIFG", 2, 2);
        RES_DOWNLOAD_LANG = new ResourceDownloadType("RES_DOWNLOAD_LANG", 3, 3);
        RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES = new ResourceDownloadType("RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES", 4, 4);
        RES_DOWNLOAD_SEARCH_CONF = new ResourceDownloadType("RES_DOWNLOAD_SEARCH_CONF", 5, 5);
        RES_DOWNLOAD_SPLASH = new ResourceDownloadType("RES_DOWNLOAD_SPLASH", 6, 6);
        RES_DOWNLOAD_LANG_TTS = new ResourceDownloadType("RES_DOWNLOAD_LANG_TTS", 7, 7);
        RES_DOWNLOAD_AD_IMAGE = new ResourceDownloadType("RES_DOWNLOAD_AD_IMAGE", 8, 8);
        RES_DOWNLOAD_SHIELD = new ResourceDownloadType("RES_DOWNLOAD_SHIELD", 9, 9);
        RES_DOWNLOAD_LANG_ASR = new ResourceDownloadType("RES_DOWNLOAD_LANG_ASR", 10, 10);
        RES_DOWNLOAD_IMAGE_JAVA = new ResourceDownloadType("RES_DOWNLOAD_IMAGE_JAVA", 11, 11);
        ResourceDownloadType aresourcedownloadtype[] = new ResourceDownloadType[12];
        aresourcedownloadtype[0] = RES_DOWNLOAD_IMAGE;
        aresourcedownloadtype[1] = RES_DOWNLOAD_SOUND;
        aresourcedownloadtype[2] = RES_DOWNLOAD_CONFIFG;
        aresourcedownloadtype[3] = RES_DOWNLOAD_LANG;
        aresourcedownloadtype[4] = RES_DOWNLOAD_COUNTRY_SPECIFIC_IMAGES;
        aresourcedownloadtype[5] = RES_DOWNLOAD_SEARCH_CONF;
        aresourcedownloadtype[6] = RES_DOWNLOAD_SPLASH;
        aresourcedownloadtype[7] = RES_DOWNLOAD_LANG_TTS;
        aresourcedownloadtype[8] = RES_DOWNLOAD_AD_IMAGE;
        aresourcedownloadtype[9] = RES_DOWNLOAD_SHIELD;
        aresourcedownloadtype[10] = RES_DOWNLOAD_LANG_ASR;
        aresourcedownloadtype[11] = RES_DOWNLOAD_IMAGE_JAVA;
        ENUM$VALUES = aresourcedownloadtype;
    }
}
