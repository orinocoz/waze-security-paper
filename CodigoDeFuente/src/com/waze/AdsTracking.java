// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.AsyncTask;
import com.google.android.gms.ads.identifier.AdvertisingIdClient;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.io.IOException;

// Referenced classes of package com.waze:
//            AppService, NativeManager

public class AdsTracking
{
    public static class AdsData
    {

        public boolean bIsTrackingAllowed;
        public String token;

        public AdsData(String s, boolean flag)
        {
            token = s;
            bIsTrackingAllowed = flag;
        }
    }


    public AdsTracking()
    {
    }

    public static void getAdsTrackingData()
    {
        (new AsyncTask() {

            protected transient AdsData doInBackground(Void avoid[])
            {
                com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info1 = AdvertisingIdClient.getAdvertisingIdInfo(AppService.getAppContext());
                com.google.android.gms.ads.identifier.AdvertisingIdClient.Info info = info1;
_L2:
                AdsData adsdata = null;
                if (info != null)
                {
                    String s = info.getId();
                    boolean flag;
                    if (info.isLimitAdTrackingEnabled())
                    {
                        flag = false;
                    } else
                    {
                        flag = true;
                    }
                    adsdata = new AdsData(s, flag);
                }
                return adsdata;
                GooglePlayServicesRepairableException googleplayservicesrepairableexception;
                googleplayservicesrepairableexception;
                info = null;
                continue; /* Loop/switch isn't completed */
                IllegalStateException illegalstateexception;
                illegalstateexception;
                info = null;
                continue; /* Loop/switch isn't completed */
                GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception;
                googleplayservicesnotavailableexception;
                info = null;
                continue; /* Loop/switch isn't completed */
                IOException ioexception;
                ioexception;
                info = null;
                if (true) goto _L2; else goto _L1
_L1:
            }

            protected volatile transient Object doInBackground(Object aobj[])
            {
                return doInBackground((Void[])aobj);
            }

            protected void onPostExecute(AdsData adsdata)
            {
                if (adsdata != null)
                {
                    NativeManager.getInstance().mAdsData = adsdata;
                }
            }

            protected volatile void onPostExecute(Object obj)
            {
                onPostExecute((AdsData)obj);
            }

        }).execute(new Void[0]);
    }
}
