// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;


public class FileUtils
{

    private static final String PATH_SEPARATOR = "/";

    public FileUtils()
    {
    }

    public static String getFilenameOnly(String s)
    {
        return s.substring(1 + s.lastIndexOf("/"));
    }

    public static String getOnlyPath(String s)
    {
        return s.substring(0, s.lastIndexOf("/"));
    }
}
