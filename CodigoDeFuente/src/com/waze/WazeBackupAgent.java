// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.app.backup.BackupAgentHelper;
import android.app.backup.BackupDataInput;
import android.app.backup.BackupDataOutput;
import android.app.backup.SharedPreferencesBackupHelper;
import android.content.Context;
import android.content.SharedPreferences;
import android.os.ParcelFileDescriptor;
import java.io.IOException;

public class WazeBackupAgent extends BackupAgentHelper
{

    static final String PREFS_BACKUP = "prefs_backup";
    static final String PREFS_BACKUP_KEY = "backup_key";

    public WazeBackupAgent()
    {
    }

    public static String getString(Context context, String s, String s1)
    {
        return context.getSharedPreferences("prefs_backup", 0).getString(s, s1);
    }

    public static void putString(Context context, String s, String s1)
    {
        context.getSharedPreferences("prefs_backup", 0).edit().putString(s, s1).commit();
    }

    public void onBackup(ParcelFileDescriptor parcelfiledescriptor, BackupDataOutput backupdataoutput, ParcelFileDescriptor parcelfiledescriptor1)
        throws IOException
    {
        super.onBackup(parcelfiledescriptor, backupdataoutput, parcelfiledescriptor1);
    }

    public void onCreate()
    {
        addHelper("backup_key", new SharedPreferencesBackupHelper(this, new String[] {
            "prefs_backup"
        }));
    }

    public void onRestore(BackupDataInput backupdatainput, int i, ParcelFileDescriptor parcelfiledescriptor)
        throws IOException
    {
        super.onRestore(backupdatainput, i, parcelfiledescriptor);
    }
}
