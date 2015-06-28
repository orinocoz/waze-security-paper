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

// Referenced classes of package com.waze.settings:
//            SettingValueAdapter, SettingsNativeManager, SettingsValue

public class SettingsLanguageActivity extends ActivityBase
{

    private SettingsValue languages[];

    public SettingsLanguageActivity()
    {
        languages = null;
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300fa);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_LANGUAGE);
        final SettingValueAdapter adapter = new SettingValueAdapter(this);
        final SettingsNativeManager nativeManager = new SettingsNativeManager();
        final ListView list = (ListView)findViewById(0x7f090674);
        nativeManager.getLanguages(new SettingsNativeManager.SettingsValuesListener() {

            final SettingsLanguageActivity this$0;
            private final SettingValueAdapter val$adapter;
            private final ListView val$list;

            public void onComplete(SettingsValue asettingsvalue[])
            {
                languages = asettingsvalue;
                adapter.setValues(asettingsvalue);
                list.invalidateViews();
            }

            
            {
                this$0 = SettingsLanguageActivity.this;
                adapter = settingvalueadapter;
                list = listview;
                super();
            }
        });
        list.setAdapter(adapter);
        list.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final SettingsLanguageActivity this$0;
            private final SettingsNativeManager val$nativeManager;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                if (languages == null)
                {
                    return;
                } else
                {
                    nativeManager.setLanguage(languages[i].value);
                    setResult(-1);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = SettingsLanguageActivity.this;
                nativeManager = settingsnativemanager;
                super();
            }
        });
    }


}
