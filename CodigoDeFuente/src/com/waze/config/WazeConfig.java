// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.config;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import java.io.File;
import java.io.FileReader;
import java.io.InputStream;
import java.util.HashMap;
import java.util.Scanner;

public class WazeConfig
{

    public static final String LOG_TAG = "WAZE_CONFIG";
    private String mFileName;
    private InputStream mFileStream;
    private HashMap mMap;

    WazeConfig(Context context, String s, String s1)
    {
        mFileName = null;
        mFileStream = null;
        mMap = null;
        try
        {
            mFileStream = context.getAssets().open((new StringBuilder(String.valueOf(s))).append(s1).toString());
            mMap = new HashMap();
            return;
        }
        catch (Exception exception)
        {
            Log.e("WAZE_CONFIG", (new StringBuilder("Failed to load config file ")).append(mFileName).toString());
        }
    }

    WazeConfig(String s)
    {
        mFileName = null;
        mFileStream = null;
        mMap = null;
        mFileName = s;
        mMap = new HashMap();
    }

    String getProperty(String s)
    {
        if (mMap == null)
        {
            load();
        }
        if (mMap != null)
        {
            return (String)mMap.get(s);
        } else
        {
            return null;
        }
    }

    String getProperty(String s, String s1)
    {
        String s2 = getProperty(s);
        if (s2 == null)
        {
            return s1;
        } else
        {
            return s2;
        }
    }

    void load()
    {
        File file = new File(mFileName);
        if (!file.exists()) goto _L2; else goto _L1
_L1:
        Scanner scanner = new Scanner(new FileReader(file));
_L3:
        mMap = new HashMap();
_L4:
        if (!scanner.hasNextLine())
        {
            Log.d("WAZE_CONFIG", (new StringBuilder("config file ")).append(mFileName).append(" Loaded").toString());
            return;
        }
        break MISSING_BLOCK_LABEL_102;
_L2:
        String as[];
        try
        {
            scanner = new Scanner(mFileStream);
        }
        catch (Exception exception)
        {
            mMap = null;
            Log.e("WAZE_CONFIG", (new StringBuilder("Failed to load config file ")).append(mFileName).toString());
            return;
        }
          goto _L3
        as = scanner.nextLine().split(": ");
        if (as.length > 1)
        {
            mMap.put(as[0], as[1]);
        }
          goto _L4
    }
}
