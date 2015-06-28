// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.db;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.location.Location;
import android.util.Log;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetService;
import java.util.HashMap;

// Referenced classes of package com.waze.db:
//            CustomPathSQLiteOpenHelper

public class WazeFavoritePlaceSQLiteHelper extends CustomPathSQLiteOpenHelper
{

    private static String DATABASE_DIR;
    private static final String DATABASE_NAME = "user.db";
    private static final int DATABASE_VERSION = 1;
    private static final String FAVORITES_TABLE = "FAVORITES";
    private static final String PLACES_TABLE = "PLACES";
    private Context mApplicationContext;

    public WazeFavoritePlaceSQLiteHelper()
    {
        super(WazeAppWidgetService.mApplicationContext.getApplicationInfo().dataDir, "user.db", null, 1);
        mApplicationContext = WazeAppWidgetService.mApplicationContext;
        DATABASE_DIR = mApplicationContext.getApplicationInfo().dataDir;
    }

    public HashMap getAllIntoMap()
    {
        HashMap hashmap = new HashMap();
        SQLiteDatabase sqlitedatabase = getWritableDatabase();
        Cursor cursor = sqlitedatabase.rawQuery("SELECT  type, longitude, latitude FROM FAVORITES join PLACES on FAVORITES.place_id = PLACES.id where (FAVORITES.type = 1 or FAVORITES.type = 2)", null);
        if (cursor.moveToFirst())
        {
            do
            {
                Location location = new Location("History");
                location.setLongitude(cursor.getDouble(1) / 1000000D);
                location.setLatitude(cursor.getDouble(2) / 1000000D);
                hashmap.put(com.waze.db.dataObj.FavoriteDb.FavoriteType.values()[Integer.parseInt(cursor.getString(0))].toString(), location);
                WazeAppWidgetLog.d((new StringBuilder(String.valueOf(com.waze.db.dataObj.FavoriteDb.FavoriteType.values()[Integer.parseInt(cursor.getString(0))].toString()))).append("  ").append(location).toString());
            } while (cursor.moveToNext());
        }
        sqlitedatabase.close();
        Log.d("WAZE", "HashMap<String, Location> getAllIntoMap()");
        WazeAppWidgetLog.d("HashMap<String, Location> getAllIntoMap()");
        return hashmap;
    }

    public void onCreate(SQLiteDatabase sqlitedatabase)
    {
    }

    public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
    }
}
