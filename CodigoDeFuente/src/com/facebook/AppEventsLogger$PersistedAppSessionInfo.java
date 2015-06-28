// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook;

import android.content.Context;
import android.util.Log;
import com.facebook.internal.Logger;
import com.facebook.internal.Utility;
import java.io.BufferedOutputStream;
import java.io.FileNotFoundException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.facebook:
//            FacebookTimeSpentData, AppEventsLogger, LoggingBehavior

static class _cls1
{

    private static final String PERSISTED_SESSION_INFO_FILENAME = "AppEventsLogger.persistedsessioninfo";
    private static final Runnable appSessionInfoFlushRunnable = new Runnable() {

        public void run()
        {
            AppEventsLogger.PersistedAppSessionInfo.saveAppSessionInformation(AppEventsLogger.access$0());
        }

    };
    private static Map appSessionInfoMap;
    private static boolean hasChanges = false;
    private static boolean isLoaded = false;
    private static final Object staticLock = new Object();

    private static FacebookTimeSpentData getTimeSpentData(Context context, _cls1 _pcls1)
    {
        restoreAppSessionInformation(context);
        FacebookTimeSpentData facebooktimespentdata = (FacebookTimeSpentData)appSessionInfoMap.get(_pcls1);
        if (facebooktimespentdata == null)
        {
            facebooktimespentdata = new FacebookTimeSpentData();
            appSessionInfoMap.put(_pcls1, facebooktimespentdata);
        }
        return facebooktimespentdata;
    }

    static void onResume(Context context, appSessionInfoMap appsessioninfomap, AppEventsLogger appeventslogger, long l, String s)
    {
        synchronized (staticLock)
        {
            getTimeSpentData(context, appsessioninfomap).onResume(appeventslogger, l, s);
            onTimeSpentDataUpdate();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static void onSuspend(Context context, onTimeSpentDataUpdate ontimespentdataupdate, AppEventsLogger appeventslogger, long l)
    {
        synchronized (staticLock)
        {
            getTimeSpentData(context, ontimespentdataupdate).onSuspend(appeventslogger, l);
            onTimeSpentDataUpdate();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void onTimeSpentDataUpdate()
    {
        if (!hasChanges)
        {
            hasChanges = true;
            AppEventsLogger.access$2().schedule(appSessionInfoFlushRunnable, 30L, TimeUnit.SECONDS);
        }
    }

    private static void restoreAppSessionInformation(Context context)
    {
        Object obj = null;
        Object obj1 = staticLock;
        obj1;
        JVM INSTR monitorenter ;
        boolean flag = isLoaded;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_90;
        }
        ObjectInputStream objectinputstream = new ObjectInputStream(context.openFileInput("AppEventsLogger.persistedsessioninfo"));
        appSessionInfoMap = (HashMap)objectinputstream.readObject();
        Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info loaded");
        Utility.closeQuietly(objectinputstream);
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
_L1:
        obj1;
        JVM INSTR monitorexit ;
        return;
_L5:
        Object obj2;
        Utility.closeQuietly(((java.io.Closeable) (obj2)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
          goto _L1
_L2:
        obj1;
        JVM INSTR monitorexit ;
        Exception exception;
        throw exception;
        Exception exception1;
        exception1;
_L4:
        Log.d(AppEventsLogger.access$1(), (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
          goto _L1
_L3:
        Exception exception2;
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        context.deleteFile("AppEventsLogger.persistedsessioninfo");
        if (appSessionInfoMap == null)
        {
            appSessionInfoMap = new HashMap();
        }
        isLoaded = true;
        hasChanges = false;
        throw exception2;
        exception;
          goto _L2
        exception2;
        obj = objectinputstream;
          goto _L3
        exception1;
        obj = objectinputstream;
          goto _L4
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        obj2 = objectinputstream;
          goto _L5
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        obj2 = null;
          goto _L5
        exception;
          goto _L2
        exception2;
          goto _L3
    }

    static void saveAppSessionInformation(Context context)
    {
        Object obj = null;
        Object obj1 = staticLock;
        obj1;
        JVM INSTR monitorenter ;
        boolean flag = hasChanges;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_68;
        }
        ObjectOutputStream objectoutputstream = new ObjectOutputStream(new BufferedOutputStream(context.openFileOutput("AppEventsLogger.persistedsessioninfo", 0)));
        objectoutputstream.writeObject(appSessionInfoMap);
        hasChanges = false;
        Logger.log(LoggingBehavior.APP_EVENTS, "AppEvents", "App session info saved");
        Utility.closeQuietly(objectoutputstream);
_L1:
        obj1;
        JVM INSTR monitorexit ;
        return;
        Exception exception1;
        exception1;
_L4:
        Log.d(AppEventsLogger.access$1(), (new StringBuilder("Got unexpected exception: ")).append(exception1.toString()).toString());
        Utility.closeQuietly(((java.io.Closeable) (obj)));
          goto _L1
_L2:
        obj1;
        JVM INSTR monitorexit ;
        Exception exception;
        throw exception;
        Exception exception2;
        exception2;
_L3:
        Utility.closeQuietly(((java.io.Closeable) (obj)));
        throw exception2;
        exception;
          goto _L2
        exception2;
        obj = objectoutputstream;
          goto _L3
        exception1;
        obj = objectoutputstream;
          goto _L4
        exception;
          goto _L2
    }


    _cls1()
    {
    }
}
