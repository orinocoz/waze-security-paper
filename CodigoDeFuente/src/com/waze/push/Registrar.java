// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import java.util.ArrayList;
import java.util.List;

public final class Registrar
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static Registrar mInstance = null;
    private Activity mContext;

    private Registrar()
    {
        mContext = null;
    }

    private static int getAppVersion(Context context)
    {
        int i;
        try
        {
            i = context.getPackageManager().getPackageInfo(context.getPackageName(), 0).versionCode;
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new RuntimeException((new StringBuilder("Coult not get package name: ")).append(namenotfoundexception).toString());
        }
        return i;
    }

    private void getConfig()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(new ConfigItem("Display", "SettingsNotificationOnOff", "yes"));
        ConfigManager.getInstance().getConfig(instance(), arraylist, "SettingsNotification");
    }

    private static SharedPreferences getPrefs(Context context)
    {
        return context.getSharedPreferences("com.waze.push", 0);
    }

    public static Registrar instance()
    {
        if (mInstance == null)
        {
            mInstance = new Registrar();
        }
        return mInstance;
    }

    protected static void onRegistered(Context context, String s)
    {
        instance().setRegistrationId(context, s);
        NativeManager.setPushToken(true);
    }

    protected static void onUnRegistered(Context context, String s)
    {
        String s1 = instance().setRegistrationId(context, "");
        NativeManager.unsetPushToken(true);
        Logger.d_("Push Service", (new StringBuilder("Reg id: ")).append(s1).append(" is unregistered!").toString());
    }

    private String setRegistrationId(Context context, String s)
    {
        this;
        JVM INSTR monitorenter ;
        String s1;
        SharedPreferences sharedpreferences = getPrefs(context);
        s1 = sharedpreferences.getString("regId", "");
        int i = getAppVersion(context);
        android.content.SharedPreferences.Editor editor = sharedpreferences.edit();
        editor.putString("regId", s);
        editor.putInt("appVersion", i);
        editor.commit();
        this;
        JVM INSTR monitorexit ;
        return s1;
        Exception exception;
        exception;
        throw exception;
    }

    public static void start(final Activity final_activity)
    {
        NativeManager.registerOnAppStartedEvent(new RunnableExecutor(final_activity) {

            private final Activity val$context;

            public void event()
            {
                Registrar.instance().mContext = context;
                Registrar.instance().getConfig();
            }

            
            {
                context = activity1;
                super(final_activity);
            }
        });
    }

    public String getRegistrationId(Context context)
    {
        this;
        JVM INSTR monitorenter ;
        String s;
        int i;
        int j;
        SharedPreferences sharedpreferences = getPrefs(context);
        s = sharedpreferences.getString("regId", "");
        i = sharedpreferences.getInt("appVersion", 0x80000000);
        j = getAppVersion(context);
        if (i == 0x80000000 || i == j)
        {
            break MISSING_BLOCK_LABEL_100;
        }
        Logger.d_("Push Service", (new StringBuilder("App version changed from ")).append(i).append(" to ").append(j).append("; resetting registration id").toString());
        setRegistrationId(context, "");
        s = "";
        this;
        JVM INSTR monitorexit ;
        return s;
        Exception exception;
        exception;
        throw exception;
    }

    public void register()
    {
        if (instance().getRegistrationId(mContext).equals(""))
        {
            Intent intent = new Intent("com.google.android.c2dm.intent.REGISTER");
            intent.putExtra("app", PendingIntent.getBroadcast(mContext, 0, new Intent(), 0));
            intent.putExtra("sender", "1005457359603");
            mContext.startService(intent);
            return;
        } else
        {
            Logger.d_("Push Service", "Already registered - skiping the registration process");
            NativeManager.setPushToken(false);
            return;
        }
    }

    public void unregister()
    {
        if (instance().getRegistrationId(mContext).equals(""))
        {
            Logger.d_("Push Service", "Already unregistered - skiping the unregistration process");
            NativeManager.unsetPushToken(false);
            return;
        } else
        {
            Logger.d_("Push Service", "Posting the unregistration process");
            Intent intent = new Intent("com.google.android.c2dm.intent.UNREGISTER");
            intent.putExtra("app", PendingIntent.getBroadcast(mContext, 0, new Intent(), 0));
            mContext.startService(intent);
            return;
        }
    }

    public void updateConfigItems(List list)
    {
        if (((ConfigItem)list.get(0)).getValue().equals("yes"))
        {
            register();
            return;
        } else
        {
            unregister();
            return;
        }
    }



}
