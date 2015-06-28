// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.now;

import android.os.AsyncTask;
import android.util.Log;
import com.google.android.now.NowAuthService;
import com.waze.AppService;
import com.waze.Logger;
import com.waze.NativeManager;
import java.io.IOException;

// Referenced classes of package com.waze.now:
//            GoogleNowAuthenticator

class HaveTokenAlreadyException extends AsyncTask
{

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((Void[])aobj);
    }

    protected transient String doInBackground(Void avoid[])
    {
        String s = "";
        String s1;
        if (GoogleNowAuthenticator.GetLastRefreshTokenTime() + GoogleNowAuthenticator.access$0() >= System.currentTimeMillis() / 1000L)
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
        com.google.android.now.uestsException uestsexception;
        uestsexception;
        Logger.d(Log.getStackTraceString(uestsexception));
        continue; /* Loop/switch isn't completed */
        com.google.android.now.ception ception;
        ception;
        Logger.d(Log.getStackTraceString(ception));
        continue; /* Loop/switch isn't completed */
        com.google.android.now.edException edexception;
        edexception;
        Logger.d(Log.getStackTraceString(edexception));
        continue; /* Loop/switch isn't completed */
        com.google.android.now.lreadyException lreadyexception;
        lreadyexception;
        Logger.d(Log.getStackTraceString(lreadyexception));
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

    HaveTokenAlreadyException()
    {
    }
}
