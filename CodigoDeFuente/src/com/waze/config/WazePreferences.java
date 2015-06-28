// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.config;

import android.content.Context;
import android.os.Environment;

// Referenced classes of package com.waze.config:
//            WazeConfig

public class WazePreferences
{

    private static WazeConfig mConfig = null;
    private static String mDirName = "/data/com.waze/";
    private static String mFileName = "preferences";

    public WazePreferences()
    {
    }

    public static String getProperty(String s)
    {
        if (mConfig == null)
        {
            load();
        }
        return mConfig.getProperty(s);
    }

    public static String getProperty(String s, String s1)
    {
        if (mConfig == null)
        {
            load();
        }
        if (mConfig != null)
        {
            s1 = mConfig.getProperty(s, s1);
        }
        return s1;
    }

    public static void load()
    {
        if (mConfig == null)
        {
            java.io.File file = Environment.getDataDirectory();
            mConfig = new WazeConfig((new StringBuilder()).append(file).append(mDirName).append(mFileName).toString());
            mConfig.load();
        }
    }

    public static void loadFromPackage(Context context)
    {
        if (mConfig == null)
        {
            mConfig = new WazeConfig(context, "SD/", mFileName);
            mConfig.load();
        }
    }

}
