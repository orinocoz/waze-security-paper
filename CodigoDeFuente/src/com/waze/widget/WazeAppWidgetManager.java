// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.content.Context;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetLog, WidgetManager, WazeAppWidgetService

public class WazeAppWidgetManager
{

    private static WazeAppWidgetManager mInstance = null;
    private Context mContext;

    private WazeAppWidgetManager(Context context)
    {
        mContext = null;
        mContext = context;
    }

    public static WazeAppWidgetManager create(Context context)
    {
        if (mInstance == null)
        {
            mInstance = new WazeAppWidgetManager(context);
        }
        return mInstance;
    }

    public static WazeAppWidgetManager getInstance()
    {
        return mInstance;
    }

    public static void refreshHandler(Context context)
    {
        WazeAppWidgetLog.d("refreshHandler");
        WidgetManager.RouteRequest();
    }

    public static void setRequestInProcess(boolean flag)
    {
    }

    public static void shutDownApp()
    {
    }

    public void RequestRefresh()
    {
        WazeAppWidgetService.requestRefresh(mContext);
    }

    public void RouteRequestCallback(int i, String s, String s1, int j)
    {
    }

}
