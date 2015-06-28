// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.util.Log;
import java.util.Date;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetPreferences

public class WazeAppWidgetLog
{

    public static final String LOG_TAG = "WAZE WIDGET";

    public WazeAppWidgetLog()
    {
    }

    public static void d(String s)
    {
        if (WazeAppWidgetPreferences.debugEnabled().booleanValue())
        {
            Log.d("WAZE WIDGET", (new StringBuilder("[")).append((new Date()).toLocaleString()).append("] - ").append("[DEBUG] - ").append(s).toString());
        }
    }

    public static void e(String s)
    {
        Log.e("WAZE WIDGET", (new StringBuilder("[")).append((new Date()).toLocaleString()).append("] - ").append("[ERROR] - ").append(s).toString());
    }

    public static void w(String s)
    {
        Log.w("WAZE WIDGET", (new StringBuilder("[")).append((new Date()).toLocaleString()).append("] - ").append("[WARNING] - ").append(s).toString());
    }
}
