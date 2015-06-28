// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.UUID;

// Referenced classes of package com.waze:
//            Logger

public class AppUUID
{

    private static final String PREFS_NAME = "com.waze.appuid";
    private static final String PREFS_PROPERTY_UUID = "UUID";

    public AppUUID()
    {
    }

    public static String getInstallationUUID(Context context)
    {
        com/waze/AppUUID;
        JVM INSTR monitorenter ;
        String s;
        SharedPreferences sharedpreferences = context.getSharedPreferences("com.waze.appuid", 0);
        s = sharedpreferences.getString("UUID", "");
        if (s.equals(""))
        {
            Logger.d_("AGA DEBUG", "Generating UUID");
            s = UUID.randomUUID().toString();
            android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
            editor.putString("UUID", s);
            editor.commit();
        }
        com/waze/AppUUID;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }
}
