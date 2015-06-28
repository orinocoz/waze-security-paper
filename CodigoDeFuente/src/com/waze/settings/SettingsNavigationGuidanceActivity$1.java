// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.ListView;
import com.waze.voice.VoiceData;

// Referenced classes of package com.waze.settings:
//            SettingsNavigationGuidanceActivity, SettingValueAdapterTwoLines

class val.list
    implements taValuesListener
{

    final SettingsNavigationGuidanceActivity this$0;
    private final SettingValueAdapterTwoLines val$adapter;
    private final ListView val$list;

    public void onComplete(VoiceData avoicedata[])
    {
        SettingsNavigationGuidanceActivity.access$0(SettingsNavigationGuidanceActivity.this, avoicedata);
        val$adapter.setValues(avoicedata);
        val$list.invalidateViews();
    }

    taValuesListener()
    {
        this$0 = final_settingsnavigationguidanceactivity;
        val$adapter = settingvalueadaptertwolines;
        val$list = ListView.this;
        super();
    }
}
