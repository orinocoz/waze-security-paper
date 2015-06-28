// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.ResManager;
import com.waze.navigate.NearbyStation;
import com.waze.settings.SettingValueAdapter;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.reports:
//            NearbyGasStationsActivity

class val.adapter
    implements com.waze.navigate.tationsListener
{

    final NearbyGasStationsActivity this$0;
    private final SettingValueAdapter val$adapter;

    public void onComplete(NearbyStation anearbystation[])
    {
        nearbyStations = anearbystation;
        SettingsValue asettingsvalue[] = new SettingsValue[nearbyStations.length];
        int i = 0;
        do
        {
            if (i >= nearbyStations.length)
            {
                val$adapter.setValues(asettingsvalue);
                return;
            }
            asettingsvalue[i] = new SettingsValue(nearbyStations[i].result, (new StringBuilder(String.valueOf(nearbyStations[i].result))).append("\n").append(nearbyStations[i].address).toString(), false);
            asettingsvalue[i].icon = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(nearbyStations[i].icon))).append(".bin").toString());
            i++;
        } while (true);
    }

    StationsListener()
    {
        this$0 = final_nearbygasstationsactivity;
        val$adapter = SettingValueAdapter.this;
        super();
    }
}
