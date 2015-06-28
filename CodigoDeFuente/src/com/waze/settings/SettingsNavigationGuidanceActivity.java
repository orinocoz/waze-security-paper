// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import com.waze.voice.VoiceData;

// Referenced classes of package com.waze.settings:
//            SettingValueAdapterTwoLines, SettingsNativeManager

public class SettingsNavigationGuidanceActivity extends ActivityBase
{

    private VoiceData languages[];

    public SettingsNavigationGuidanceActivity()
    {
        languages = null;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_SOUND);
        final SettingValueAdapterTwoLines adapter = new SettingValueAdapterTwoLines(this);
        final SettingsNativeManager nativeManager = new SettingsNativeManager();
        final ListView list = (ListView)findViewById(0x7f090674);
        nativeManager.getVoices(new SettingsNativeManager.SettingsVoiceDataValuesListener() {

            final SettingsNavigationGuidanceActivity this$0;
            private final SettingValueAdapterTwoLines val$adapter;
            private final ListView val$list;

            public void onComplete(VoiceData avoicedata[])
            {
                languages = avoicedata;
                adapter.setValues(avoicedata);
                list.invalidateViews();
            }

            
            {
                this$0 = SettingsNavigationGuidanceActivity.this;
                adapter = settingvalueadaptertwolines;
                list = listview;
                super();
            }
        });
        list.setAdapter(adapter);
        list.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SettingsNavigationGuidanceActivity this$0;
            private final SettingsNativeManager val$nativeManager;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (languages == null)
                {
                    return;
                } else
                {
                    nativeManager.setVoice(i);
                    setResult(-1);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = SettingsNavigationGuidanceActivity.this;
                nativeManager = settingsnativemanager;
                super();
            }
        });
    }


}
