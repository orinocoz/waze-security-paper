// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.apps.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.util.Log;
import java.util.HashMap;

// Referenced classes of package com.google.android.apps.analytics:
//            PersistentEventStore

public class AnalyticsReceiver extends BroadcastReceiver
{

    private static final String INSTALL_ACTION = "com.android.vending.INSTALL_REFERRER";

    public AnalyticsReceiver()
    {
    }

    static String formatReferrer(String s)
    {
        String as[] = s.split("&");
        HashMap hashmap = new HashMap();
        int i = as.length;
        int j = 0;
label0:
        do
        {
label1:
            {
                String as9[];
                if (j < i)
                {
                    as9 = as[j].split("=");
                    if (as9.length == 2)
                    {
                        break label1;
                    }
                }
                boolean flag;
                boolean flag1;
                boolean flag2;
                if (hashmap.get("utm_campaign") != null)
                {
                    flag = true;
                } else
                {
                    flag = false;
                }
                if (hashmap.get("utm_medium") != null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
                if (hashmap.get("utm_source") != null)
                {
                    flag2 = true;
                } else
                {
                    flag2 = false;
                }
                if (!flag || !flag1 || !flag2)
                {
                    Log.w("GoogleAnalyticsTracker", "Badly formatted referrer missing campaign, name or source");
                    return null;
                }
                break label0;
            }
            hashmap.put(as9[0], as9[1]);
            j++;
        } while (true);
        String as1[][] = new String[7][];
        String as2[] = new String[2];
        as2[0] = "utmcid";
        as2[1] = (String)hashmap.get("utm_id");
        as1[0] = as2;
        String as3[] = new String[2];
        as3[0] = "utmcsr";
        as3[1] = (String)hashmap.get("utm_source");
        as1[1] = as3;
        String as4[] = new String[2];
        as4[0] = "utmgclid";
        as4[1] = (String)hashmap.get("gclid");
        as1[2] = as4;
        String as5[] = new String[2];
        as5[0] = "utmccn";
        as5[1] = (String)hashmap.get("utm_campaign");
        as1[3] = as5;
        String as6[] = new String[2];
        as6[0] = "utmcmd";
        as6[1] = (String)hashmap.get("utm_medium");
        as1[4] = as6;
        String as7[] = new String[2];
        as7[0] = "utmctr";
        as7[1] = (String)hashmap.get("utm_term");
        as1[5] = as7;
        String as8[] = new String[2];
        as8[0] = "utmcct";
        as8[1] = (String)hashmap.get("utm_content");
        as1[6] = as8;
        StringBuilder stringbuilder = new StringBuilder();
        int k = 0;
        boolean flag3 = true;
        while (k < as1.length) 
        {
            if (as1[k][1] != null)
            {
                String s1 = as1[k][1].replace("+", "%20").replace(" ", "%20");
                if (flag3)
                {
                    flag3 = false;
                } else
                {
                    stringbuilder.append("|");
                }
                stringbuilder.append(as1[k][0]).append("=").append(s1);
            }
            k++;
        }
        return stringbuilder.toString();
    }

    public void onReceive(Context context, Intent intent)
    {
        String s = intent.getStringExtra("referrer");
        if (!"com.android.vending.INSTALL_REFERRER".equals(intent.getAction()) || s == null)
        {
            return;
        }
        String s1 = formatReferrer(s);
        if (s1 != null)
        {
            (new PersistentEventStore(new PersistentEventStore.DataBaseHelper(context))).setReferrer(s1);
            Log.d("GoogleAnalyticsTracker", (new StringBuilder()).append("Stored referrer:").append(s1).toString());
            return;
        } else
        {
            Log.w("GoogleAnalyticsTracker", "Badly formatted referrer, ignored");
            return;
        }
    }
}
