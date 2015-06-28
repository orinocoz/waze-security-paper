// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.ListView;

// Referenced classes of package com.waze.settings:
//            SettingsLanguageActivity, SettingValueAdapter, SettingsValue

class val.list
    implements ngsValuesListener
{

    final SettingsLanguageActivity this$0;
    private final SettingValueAdapter val$adapter;
    private final ListView val$list;

    public void onComplete(SettingsValue asettingsvalue[])
    {
        SettingsLanguageActivity.access$0(SettingsLanguageActivity.this, asettingsvalue);
        val$adapter.setValues(asettingsvalue);
        val$list.invalidateViews();
    }

    ngsValuesListener()
    {
        this$0 = final_settingslanguageactivity;
        val$adapter = settingvalueadapter;
        val$list = ListView.this;
        super();
    }
}
