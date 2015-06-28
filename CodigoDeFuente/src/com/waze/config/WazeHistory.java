// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.config;

import android.location.Location;
import com.waze.db.WazeFavoritePlaceSQLiteHelper;
import com.waze.widget.WazeAppWidgetLog;
import java.util.HashMap;

// Referenced classes of package com.waze.config:
//            WazeLang

public class WazeHistory
{

    private static final String FAVORITES = "F";
    private static final String HOME = "home";
    private static final String WORK = "work";
    private static HashMap mMap = null;
    private static WazeFavoritePlaceSQLiteHelper mWazeFavoritePalceSQLiteHelper;

    public WazeHistory()
    {
    }

    public static Location getEntry(String s)
    {
        if (mMap != null)
        {
            WazeAppWidgetLog.d((new StringBuilder(" Location getEntry: ")).append(mMap.get(s)).toString());
            return (Location)mMap.get(s);
        } else
        {
            return null;
        }
    }

    public static void load()
    {
        String s;
        try
        {
            mWazeFavoritePalceSQLiteHelper = new WazeFavoritePlaceSQLiteHelper();
            mMap = mWazeFavoritePalceSQLiteHelper.getAllIntoMap();
            return;
        }
        catch (Exception exception)
        {
            if (exception == null)
            {
                s = "";
            } else
            {
                s = exception.getMessage();
            }
        }
        WazeAppWidgetLog.e((new StringBuilder("Failed to load history from DB [")).append(s).append("]").toString());
    }

    public static void removeEntry(String s)
    {
        if (mMap != null)
        {
            removeEntryIfNecessary(s, "Home", "home");
            removeEntryIfNecessary(s, "Work", "work");
        }
    }

    private static void removeEntryIfNecessary(String s, String s1, String s2)
    {
        if (s.equalsIgnoreCase(WazeLang.getLang(s1)) || s.equalsIgnoreCase(WazeLang.getLang(s2)) || s.equalsIgnoreCase(s1) || s.equalsIgnoreCase(s2))
        {
            mMap.remove(WazeLang.getLang(s1));
            mMap.remove(WazeLang.getLang(s2));
            mMap.remove(s1);
            mMap.remove(s2);
        }
    }

    public static void setEntry(String s, Location location)
    {
        if (mMap == null)
        {
            mMap = new HashMap();
        }
        mMap.put(s, location);
    }

}
