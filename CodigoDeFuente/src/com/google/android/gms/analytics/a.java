// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.analytics;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Locale;

// Referenced classes of package com.google.android.gms.analytics:
//            m, ak, aa, h

class a
    implements m
{

    private static Object tn = new Object();
    private static a to;
    private Context mContext;
    private com.google.android.gms.ads.identifier.AdvertisingIdClient.Info tp;
    private long tq;
    private String tr;
    private boolean ts;
    private Object tt;

    a(Context context)
    {
        ts = false;
        tt = new Object();
        mContext = context.getApplicationContext();
    }

    static String H(String s)
    {
        MessageDigest messagedigest = ak.W("MD5");
        if (messagedigest == null)
        {
            return null;
        } else
        {
            Locale locale = Locale.US;
            Object aobj[] = new Object[1];
            aobj[0] = new BigInteger(1, messagedigest.digest(s.getBytes()));
            return String.format(locale, "%032X", aobj);
        }
    }

    private boolean I(String s)
    {
        try
        {
            String s1 = H(s);
            aa.C("Storing hashed adid.");
            FileOutputStream fileoutputstream = mContext.openFileOutput("gaClientIdData", 0);
            fileoutputstream.write(s1.getBytes());
            fileoutputstream.close();
            tr = s1;
        }
        catch (FileNotFoundException filenotfoundexception)
        {
            aa.A("Error creating hash file.");
            return false;
        }
        catch (IOException ioexception)
        {
            aa.A("Error writing to hash file.");
            return false;
        }
        return true;
    }

    private boolean a(com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info, com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info1)
    {
        Object obj;
        h h1;
        String s;
        if (info1 == null)
        {
            obj = null;
        } else
        {
            obj = info1.getId();
        }
        if (TextUtils.isEmpty(((CharSequence) (obj))))
        {
            return true;
        }
        h.r(mContext);
        h1 = h.cq();
        s = h1.getValue("&cid");
        Object obj1 = tt;
        obj1;
        JVM INSTR monitorenter ;
        if (ts) goto _L2; else goto _L1
_L1:
        tr = q(mContext);
        ts = true;
_L4:
        String s2;
        s2 = H((new StringBuilder()).append(((String) (obj))).append(s).toString());
        if (!TextUtils.isEmpty(s2))
        {
            break MISSING_BLOCK_LABEL_213;
        }
        return false;
        Exception exception;
        exception;
        obj1;
        JVM INSTR monitorexit ;
        throw exception;
_L2:
        if (!TextUtils.isEmpty(tr)) goto _L4; else goto _L3
_L3:
        String s1;
        s1 = null;
        if (info != null)
        {
            break MISSING_BLOCK_LABEL_174;
        }
_L5:
        if (s1 != null)
        {
            break MISSING_BLOCK_LABEL_183;
        }
        boolean flag = I((new StringBuilder()).append(((String) (obj))).append(s).toString());
        obj1;
        JVM INSTR monitorexit ;
        return flag;
        s1 = info.getId();
          goto _L5
        tr = H((new StringBuilder()).append(s1).append(s).toString());
          goto _L4
        if (!s2.equals(tr))
        {
            break MISSING_BLOCK_LABEL_230;
        }
        obj1;
        JVM INSTR monitorexit ;
        return true;
        String s3;
        if (TextUtils.isEmpty(tr))
        {
            break MISSING_BLOCK_LABEL_306;
        }
        aa.C("Resetting the client id because Advertising Id changed.");
        s3 = h1.cr();
        aa.C((new StringBuilder()).append("New client Id: ").append(s3).toString());
_L6:
        boolean flag1 = I((new StringBuilder()).append(((String) (obj))).append(s3).toString());
        obj1;
        JVM INSTR monitorexit ;
        return flag1;
        s3 = s;
          goto _L6
    }

    public static m p(Context context)
    {
        if (to == null)
        {
            synchronized (tn)
            {
                if (to == null)
                {
                    to = new a(context);
                }
            }
        }
        return to;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    static String q(Context context)
    {
        String s = null;
        FileInputStream fileinputstream;
        byte abyte0[];
        int i;
        fileinputstream = context.openFileInput("gaClientIdData");
        abyte0 = new byte[128];
        i = fileinputstream.read(abyte0, 0, 128);
        if (fileinputstream.available() <= 0)
        {
            break MISSING_BLOCK_LABEL_57;
        }
        aa.D("Hash file seems corrupted, deleting it.");
        fileinputstream.close();
        context.deleteFile("gaClientIdData");
        return null;
        if (i > 0)
        {
            break MISSING_BLOCK_LABEL_74;
        }
        aa.B("Hash file is empty.");
        fileinputstream.close();
        return null;
        String s1 = new String(abyte0, 0, i);
        fileinputstream.close();
        return s1;
        IOException ioexception;
        ioexception;
_L2:
        aa.D("Error reading Hash file, deleting it.");
        context.deleteFile("gaClientIdData");
        return s;
        IOException ioexception1;
        ioexception1;
        s = s1;
        if (true) goto _L2; else goto _L1
_L1:
        FileNotFoundException filenotfoundexception1;
        filenotfoundexception1;
        return s1;
        FileNotFoundException filenotfoundexception;
        filenotfoundexception;
        return null;
    }

    com.google.android.gms.ads.identifier.AdvertisingIdClient.Info cf()
    {
        com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info;
        try
        {
            info = AdvertisingIdClient.getAdvertisingIdInfo(mContext);
        }
        catch (IllegalStateException illegalstateexception)
        {
            aa.D("IllegalStateException getting Ad Id Info. If you would like to see Audience reports, please ensure that you have added '<meta-data android:name=\"com.google.android.gms.version\" android:value=\"@integer/google_play_services_version\" />' to your application manifest file. See http://goo.gl/naFqQk for details.");
            return null;
        }
        catch (GooglePlayServicesRepairableException googleplayservicesrepairableexception)
        {
            aa.D("GooglePlayServicesRepairableException getting Ad Id Info");
            return null;
        }
        catch (IOException ioexception)
        {
            aa.D("IOException getting Ad Id Info");
            return null;
        }
        catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
        {
            aa.D("GooglePlayServicesNotAvailableException getting Ad Id Info");
            return null;
        }
        catch (Exception exception)
        {
            aa.D("Unknown exception. Could not get the ad Id.");
            return null;
        }
        return info;
    }

    public String getValue(String s)
    {
        long l = System.currentTimeMillis();
        if (l - tq > 1000L)
        {
            com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = cf();
            if (a(tp, info))
            {
                tp = info;
            } else
            {
                tp = new com.google.android.gms.ads.identifier.AdvertisingIdClient.Info("", false);
            }
            tq = l;
        }
        if (tp != null)
        {
            if ("&adid".equals(s))
            {
                return tp.getId();
            }
            if ("&ate".equals(s))
            {
                if (tp.isLimitAdTrackingEnabled())
                {
                    return "0";
                } else
                {
                    return "1";
                }
            }
        }
        return null;
    }

}
