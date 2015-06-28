// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ResManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.NearbyStation;
import com.waze.settings.SettingValueAdapter;
import com.waze.settings.SettingsValue;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

public class NearbyGasStationsActivity extends ActivityBase
{

    protected NearbyStation nearbyStations[];

    public NearbyGasStationsActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_NEARBY_STATIONS);
        final SettingValueAdapter adapter = new SettingValueAdapter(this);
        ListView listview = (ListView)findViewById(0x7f090674);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final NearbyGasStationsActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                Intent intent = new Intent(NearbyGasStationsActivity.this, com/waze/reports/UpdatePriceActivity);
                intent.putExtra("index", i);
                startActivityForResult(intent, 1);
            }

            
            {
                this$0 = NearbyGasStationsActivity.this;
                super();
            }
        });
        DriveToNativeManager.getInstance().getNearbyStations(new com.waze.navigate.DriveToNativeManager.NearbyStationsListener() {

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
                        adapter.setValues(asettingsvalue);
                        return;
                    }
                    asettingsvalue[i] = new SettingsValue(nearbyStations[i].result, (new StringBuilder(String.valueOf(nearbyStations[i].result))).append("\n").append(nearbyStations[i].address).toString(), false);
                    asettingsvalue[i].icon = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(nearbyStations[i].icon))).append(".bin").toString());
                    i++;
                } while (true);
            }

            
            {
                this$0 = NearbyGasStationsActivity.this;
                adapter = settingvalueadapter;
                super();
            }
        });
    }
}
