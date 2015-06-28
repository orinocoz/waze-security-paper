// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.now;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.AsyncTask;
import android.util.Log;
import com.google.android.now.NowAuthService;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import java.io.IOException;

public class GoogleNowAuthenticator
{

    private static long TIME_TO_REFRESH = 0x15180L;

    public GoogleNowAuthenticator()
    {
    }

    public static long GetLastRefreshTokenTime()
    {
        return AppService.getAppContext().getSharedPreferences("com.waze.Now", 0).getLong("refresh_token", 0L);
    }

    public static void SaveLastRefreshTokenTime()
    {
        SharedPreferences sharedpreferences = AppService.getAppContext().getSharedPreferences("com.waze.Now", 0);
        sharedpreferences.edit().putLong("refresh_token", System.currentTimeMillis() / 1000L).apply();
        sharedpreferences.edit().commit();
    }

    public static void refreshAuthCode()
    {
        (new AsyncTask() {

            protected volatile transient Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected transient String doInBackground(Void avoid[])
            {
                String s = "";
                String s1;
                if (GoogleNowAuthenticator.GetLastRefreshTokenTime() + GoogleNowAuthenticator.TIME_TO_REFRESH >= System.currentTimeMillis() / 1000L)
                {
                    break MISSING_BLOCK_LABEL_37;
                }
                GoogleNowAuthenticator.SaveLastRefreshTokenTime();
                s1 = NowAuthService.getAuthCode(AppService.getAppContext(), "1005457359603-qagqlbukkg3f292jhjglersblhodeuud.apps.googleusercontent.com");
                s = s1;
_L2:
                Log.e("NowAuthenticator", (new StringBuilder("Token recevied ")).append(s).toString());
                return s;
                IOException ioexception;
                ioexception;
                Logger.d(Log.getStackTraceString(ioexception));
                continue; /* Loop/switch isn't completed */
                com.google.android.now.NowAuthService.TooManyRequestsException toomanyrequestsexception;
                toomanyrequestsexception;
                Logger.d(Log.getStackTraceString(toomanyrequestsexception));
                continue; /* Loop/switch isn't completed */
                com.google.android.now.NowAuthService.DisabledException disabledexception;
                disabledexception;
                Logger.d(Log.getStackTraceString(disabledexception));
                continue; /* Loop/switch isn't completed */
                com.google.android.now.NowAuthService.UnauthorizedException unauthorizedexception;
                unauthorizedexception;
                Logger.d(Log.getStackTraceString(unauthorizedexception));
                continue; /* Loop/switch isn't completed */
                com.google.android.now.NowAuthService.HaveTokenAlreadyException havetokenalreadyexception;
                havetokenalreadyexception;
                Logger.d(Log.getStackTraceString(havetokenalreadyexception));
                if (true) goto _L2; else goto _L1
_L1:
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((String)obj);
            }

            protected void onPostExecute(String s)
            {
                if (s != null && !s.isEmpty())
                {
                    NativeManager.getInstance().SendGoogleNowToken(s);
                }
            }

        }).execute(new Void[0]);
    }


}
