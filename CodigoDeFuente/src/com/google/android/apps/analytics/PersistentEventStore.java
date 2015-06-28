// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.database.sqlite.SQLiteOpenHelper;
import android.database.sqlite.SQLiteStatement;
import android.util.Log;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.apps.analytics:
//            EventStore, CustomVariableBuffer, CustomVariable, Event, 
//            Item, Transaction

class PersistentEventStore
    implements EventStore
{
    static class DataBaseHelper extends SQLiteOpenHelper
    {

        private final int databaseVersion;

        private void createECommerceTables(SQLiteDatabase sqlitedatabase)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS transaction_events;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_TRANSACTION_EVENTS_TABLE);
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS item_events;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_ITEM_EVENTS_TABLE);
        }

        void createCustomVariableTables(SQLiteDatabase sqlitedatabase)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS custom_variables;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_CUSTOM_VARIABLES_TABLE);
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS custom_var_cache;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_CUSTOM_VAR_CACHE_TABLE);
            for (int i = 1; i <= 5; i++)
            {
                ContentValues contentvalues = new ContentValues();
                contentvalues.put("event_id", Integer.valueOf(0));
                contentvalues.put("cv_index", Integer.valueOf(i));
                contentvalues.put("cv_name", "");
                contentvalues.put("cv_scope", Integer.valueOf(3));
                contentvalues.put("cv_value", "");
                sqlitedatabase.insert("custom_var_cache", "event_id", contentvalues);
            }

        }

        public void onCreate(SQLiteDatabase sqlitedatabase)
        {
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS events;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_EVENTS_TABLE);
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS session;");
            sqlitedatabase.execSQL(PersistentEventStore.CREATE_SESSION_TABLE);
            sqlitedatabase.execSQL("DROP TABLE IF EXISTS install_referrer;");
            sqlitedatabase.execSQL("CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);");
            if (databaseVersion > 1)
            {
                createCustomVariableTables(sqlitedatabase);
            }
            if (databaseVersion > 2)
            {
                createECommerceTables(sqlitedatabase);
            }
        }

        public void onDowngrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            Log.w("GoogleAnalyticsTracker", (new StringBuilder()).append("Downgrading database version from ").append(i).append(" to ").append(j).append(" not recommended.").toString());
        }

        public void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j)
        {
            if (i < 2 && j > 1)
            {
                createCustomVariableTables(sqlitedatabase);
            }
            if (i < 3 && j > 2)
            {
                createECommerceTables(sqlitedatabase);
            }
        }

        public DataBaseHelper(Context context)
        {
            this(context, "google_analytics.db", 3);
        }

        public DataBaseHelper(Context context, String s)
        {
            this(context, s, 3);
        }

        DataBaseHelper(Context context, String s, int i)
        {
            super(context, s, null, i);
            databaseVersion = i;
        }
    }


    private static final String ACCOUNT_ID = "account_id";
    private static final String ACTION = "action";
    private static final String CATEGORY = "category";
    private static final String CREATE_CUSTOM_VARIABLES_TABLE = (new StringBuilder()).append("CREATE TABLE custom_variables (").append(String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[] {
        "cv_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "event_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "cv_index"
    })).append(String.format(" '%s' CHAR(64) NOT NULL,", new Object[] {
        "cv_name"
    })).append(String.format(" '%s' CHAR(64) NOT NULL,", new Object[] {
        "cv_value"
    })).append(String.format(" '%s' INTEGER NOT NULL);", new Object[] {
        "cv_scope"
    })).toString();
    private static final String CREATE_CUSTOM_VAR_CACHE_TABLE = (new StringBuilder()).append("CREATE TABLE custom_var_cache (").append(String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[] {
        "cv_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "event_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "cv_index"
    })).append(String.format(" '%s' CHAR(64) NOT NULL,", new Object[] {
        "cv_name"
    })).append(String.format(" '%s' CHAR(64) NOT NULL,", new Object[] {
        "cv_value"
    })).append(String.format(" '%s' INTEGER NOT NULL);", new Object[] {
        "cv_scope"
    })).toString();
    private static final String CREATE_EVENTS_TABLE = (new StringBuilder()).append("CREATE TABLE events (").append(String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[] {
        "event_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "user_id"
    })).append(String.format(" '%s' CHAR(256) NOT NULL,", new Object[] {
        "account_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "random_val"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "timestamp_first"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "timestamp_previous"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "timestamp_current"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "visits"
    })).append(String.format(" '%s' CHAR(256) NOT NULL,", new Object[] {
        "category"
    })).append(String.format(" '%s' CHAR(256) NOT NULL,", new Object[] {
        "action"
    })).append(String.format(" '%s' CHAR(256), ", new Object[] {
        "label"
    })).append(String.format(" '%s' INTEGER,", new Object[] {
        "value"
    })).append(String.format(" '%s' INTEGER,", new Object[] {
        "screen_width"
    })).append(String.format(" '%s' INTEGER);", new Object[] {
        "screen_height"
    })).toString();
    private static final String CREATE_INSTALL_REFERRER_TABLE = "CREATE TABLE install_referrer (referrer TEXT PRIMARY KEY NOT NULL);";
    private static final String CREATE_ITEM_EVENTS_TABLE = (new StringBuilder()).append("CREATE TABLE item_events (").append(String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[] {
        "item_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "event_id"
    })).append(String.format(" '%s' TEXT NOT NULL,", new Object[] {
        "order_id"
    })).append(String.format(" '%s' TEXT NOT NULL,", new Object[] {
        "item_sku"
    })).append(String.format(" '%s' TEXT,", new Object[] {
        "item_name"
    })).append(String.format(" '%s' TEXT,", new Object[] {
        "item_category"
    })).append(String.format(" '%s' TEXT NOT NULL,", new Object[] {
        "item_price"
    })).append(String.format(" '%s' TEXT NOT NULL);", new Object[] {
        "item_count"
    })).toString();
    private static final String CREATE_SESSION_TABLE = (new StringBuilder()).append("CREATE TABLE session (").append(String.format(" '%s' INTEGER PRIMARY KEY,", new Object[] {
        "timestamp_first"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "timestamp_previous"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "timestamp_current"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "visits"
    })).append(String.format(" '%s' INTEGER NOT NULL);", new Object[] {
        "store_id"
    })).toString();
    private static final String CREATE_TRANSACTION_EVENTS_TABLE = (new StringBuilder()).append("CREATE TABLE transaction_events (").append(String.format(" '%s' INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,", new Object[] {
        "tran_id"
    })).append(String.format(" '%s' INTEGER NOT NULL,", new Object[] {
        "event_id"
    })).append(String.format(" '%s' TEXT NOT NULL,", new Object[] {
        "order_id"
    })).append(String.format(" '%s' TEXT,", new Object[] {
        "tran_storename"
    })).append(String.format(" '%s' TEXT NOT NULL,", new Object[] {
        "tran_totalcost"
    })).append(String.format(" '%s' TEXT,", new Object[] {
        "tran_totaltax"
    })).append(String.format(" '%s' TEXT);", new Object[] {
        "tran_shippingcost"
    })).toString();
    private static final String CUSTOMVAR_ID = "cv_id";
    private static final String CUSTOMVAR_INDEX = "cv_index";
    private static final String CUSTOMVAR_NAME = "cv_name";
    private static final String CUSTOMVAR_SCOPE = "cv_scope";
    private static final String CUSTOMVAR_VALUE = "cv_value";
    private static final String CUSTOM_VARIABLE_COLUMN_TYPE = "CHAR(64) NOT NULL";
    private static final String DATABASE_NAME = "google_analytics.db";
    private static final int DATABASE_VERSION = 3;
    private static final String EVENT_ID = "event_id";
    private static final String ITEM_CATEGORY = "item_category";
    private static final String ITEM_COUNT = "item_count";
    private static final String ITEM_ID = "item_id";
    private static final String ITEM_NAME = "item_name";
    private static final String ITEM_PRICE = "item_price";
    private static final String ITEM_SKU = "item_sku";
    private static final String LABEL = "label";
    private static final int MAX_EVENTS = 1000;
    private static final String ORDER_ID = "order_id";
    private static final String RANDOM_VAL = "random_val";
    private static final String REFERRER = "referrer";
    private static final String SCREEN_HEIGHT = "screen_height";
    private static final String SCREEN_WIDTH = "screen_width";
    private static final String SHIPPING_COST = "tran_shippingcost";
    private static final String STORE_ID = "store_id";
    private static final String STORE_NAME = "tran_storename";
    private static final String TIMESTAMP_CURRENT = "timestamp_current";
    private static final String TIMESTAMP_FIRST = "timestamp_first";
    private static final String TIMESTAMP_PREVIOUS = "timestamp_previous";
    private static final String TOTAL_COST = "tran_totalcost";
    private static final String TOTAL_TAX = "tran_totaltax";
    private static final String TRANSACTION_ID = "tran_id";
    private static final String USER_ID = "user_id";
    private static final String VALUE = "value";
    private static final String VISITS = "visits";
    private SQLiteStatement compiledCountStatement;
    private DataBaseHelper databaseHelper;
    private int numStoredEvents;
    private boolean sessionUpdated;
    private int storeId;
    private long timestampCurrent;
    private long timestampFirst;
    private long timestampPrevious;
    private boolean useStoredVisitorVars;
    private int visits;

    PersistentEventStore(DataBaseHelper databasehelper)
    {
        compiledCountStatement = null;
        databaseHelper = databasehelper;
        try
        {
            databasehelper.getWritableDatabase().close();
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }

    public void deleteEvent(long l)
    {
        String s = (new StringBuilder()).append("event_id=").append(l).toString();
        try
        {
            SQLiteDatabase sqlitedatabase = databaseHelper.getWritableDatabase();
            if (sqlitedatabase.delete("events", s, null) != 0)
            {
                numStoredEvents = -1 + numStoredEvents;
                sqlitedatabase.delete("custom_variables", s, null);
                sqlitedatabase.delete("transaction_events", s, null);
                sqlitedatabase.delete("item_events", s, null);
            }
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }

    CustomVariableBuffer getCustomVariables(long l)
    {
        CustomVariableBuffer customvariablebuffer = new CustomVariableBuffer();
        Cursor cursor1 = databaseHelper.getReadableDatabase().query("custom_variables", null, (new StringBuilder()).append("event_id=").append(l).toString(), null, null, null, null);
        Cursor cursor = cursor1;
        while (cursor.moveToNext()) 
        {
            customvariablebuffer.setCustomVariable(new CustomVariable(cursor.getInt(cursor.getColumnIndex("cv_index")), cursor.getString(cursor.getColumnIndex("cv_name")), cursor.getString(cursor.getColumnIndex("cv_value")), cursor.getInt(cursor.getColumnIndex("cv_scope"))));
        }
          goto _L1
        SQLiteException sqliteexception;
        sqliteexception;
_L7:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor != null)
        {
            cursor.close();
        }
_L3:
        return customvariablebuffer;
_L1:
        if (cursor == null) goto _L3; else goto _L2
_L2:
        cursor.close();
        return customvariablebuffer;
        Exception exception;
        exception;
        cursor = null;
_L5:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L5; else goto _L4
_L4:
        sqliteexception;
        cursor = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    Item getItem(long l)
    {
        Cursor cursor2 = databaseHelper.getReadableDatabase().query("item_events", null, (new StringBuilder()).append("event_id=").append(l).toString(), null, null, null, null);
        Cursor cursor = cursor2;
        Item item;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_182;
        }
        item = (new Item.Builder(cursor.getString(cursor.getColumnIndex("order_id")), cursor.getString(cursor.getColumnIndex("item_sku")), cursor.getDouble(cursor.getColumnIndex("item_price")), cursor.getLong(cursor.getColumnIndex("item_count")))).setItemName(cursor.getString(cursor.getColumnIndex("item_name"))).setItemCategory(cursor.getString(cursor.getColumnIndex("item_category"))).build();
        if (cursor != null)
        {
            cursor.close();
        }
        return item;
        if (cursor != null)
        {
            cursor.close();
        }
_L1:
        return null;
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor1 = null;
_L4:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor1 != null)
        {
            cursor1.close();
        }
          goto _L1
        Exception exception;
        exception;
        cursor = null;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor1;
        if (true) goto _L3; else goto _L2
_L2:
        sqliteexception;
        cursor1 = cursor;
          goto _L4
    }

    public int getNumStoredEvents()
    {
        long l;
        try
        {
            if (compiledCountStatement == null)
            {
                compiledCountStatement = databaseHelper.getReadableDatabase().compileStatement("SELECT COUNT(*) from events");
            }
            l = compiledCountStatement.simpleQueryForLong();
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
            return 0;
        }
        return (int)l;
    }

    public String getReferrer()
    {
        Cursor cursor = null;
        Cursor cursor2 = databaseHelper.getReadableDatabase().query("install_referrer", new String[] {
            "referrer"
        }, null, null, null, null, null);
        Cursor cursor1 = cursor2;
        if (!cursor1.moveToFirst()) goto _L2; else goto _L1
_L1:
        String s1 = cursor1.getString(0);
        String s = s1;
_L7:
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return s;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor1 = null;
_L5:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return null;
        Exception exception;
        exception;
_L4:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        cursor = cursor1;
        if (true) goto _L4; else goto _L3
_L3:
        sqliteexception;
        if (true) goto _L5; else goto _L2
_L2:
        s = null;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public int getStoreId()
    {
        return storeId;
    }

    Transaction getTransaction(long l)
    {
        Cursor cursor1 = databaseHelper.getReadableDatabase().query("transaction_events", null, (new StringBuilder()).append("event_id=").append(l).toString(), null, null, null, null);
        Cursor cursor = cursor1;
        Transaction transaction;
        if (!cursor.moveToFirst())
        {
            break MISSING_BLOCK_LABEL_169;
        }
        transaction = (new Transaction.Builder(cursor.getString(cursor.getColumnIndex("order_id")), cursor.getDouble(cursor.getColumnIndex("tran_totalcost")))).setStoreName(cursor.getString(cursor.getColumnIndex("tran_storename"))).setTotalTax(cursor.getDouble(cursor.getColumnIndex("tran_totaltax"))).setShippingCost(cursor.getDouble(cursor.getColumnIndex("tran_shippingcost"))).build();
        if (cursor != null)
        {
            cursor.close();
        }
        return transaction;
        if (cursor != null)
        {
            cursor.close();
        }
_L1:
        return null;
        SQLiteException sqliteexception;
        sqliteexception;
        cursor = null;
_L4:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor != null)
        {
            cursor.close();
        }
          goto _L1
        Exception exception;
        exception;
        cursor = null;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L3; else goto _L2
_L2:
        sqliteexception;
          goto _L4
    }

    public String getVisitorCustomVar(int i)
    {
        Cursor cursor = null;
        SQLiteDatabase sqlitedatabase;
        Cursor cursor2;
        sqlitedatabase = databaseHelper.getReadableDatabase();
        cursor2 = sqlitedatabase.query("custom_var_cache", null, (new StringBuilder()).append("cv_scope = 1 AND cv_index = ").append(i).toString(), null, null, null, null);
        String s;
        if (cursor2.getCount() <= 0)
        {
            break MISSING_BLOCK_LABEL_102;
        }
        cursor2.moveToFirst();
        s = cursor2.getString(cursor2.getColumnIndex("cv_value"));
_L1:
        sqlitedatabase.close();
        if (cursor2 != null)
        {
            cursor2.close();
        }
        return s;
        s = null;
          goto _L1
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor1 = null;
_L5:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return null;
        Exception exception;
        exception;
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        cursor = cursor2;
        continue; /* Loop/switch isn't completed */
        exception;
        cursor = cursor1;
        if (true) goto _L3; else goto _L2
_L2:
        sqliteexception;
        cursor1 = cursor2;
        if (true) goto _L5; else goto _L4
_L4:
    }

    CustomVariableBuffer getVisitorVarBuffer()
    {
        CustomVariableBuffer customvariablebuffer;
        Cursor cursor;
        customvariablebuffer = new CustomVariableBuffer();
        try
        {
            for (cursor = databaseHelper.getReadableDatabase().query("custom_var_cache", null, "cv_scope=1", null, null, null, null); cursor.moveToNext(); customvariablebuffer.setCustomVariable(new CustomVariable(cursor.getInt(cursor.getColumnIndex("cv_index")), cursor.getString(cursor.getColumnIndex("cv_name")), cursor.getString(cursor.getColumnIndex("cv_value")), cursor.getInt(cursor.getColumnIndex("cv_scope"))))) { }
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
            return customvariablebuffer;
        }
        cursor.close();
        return customvariablebuffer;
    }

    public Event[] peekEvents()
    {
        return peekEvents(1000);
    }

    public Event[] peekEvents(int i)
    {
        ArrayList arraylist = new ArrayList();
        Cursor cursor2 = databaseHelper.getReadableDatabase().query("events", null, null, null, null, null, "event_id", Integer.toString(i));
        Cursor cursor1 = cursor2;
_L5:
        if (!cursor1.moveToNext()) goto _L2; else goto _L1
_L1:
        Event event;
        long l;
        event = new Event(cursor1.getLong(0), cursor1.getInt(1), cursor1.getString(2), cursor1.getInt(3), cursor1.getInt(4), cursor1.getInt(5), cursor1.getInt(6), cursor1.getInt(7), cursor1.getString(8), cursor1.getString(9), cursor1.getString(10), cursor1.getInt(11), cursor1.getInt(12), cursor1.getInt(13));
        int j = cursor1.getColumnIndex("event_id");
        l = cursor1.getLong(j);
        if (!"__##GOOGLETRANSACTION##__".equals(event.category)) goto _L4; else goto _L3
_L3:
        Transaction transaction = getTransaction(l);
        if (transaction != null)
        {
            break MISSING_BLOCK_LABEL_252;
        }
        Log.w("GoogleAnalyticsTracker", (new StringBuilder()).append("missing expected transaction for event ").append(l).toString());
        event.setTransaction(transaction);
_L8:
        arraylist.add(event);
          goto _L5
        SQLiteException sqliteexception;
        sqliteexception;
        Cursor cursor = cursor1;
_L10:
        Event aevent[];
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        aevent = new Event[0];
        if (cursor != null)
        {
            cursor.close();
        }
        return aevent;
_L4:
        if (!"__##GOOGLEITEM##__".equals(event.category)) goto _L7; else goto _L6
_L6:
        Item item = getItem(l);
        if (item != null)
        {
            break MISSING_BLOCK_LABEL_361;
        }
        Log.w("GoogleAnalyticsTracker", (new StringBuilder()).append("missing expected item for event ").append(l).toString());
        event.setItem(item);
          goto _L8
        Exception exception;
        exception;
_L9:
        if (cursor1 != null)
        {
            cursor1.close();
        }
        throw exception;
_L7:
        event.setCustomVariableBuffer(getCustomVariables(l));
          goto _L8
_L2:
        if (cursor1 != null)
        {
            cursor1.close();
        }
        return (Event[])arraylist.toArray(new Event[arraylist.size()]);
        exception;
        cursor1 = null;
          goto _L9
        exception;
        cursor1 = cursor;
          goto _L9
        sqliteexception;
        cursor = null;
          goto _L10
    }

    void putCustomVariables(Event event, long l)
    {
        int i = 1;
        SQLiteDatabase sqlitedatabase;
        CustomVariableBuffer customvariablebuffer;
        sqlitedatabase = databaseHelper.getWritableDatabase();
        customvariablebuffer = event.getCustomVariableBuffer();
        if (!useStoredVisitorVars) goto _L2; else goto _L1
_L1:
        if (customvariablebuffer != null)
        {
            break MISSING_BLOCK_LABEL_45;
        }
        customvariablebuffer = new CustomVariableBuffer();
        event.setCustomVariableBuffer(customvariablebuffer);
        CustomVariableBuffer customvariablebuffer1 = getVisitorVarBuffer();
        int j = i;
_L9:
        if (j > 5) goto _L4; else goto _L3
_L3:
        CustomVariable customvariable;
        CustomVariable customvariable1;
        customvariable = customvariablebuffer1.getCustomVariableAt(j);
        customvariable1 = customvariablebuffer.getCustomVariableAt(j);
        if (customvariable == null || customvariable1 != null) goto _L6; else goto _L5
_L5:
        customvariablebuffer.setCustomVariable(customvariable);
          goto _L6
_L4:
        useStoredVisitorVars = false;
          goto _L2
_L8:
        if (i > 5)
        {
            break; /* Loop/switch isn't completed */
        }
        if (!customvariablebuffer.isIndexAvailable(i))
        {
            CustomVariable customvariable2 = customvariablebuffer.getCustomVariableAt(i);
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("event_id", Long.valueOf(l));
            contentvalues.put("cv_index", Integer.valueOf(customvariable2.getIndex()));
            contentvalues.put("cv_name", customvariable2.getName());
            contentvalues.put("cv_scope", Integer.valueOf(customvariable2.getScope()));
            contentvalues.put("cv_value", customvariable2.getValue());
            sqlitedatabase.insert("custom_variables", "event_id", contentvalues);
            sqlitedatabase.update("custom_var_cache", contentvalues, (new StringBuilder()).append("cv_index=").append(customvariable2.getIndex()).toString(), null);
        }
        i++;
        if (true) goto _L8; else goto _L7
        SQLiteException sqliteexception;
        sqliteexception;
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
_L7:
        return;
_L6:
        j++;
          goto _L9
_L2:
        if (customvariablebuffer == null) goto _L7; else goto _L8
    }

    public void putEvent(Event event)
    {
        SQLiteDatabase sqlitedatabase = null;
        if (numStoredEvents < 1000) goto _L2; else goto _L1
_L1:
        Log.w("GoogleAnalyticsTracker", "Store full. Not storing last event.");
_L8:
        return;
_L2:
        if (!sessionUpdated)
        {
            storeUpdatedSession();
        }
        SQLiteDatabase sqlitedatabase1 = databaseHelper.getWritableDatabase();
        ContentValues contentvalues;
        sqlitedatabase1.beginTransaction();
        contentvalues = new ContentValues();
        contentvalues.put("user_id", Integer.valueOf(event.userId));
        contentvalues.put("account_id", event.accountId);
        contentvalues.put("random_val", Integer.valueOf((int)(2147483647D * Math.random())));
        contentvalues.put("timestamp_first", Long.valueOf(timestampFirst));
        contentvalues.put("timestamp_previous", Long.valueOf(timestampPrevious));
        contentvalues.put("timestamp_current", Long.valueOf(timestampCurrent));
        contentvalues.put("visits", Integer.valueOf(visits));
        contentvalues.put("category", event.category);
        contentvalues.put("action", event.action);
        contentvalues.put("label", event.label);
        contentvalues.put("value", Integer.valueOf(event.value));
        contentvalues.put("screen_width", Integer.valueOf(event.screenWidth));
        contentvalues.put("screen_height", Integer.valueOf(event.screenHeight));
        if (sqlitedatabase1.insert("events", "event_id", contentvalues) == -1L) goto _L4; else goto _L3
_L3:
        long l;
        numStoredEvents = 1 + numStoredEvents;
        Cursor cursor = sqlitedatabase1.query("events", new String[] {
            "event_id"
        }, null, null, null, null, "event_id DESC", null);
        cursor.moveToPosition(0);
        l = cursor.getLong(0);
        cursor.close();
        if (!event.category.equals("__##GOOGLETRANSACTION##__")) goto _L6; else goto _L5
_L5:
        putTransaction(event, l);
_L11:
        sqlitedatabase1.setTransactionSuccessful();
_L13:
        if (sqlitedatabase1 == null) goto _L8; else goto _L7
_L7:
        sqlitedatabase1.endTransaction();
        return;
_L6:
        if (!event.category.equals("__##GOOGLEITEM##__")) goto _L10; else goto _L9
_L9:
        putItem(event, l);
          goto _L11
        SQLiteException sqliteexception1;
        sqliteexception1;
        SQLiteException sqliteexception;
        sqlitedatabase = sqlitedatabase1;
        sqliteexception = sqliteexception1;
_L15:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (sqlitedatabase == null) goto _L8; else goto _L12
_L12:
        sqlitedatabase.endTransaction();
        return;
_L10:
        putCustomVariables(event, l);
          goto _L11
        Exception exception1;
        exception1;
        Exception exception;
        sqlitedatabase = sqlitedatabase1;
        exception = exception1;
_L14:
        if (sqlitedatabase != null)
        {
            sqlitedatabase.endTransaction();
        }
        throw exception;
_L4:
        Log.e("GoogleAnalyticsTracker", "Error when attempting to add event to database.");
          goto _L13
        exception;
          goto _L14
        sqliteexception;
        sqlitedatabase = null;
          goto _L15
    }

    void putItem(Event event, long l)
    {
        Item item = event.getItem();
        if (item == null)
        {
            Log.w("GoogleAnalyticsTracker", (new StringBuilder()).append("missing item details for event ").append(l).toString());
            return;
        }
        try
        {
            SQLiteDatabase sqlitedatabase = databaseHelper.getWritableDatabase();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("event_id", Long.valueOf(l));
            contentvalues.put("order_id", item.getOrderId());
            contentvalues.put("item_sku", item.getItemSKU());
            contentvalues.put("item_name", item.getItemName());
            contentvalues.put("item_category", item.getItemCategory());
            contentvalues.put("item_price", (new StringBuilder()).append(item.getItemPrice()).append("").toString());
            contentvalues.put("item_count", (new StringBuilder()).append(item.getItemCount()).append("").toString());
            sqlitedatabase.insert("item_events", "event_id", contentvalues);
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }

    void putTransaction(Event event, long l)
    {
        Transaction transaction = event.getTransaction();
        if (transaction == null)
        {
            Log.w("GoogleAnalyticsTracker", (new StringBuilder()).append("missing transaction details for event ").append(l).toString());
            return;
        }
        try
        {
            SQLiteDatabase sqlitedatabase = databaseHelper.getWritableDatabase();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("event_id", Long.valueOf(l));
            contentvalues.put("order_id", transaction.getOrderId());
            contentvalues.put("tran_storename", transaction.getStoreName());
            contentvalues.put("tran_totalcost", (new StringBuilder()).append(transaction.getTotalCost()).append("").toString());
            contentvalues.put("tran_totaltax", (new StringBuilder()).append(transaction.getTotalTax()).append("").toString());
            contentvalues.put("tran_shippingcost", (new StringBuilder()).append(transaction.getShippingCost()).append("").toString());
            sqlitedatabase.insert("transaction_events", "event_id", contentvalues);
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }

    public void setReferrer(String s)
    {
        try
        {
            SQLiteDatabase sqlitedatabase = databaseHelper.getWritableDatabase();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("referrer", s);
            sqlitedatabase.insert("install_referrer", null, contentvalues);
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }

    public void startNewVisit()
    {
        sessionUpdated = false;
        useStoredVisitorVars = true;
        numStoredEvents = getNumStoredEvents();
        SQLiteDatabase sqlitedatabase;
        Cursor cursor1;
        sqlitedatabase = databaseHelper.getWritableDatabase();
        cursor1 = sqlitedatabase.query("session", null, null, null, null, null, null);
        Cursor cursor = cursor1;
        if (cursor.moveToFirst()) goto _L2; else goto _L1
_L1:
        long l = System.currentTimeMillis() / 1000L;
        timestampFirst = l;
        timestampPrevious = l;
        timestampCurrent = l;
        visits = 1;
        storeId = 0x7fffffff & (new SecureRandom()).nextInt();
        ContentValues contentvalues = new ContentValues();
        contentvalues.put("timestamp_first", Long.valueOf(timestampFirst));
        contentvalues.put("timestamp_previous", Long.valueOf(timestampPrevious));
        contentvalues.put("timestamp_current", Long.valueOf(timestampCurrent));
        contentvalues.put("visits", Integer.valueOf(visits));
        contentvalues.put("store_id", Integer.valueOf(storeId));
        sqlitedatabase.insert("session", "timestamp_first", contentvalues);
_L3:
        if (cursor != null)
        {
            cursor.close();
        }
_L5:
        return;
_L2:
        timestampFirst = cursor.getLong(0);
        timestampPrevious = cursor.getLong(2);
        timestampCurrent = System.currentTimeMillis() / 1000L;
        visits = 1 + cursor.getInt(3);
        storeId = cursor.getInt(4);
          goto _L3
        SQLiteException sqliteexception;
        sqliteexception;
_L8:
        Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        if (cursor == null) goto _L5; else goto _L4
_L4:
        cursor.close();
        return;
        Exception exception;
        exception;
        cursor = null;
_L7:
        if (cursor != null)
        {
            cursor.close();
        }
        throw exception;
        exception;
        if (true) goto _L7; else goto _L6
_L6:
        sqliteexception;
        cursor = null;
          goto _L8
    }

    void storeUpdatedSession()
    {
        try
        {
            SQLiteDatabase sqlitedatabase = databaseHelper.getWritableDatabase();
            ContentValues contentvalues = new ContentValues();
            contentvalues.put("timestamp_previous", Long.valueOf(timestampPrevious));
            contentvalues.put("timestamp_current", Long.valueOf(timestampCurrent));
            contentvalues.put("visits", Integer.valueOf(visits));
            String as[] = new String[1];
            as[0] = Long.toString(timestampFirst);
            sqlitedatabase.update("session", contentvalues, "timestamp_first=?", as);
            sessionUpdated = true;
            return;
        }
        catch (SQLiteException sqliteexception)
        {
            Log.e("GoogleAnalyticsTracker", sqliteexception.toString());
        }
    }







}
