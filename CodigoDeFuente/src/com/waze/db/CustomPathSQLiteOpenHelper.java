// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.db;

import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.util.Log;

public abstract class CustomPathSQLiteOpenHelper
{

    private static final String TAG = com/waze/db/CustomPathSQLiteOpenHelper.getSimpleName();
    private SQLiteDatabase mDatabase;
    private final String mDir;
    private final android.database.sqlite.SQLiteDatabase.CursorFactory mFactory;
    private boolean mIsInitializing;
    private final String mName;
    private final int mNewVersion;

    public CustomPathSQLiteOpenHelper(String s, String s1, android.database.sqlite.SQLiteDatabase.CursorFactory cursorfactory, int i)
    {
        mDatabase = null;
        mIsInitializing = false;
        if (i < 1)
        {
            throw new IllegalArgumentException((new StringBuilder("Version must be >= 1, was ")).append(i).toString());
        } else
        {
            mDir = s;
            mName = s1;
            mFactory = cursorfactory;
            mNewVersion = i;
            return;
        }
    }

    public void close()
    {
        this;
        JVM INSTR monitorenter ;
        if (mIsInitializing)
        {
            throw new IllegalStateException("Closed during initialization");
        }
        break MISSING_BLOCK_LABEL_24;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
        if (mDatabase != null && mDatabase.isOpen())
        {
            mDatabase.close();
            mDatabase = null;
        }
        this;
        JVM INSTR monitorexit ;
    }

    public String getDatabaseName()
    {
        return mName;
    }

    public SQLiteDatabase getReadableDatabase()
    {
        this;
        JVM INSTR monitorenter ;
        if (mDatabase == null) goto _L2; else goto _L1
_L1:
        if (mDatabase.isOpen()) goto _L4; else goto _L3
_L3:
        mDatabase = null;
_L2:
        if (mIsInitializing)
        {
            throw new IllegalStateException("getReadableDatabase called recursively");
        }
          goto _L5
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        SQLiteDatabase sqlitedatabase1 = mDatabase;
_L6:
        this;
        JVM INSTR monitorexit ;
        return sqlitedatabase1;
_L5:
        SQLiteDatabase sqlitedatabase2 = getWritableDatabase();
        sqlitedatabase1 = sqlitedatabase2;
          goto _L6
        SQLiteException sqliteexception;
        sqliteexception;
        if (mName == null)
        {
            throw sqliteexception;
        }
        Log.e(TAG, (new StringBuilder("Couldn't open ")).append(mName).append(" for writing (will try read-only):").toString(), sqliteexception);
        SQLiteDatabase sqlitedatabase = null;
        mIsInitializing = true;
        String s = (new StringBuilder(String.valueOf(mDir))).append("/").append(mName).toString();
        sqlitedatabase = SQLiteDatabase.openDatabase(s, mFactory, 1);
        if (sqlitedatabase.getVersion() != mNewVersion)
        {
            throw new SQLiteException((new StringBuilder("Can't upgrade read-only database from version ")).append(sqlitedatabase.getVersion()).append(" to ").append(mNewVersion).append(": ").append(s).toString());
        }
        break MISSING_BLOCK_LABEL_254;
        Exception exception1;
        exception1;
        mIsInitializing = false;
        if (sqlitedatabase == null)
        {
            break MISSING_BLOCK_LABEL_251;
        }
        if (sqlitedatabase != mDatabase)
        {
            sqlitedatabase.close();
        }
        throw exception1;
        onOpen(sqlitedatabase);
        Log.w(TAG, (new StringBuilder("Opened ")).append(mName).append(" in read-only mode").toString());
        mDatabase = sqlitedatabase;
        sqlitedatabase1 = mDatabase;
        mIsInitializing = false;
        if (sqlitedatabase == null) goto _L6; else goto _L7
_L7:
        if (sqlitedatabase == mDatabase) goto _L6; else goto _L8
_L8:
        sqlitedatabase.close();
          goto _L6
    }

    public SQLiteDatabase getWritableDatabase()
    {
        this;
        JVM INSTR monitorenter ;
        if (mDatabase == null) goto _L2; else goto _L1
_L1:
        if (mDatabase.isOpen()) goto _L4; else goto _L3
_L3:
        mDatabase = null;
_L2:
        if (mIsInitializing)
        {
            throw new IllegalStateException("getWritableDatabase called recursively");
        }
          goto _L5
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
_L4:
        if (mDatabase.isReadOnly()) goto _L2; else goto _L6
_L6:
        SQLiteDatabase sqlitedatabase = mDatabase;
_L15:
        this;
        JVM INSTR monitorexit ;
        return sqlitedatabase;
_L5:
        sqlitedatabase = null;
        mIsInitializing = true;
        if (mName != null) goto _L8; else goto _L7
_L7:
        sqlitedatabase = SQLiteDatabase.create(null);
_L16:
        int i = sqlitedatabase.getVersion();
        if (i == mNewVersion) goto _L10; else goto _L9
_L9:
        sqlitedatabase.beginTransaction();
        if (i != 0) goto _L12; else goto _L11
_L11:
        onCreate(sqlitedatabase);
_L19:
        sqlitedatabase.setVersion(mNewVersion);
        sqlitedatabase.setTransactionSuccessful();
        sqlitedatabase.endTransaction();
_L10:
        onOpen(sqlitedatabase);
        mIsInitializing = false;
        if (false) goto _L14; else goto _L13
_L13:
        SQLiteDatabase sqlitedatabase3 = mDatabase;
        if (sqlitedatabase3 == null)
        {
            break MISSING_BLOCK_LABEL_161;
        }
        Exception exception1;
        SQLiteDatabase sqlitedatabase1;
        SQLiteDatabase sqlitedatabase2;
        Exception exception4;
        try
        {
            mDatabase.close();
        }
        catch (Exception exception3) { }
        mDatabase = sqlitedatabase;
          goto _L15
_L8:
        sqlitedatabase2 = SQLiteDatabase.openDatabase((new StringBuilder(String.valueOf(mDir))).append("/").append(mName).toString(), null, 0x10000000);
        sqlitedatabase = sqlitedatabase2;
          goto _L16
_L12:
        if (i <= mNewVersion) goto _L18; else goto _L17
_L17:
        onDowngrade(sqlitedatabase, i, mNewVersion);
          goto _L19
        exception4;
        sqlitedatabase.endTransaction();
        throw exception4;
        exception1;
        mIsInitializing = false;
        if (true) goto _L21; else goto _L20
_L20:
        sqlitedatabase1 = mDatabase;
        if (sqlitedatabase1 == null)
        {
            break MISSING_BLOCK_LABEL_272;
        }
        try
        {
            mDatabase.close();
        }
        catch (Exception exception2) { }
        mDatabase = sqlitedatabase;
_L24:
        throw exception1;
_L18:
        onUpgrade(sqlitedatabase, i, mNewVersion);
          goto _L19
_L14:
        if (sqlitedatabase == null) goto _L15; else goto _L22
_L22:
        sqlitedatabase.close();
          goto _L15
_L21:
        if (sqlitedatabase == null) goto _L24; else goto _L23
_L23:
        sqlitedatabase.close();
          goto _L24
    }

    public abstract void onCreate(SQLiteDatabase sqlitedatabase);

    public void onDowngrade(SQLiteDatabase sqlitedatabase, int i, int j)
    {
        throw new SQLiteException((new StringBuilder("Can't downgrade database from version ")).append(i).append(" to ").append(j).toString());
    }

    public void onOpen(SQLiteDatabase sqlitedatabase)
    {
    }

    public abstract void onUpgrade(SQLiteDatabase sqlitedatabase, int i, int j);

}
