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
//            AdsTracking, AppService, NativeManager

class sData extends AsyncTask
{

    protected transient sData doInBackground(Void avoid[])
    {
        com.google.android.gms.ads.identifier.lient.Info info1 = AdvertisingIdClient.getAdvertisingIdInfo(AppService.getAppContext());
        com.google.android.gms.ads.identifier.lient.Info info = info1;
_L2:
        sData sdata = null;
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
            sdata = new sData(s, flag);
        }
        return sdata;
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

    protected void onPostExecute(sData sdata)
    {
        if (sdata != null)
        {
            NativeManager.getInstance().mAdsData = sdata;
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((sData)obj);
    }

    sData()
    {
    }
}
