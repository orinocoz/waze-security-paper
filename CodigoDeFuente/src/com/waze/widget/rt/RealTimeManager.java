// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.rt;

import android.content.Context;
import android.util.Log;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.config.WazePreferences;
import com.waze.config.WazeUserPreferences;
import com.waze.messages.QuestionData;
import com.waze.utils.StatsData;
import com.waze.widget.WazeAppWidgetLog;
import com.waze.widget.WazeAppWidgetPreferences;
import java.io.IOException;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.HttpClient;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.entity.StringEntity;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.util.EntityUtils;

// Referenced classes of package com.waze.widget.rt:
//            AuthenticateRequest, AuthenticateSuccessfulResponse

public class RealTimeManager
{

    private static final int PROTOCL_VERSION = 146;
    private static RealTimeManager mInstance = null;
    private AuthenticateSuccessfulResponse mAuthenticationRsp;
    private boolean mIsSecuredConnection;
    private String mPassword;
    private String mSecuredServerUrl;
    private String mServerUrl;
    private String mUserName;

    private RealTimeManager()
    {
        loadRealTimeParams();
    }

    public static RealTimeManager getInstance()
    {
        if (mInstance != null)
        {
            return mInstance;
        } else
        {
            mInstance = new RealTimeManager();
            return mInstance;
        }
    }

    public static String getProtocol()
    {
        return Integer.toString(146);
    }

    private void loadRealTimeParams()
    {
        mUserName = WazeUserPreferences.getProperty("Realtime.Name");
        mPassword = WazeUserPreferences.getProperty("Realtime.PasswordEnc");
        mServerUrl = WazeAppWidgetPreferences.ServerUrl();
        mSecuredServerUrl = WazeAppWidgetPreferences.SecuredServerUrl();
        mIsSecuredConnection = WazeAppWidgetPreferences.isWebServiceSecuredEnabled();
    }

    public boolean ClientInfo(Context context)
    {
        String s;
        s = QuestionData.ReadKeyData("client_info", context);
        if (s == null || s.isEmpty())
        {
            WazeAppWidgetLog.w("Client info failed");
            return false;
        }
        DefaultHttpClient defaulthttpclient;
        String s1;
        WazeAppWidgetLog.d("Sending client info request");
        defaulthttpclient = new DefaultHttpClient();
        if (!mIsSecuredConnection)
        {
            break MISSING_BLOCK_LABEL_134;
        }
        s1 = mSecuredServerUrl;
_L1:
        HttpResponse httpresponse;
        HttpPost httppost = new HttpPost((new StringBuilder(String.valueOf(s1))).append("/distrib/static").toString());
        httppost.addHeader("Content-Type", "binary/octet-stream");
        httppost.setEntity(new StringEntity(s));
        httpresponse = defaulthttpclient.execute(httppost);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            return true;
        }
        break MISSING_BLOCK_LABEL_143;
        try
        {
            s1 = mServerUrl;
        }
        catch (IOException ioexception)
        {
            WazeAppWidgetLog.e((new StringBuilder("client info error [error=")).append(ioexception.getMessage()).append("]").toString());
            return false;
        }
          goto _L1
        WazeAppWidgetLog.e((new StringBuilder("client info failed [error =")).append(httpresponse.getStatusLine().getStatusCode()).append("]").toString());
        return false;
    }

    public String GetURIForStat(Context context, String s, String as[])
    {
        String s1;
        for (s1 = QuestionData.ReadKeyData("client_info", context); s1 == null || s1.isEmpty() || mUserName == null || mPassword == null;)
        {
            return null;
        }

        String s2 = NativeManager.decryptPasswordStatic(mPassword, context);
        if (s2 == null)
        {
            WazeAppWidgetLog.w((new StringBuilder("login aborted  / password extraction failed [")).append(mUserName).append("]").toString());
            return null;
        } else
        {
            String s3 = (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s1))).append("\n").toString()))).append("Authenticate,").append(getProtocol()).append(",").append(mUserName).append(",").append(s2).append("\n").toString();
            StatsData statsdata = new StatsData(context, s, as);
            return (new StringBuilder(String.valueOf((new StringBuilder(String.valueOf(s3))).append(statsdata.buildCmd()).append("\n").toString()))).append("Logout\n").toString();
        }
    }

    public void SendAdsStat(Context context, String s)
    {
        String s1;
        if (mIsSecuredConnection)
        {
            s1 = mSecuredServerUrl;
        } else
        {
            s1 = mServerUrl;
        }
        if (s1 == null || s1.length() <= 0)
        {
            Log.e("OfflineStats", "server url is null");
            return;
        }
        String s2 = WazePreferences.getProperty("Offline Ads.Params");
        if (s2 == null || s2.isEmpty())
        {
            Log.e("OfflineStats", " Ads build params failed");
            return;
        }
        String as[] = {
            s2
        };
        String s3 = getInstance().GetURIForStat(context, s, as);
        if (s3 == null)
        {
            Log.e("OfflineStats", " Ads build command failed");
            return;
        } else
        {
            Log.e("OfflineStats", (new StringBuilder(" Sending offline event: ")).append(s).append(" full build command : ").append(s3).toString());
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            (new Thread() {

                final RealTimeManager this$0;
                private final HttpClient val$httpclient;
                private final HttpPost val$httppost;
                private final String val$sBuildCommand;

                public void run()
                {
                    HttpResponse httpresponse;
                    httppost.addHeader("Content-Type", "binary/octet-stream");
                    httppost.setEntity(new StringEntity(sBuildCommand));
                    httpresponse = httpclient.execute(httppost);
                    if (httpresponse.getStatusLine().getStatusCode() == 200)
                    {
                        return;
                    }
                    try
                    {
                        WazeAppWidgetLog.e((new StringBuilder("Authenticate failed [error =")).append(httpresponse.getStatusLine().getStatusCode()).append("]").toString());
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        WazeAppWidgetLog.e((new StringBuilder("Authenticate error [error=")).append(ioexception.getMessage()).append("]").toString());
                    }
                    return;
                }

            
            {
                this$0 = RealTimeManager.this;
                httppost = httppost1;
                sBuildCommand = s;
                httpclient = httpclient1;
                super();
            }
            }).start();
            return;
        }
    }

    public void SendStat(Context context, String s, String as[])
    {
        String s1;
        if (mIsSecuredConnection)
        {
            s1 = mSecuredServerUrl;
        } else
        {
            s1 = mServerUrl;
        }
        if (s1 == null || s1.length() <= 0)
        {
            Log.e("OfflineStats", "server url is null");
            return;
        }
        String s2 = getInstance().GetURIForStat(context, s, as);
        if (s2 == null)
        {
            Log.e("OfflineStats", "build command failed");
            return;
        } else
        {
            DefaultHttpClient defaulthttpclient = new DefaultHttpClient();
            (new Thread() {

                final RealTimeManager this$0;
                private final HttpClient val$httpclient;
                private final HttpPost val$httppost;
                private final String val$sBuildCommand;

                public void run()
                {
                    HttpResponse httpresponse;
                    httppost.addHeader("Content-Type", "binary/octet-stream");
                    httppost.setEntity(new StringEntity(sBuildCommand));
                    httpresponse = httpclient.execute(httppost);
                    if (httpresponse.getStatusLine().getStatusCode() == 200)
                    {
                        return;
                    }
                    try
                    {
                        WazeAppWidgetLog.e((new StringBuilder("Authenticate failed [error =")).append(httpresponse.getStatusLine().getStatusCode()).append("]").toString());
                        return;
                    }
                    catch (IOException ioexception)
                    {
                        WazeAppWidgetLog.e((new StringBuilder("Authenticate error [error=")).append(ioexception.getMessage()).append("]").toString());
                    }
                    return;
                }

            
            {
                this$0 = RealTimeManager.this;
                httppost = httppost1;
                sBuildCommand = s;
                httpclient = httpclient1;
                super();
            }
            }).start();
            return;
        }
    }

    public void authenticate()
    {
        AuthenticateRequest authenticaterequest;
        if (mUserName == null || mPassword == null)
        {
            WazeAppWidgetLog.w((new StringBuilder("login aborted [")).append(mUserName).append("]").toString());
            return;
        }
        String s = NativeManager.decryptPasswordStatic(mPassword, AppService.getAppContext());
        if (s == null)
        {
            WazeAppWidgetLog.w((new StringBuilder("login aborted  / password extraction failed [")).append(mUserName).append("]").toString());
            return;
        }
        if (mIsSecuredConnection && mSecuredServerUrl == null || !mIsSecuredConnection && mServerUrl == null)
        {
            WazeAppWidgetLog.w((new StringBuilder("login aborted [mIsSecuredConnection=")).append(mIsSecuredConnection).append(" mSecuredServerUrl=").append(mSecuredServerUrl).append(",mServerUrl=").append(mServerUrl).append("]").toString());
            return;
        }
        authenticaterequest = new AuthenticateRequest(mUserName, s);
        DefaultHttpClient defaulthttpclient;
        String s1;
        WazeAppWidgetLog.d("Sending Authenticate request");
        defaulthttpclient = new DefaultHttpClient();
        if (!mIsSecuredConnection)
        {
            break MISSING_BLOCK_LABEL_344;
        }
        s1 = mSecuredServerUrl;
_L1:
        IOException ioexception;
        HttpResponse httpresponse;
        HttpPost httppost = new HttpPost((new StringBuilder(String.valueOf(s1))).append("/distrib/static").toString());
        httppost.addHeader("Content-Type", "binary/octet-stream");
        httppost.setEntity(new StringEntity(authenticaterequest.buildCmd()));
        httpresponse = defaulthttpclient.execute(httppost);
        if (httpresponse.getStatusLine().getStatusCode() == 200)
        {
            mAuthenticationRsp = new AuthenticateSuccessfulResponse(EntityUtils.toString(httpresponse.getEntity()));
            return;
        }
        break MISSING_BLOCK_LABEL_353;
        try
        {
            s1 = mServerUrl;
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception)
        {
            WazeAppWidgetLog.e((new StringBuilder("Authenticate error [error=")).append(ioexception.getMessage()).append("]").toString());
            return;
        }
          goto _L1
        WazeAppWidgetLog.e((new StringBuilder("Authenticate failed [error =")).append(httpresponse.getStatusLine().getStatusCode()).append("]").toString());
        return;
    }

    public String getCookie()
    {
        if (mAuthenticationRsp == null)
        {
            return null;
        } else
        {
            return mAuthenticationRsp.getCookie();
        }
    }

    public String getPassword()
    {
        return mPassword;
    }

    public String getSessionId()
    {
        if (mAuthenticationRsp == null)
        {
            return null;
        } else
        {
            return mAuthenticationRsp.getSessionId();
        }
    }

    public String getUserName()
    {
        return mUserName;
    }

    public Boolean hasUserName()
    {
        if (getUserName() == null || getPassword() == null)
        {
            return Boolean.valueOf(false);
        } else
        {
            return Boolean.valueOf(true);
        }
    }

}
