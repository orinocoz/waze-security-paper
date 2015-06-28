// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.config;

import android.os.Environment;
import com.waze.widget.WazeAppWidgetLog;
import java.io.File;
import java.io.FileReader;
import java.util.HashMap;
import java.util.Scanner;

public class WazeLang
{

    private static String mDirName = "/waze/";
    private static String mFileName = "lang.";
    private static HashMap mMap = null;

    public WazeLang()
    {
    }

    public static String getLang(String s)
    {
        String s1;
label0:
        {
            if (mMap != null)
            {
                s1 = (String)mMap.get(s);
                if (s1 != null)
                {
                    break label0;
                }
            }
            return s;
        }
        return s1;
    }

    public static void load(String s)
    {
        if (mMap == null) goto _L2; else goto _L1
_L1:
        return;
_L2:
        Scanner scanner;
        File file = Environment.getExternalStorageDirectory();
        WazeAppWidgetLog.d((new StringBuilder("Loading lang file")).append(file).append(",").append(mDirName).append(",").append(mFileName).append(s).toString());
        scanner = new Scanner(new FileReader(new File(file, (new StringBuilder(String.valueOf(mDirName))).append(mFileName).append(s).toString())));
        mMap = new HashMap();
_L4:
        if (!scanner.hasNextLine()) goto _L1; else goto _L3
_L3:
        String s2 = scanner.nextLine();
        String as[] = s2.split("=");
        mMap.put(as[0], as[1]);
          goto _L4
        Exception exception1;
        exception1;
        if (exception1 != null) goto _L6; else goto _L5
_L5:
        String s4 = "";
_L7:
        try
        {
            WazeAppWidgetLog.e((new StringBuilder("Failed to load lang file [")).append(s).append("], line: ").append(s2).append(" Exception: ").append(s4).toString());
        }
        catch (Exception exception)
        {
            String s1;
            String s3;
            if (exception == null)
            {
                s1 = "";
            } else
            {
                s1 = exception.getMessage();
            }
            WazeAppWidgetLog.e((new StringBuilder("Failed to load lang file [")).append(s1).append("]").toString());
            return;
        }
          goto _L4
_L6:
        s3 = exception1.getMessage();
        s4 = s3;
          goto _L7
    }

}
