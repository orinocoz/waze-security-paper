// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.referrer;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.net.Uri;
import android.util.Log;
import com.waze.AppUUID;
import com.waze.Logger;
import com.waze.NativeManager;
import com.waze.config.WazePreferences;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;

public class ReferrerTracker extends BroadcastReceiver
{

    private static final Object LOCK = com/waze/referrer/ReferrerTracker;
    public static final String LOG_TAG = "WAZE_REFERRER";
    private static final String REFERRER_COMMAND = "Stats,%s,-1,ANALYTICS_EVENT_REFERRER_RECEIVED,2,REFERRER,%s";
    private static final String REFERRER_FIELD = "referrer";
    private static final String REFERRER_FILE = "referrer";
    private static final String REFERRER_FILE_OLD = "referrer.old";
    private static final int REFERRER_NAME_MAX_SIZE = 4096;
    public static final String REFERRER_UNKNOWN = "Unknown";
    private static final String SERVICE_NAME = "distrib/static";
    private static final String SERVICE_URL_DEFAULT = "http://rt.waze.com/rtserver";

    public ReferrerTracker()
    {
    }

    public static void __unit_test(Context context)
    {
        Intent intent = new Intent("com.android.vending.INSTALL_REFERRER");
        intent.putExtra("referrer", "AGA_UNIT_TEST_REFERRER");
        context.sendBroadcast(intent);
    }

    private String extractReferrer(Intent intent)
    {
        String s;
        String s1;
        try
        {
            s = intent.getStringExtra("referrer");
        }
        catch (Exception exception)
        {
            Log.e("WAZE_REFERRER", "Referrer extraction error", exception);
            return null;
        }
        if (s == null)
        {
            break MISSING_BLOCK_LABEL_28;
        }
        s1 = parseReferrer(Uri.decode(s));
        s = s1;
        return s;
    }

    private String getCmd(Context context, String s)
    {
        Object aobj[] = new Object[2];
        aobj[0] = AppUUID.getInstallationUUID(context);
        aobj[1] = s;
        return String.format("Stats,%s,-1,ANALYTICS_EVENT_REFERRER_RECEIVED,2,REFERRER,%s", aobj);
    }

    private static SharedPreferences getPrefs(Context context)
    {
        return context.getSharedPreferences("referrer", 0);
    }

    public static String getReferrer(Context context)
    {
        String s = null;
        Object obj = LOCK;
        obj;
        JVM INSTR monitorenter ;
        int i;
        s = getPrefs(context).getString("referrer", "");
        Logger.d_("WAZE_REFERRER", (new StringBuilder("Loading prefs. Referrer: ")).append(s).toString());
        i = s.length();
        if (i == 0)
        {
            s = null;
        }
_L2:
        obj;
        JVM INSTR monitorexit ;
        if (s == null)
        {
            Logger.d_("WAZE_REFERRER", "Referrer is empty");
        }
        return s;
        Exception exception1;
        exception1;
        Log.e("WAZE_REFERRER", "Failed to read referrer file", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private String getWebService()
    {
        return (new StringBuilder(String.valueOf(WazePreferences.getProperty("GeoConfig.Web-Service Address", "http://rt.waze.com/rtserver")))).append("/").append("distrib/static").toString();
    }

    public static void invalidateReferrer(Context context)
    {
        try
        {
            saveToPrefs(context, "");
            return;
        }
        catch (Exception exception)
        {
            Log.e("WAZE_REFERRER", "Failed to invalidate referrer file", exception);
        }
    }

    private String parseReferrer(String s)
    {
        return s.replaceAll("&", "|");
    }

    private static void saveToPrefs(Context context, String s)
    {
        Object obj = LOCK;
        obj;
        JVM INSTR monitorenter ;
        Logger.d_("WAZE_REFERRER", (new StringBuilder("Saving to prefs. Referrer: ")).append(s).toString());
        android.content.SharedPreferences.Editor editor = getPrefs(context).edit();
        editor.putString("referrer", s);
        editor.commit();
_L1:
        return;
        Exception exception1;
        exception1;
        Log.e("WAZE_REFERRER", "Failed to update referrer prefs", exception1);
          goto _L1
        Exception exception;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private boolean send(Context context, String s)
    {
        HttpResponse httpresponse;
        DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
        HttpPost httppost = new HttpPost(getWebService());
        httppost.addHeader("Content-Type", "binary/octet-stream");
        httppost.setEntity(new StringEntity(getCmd(context, s)));
        httpresponse = defaulthttpclient.execute(httppost);
        if (httpresponse.getStatusLine().getStatusCode() != 200)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        Log.d("WAZE_REFERRER", (new StringBuilder("Successfully posted refferer stats. Status: ")).append(httpresponse.getStatusLine()).append(". Referrer: ").append(s).toString());
        return true;
        try
        {
            Log.e("WAZE_REFERRER", (new StringBuilder("Failed sending referrer statistics. Status: ")).append(httpresponse.getStatusLine()).toString());
        }
        catch (IOException ioexception)
        {
            Log.e("WAZE_REFERRER", (new StringBuilder("routing request Http post error ")).append(ioexception.getMessage()).toString());
            return false;
        }
        return false;
    }

    public void onReceive(final Context context, Intent intent)
    {
        final String referrer = extractReferrer(intent);
        Log.d("WAZE_REFERRER", (new StringBuilder("Received referrer broadcast for referrer: ")).append(referrer).toString());
        if (referrer.startsWith("invite_"))
        {
            NativeManager.mInviteId = referrer.substring(7);
        } else
        if (referrer != null)
        {
            (new Thread(new Runnable() {

                final ReferrerTracker this$0;
                private final Context val$context;
                private final String val$referrer;

                public void run()
                {
                    send(context, referrer);
                    ReferrerTracker.saveToPrefs(context, referrer);
                }

            
            {
                this$0 = ReferrerTracker.this;
                context = context1;
                referrer = s;
                super();
            }
            })).start();
            return;
        }
    }



}
