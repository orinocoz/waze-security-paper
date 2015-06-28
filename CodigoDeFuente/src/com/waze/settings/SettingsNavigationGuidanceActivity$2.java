// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.settings:
//            SettingsNavigationGuidanceActivity, SettingsNativeManager

class val.nativeManager
    implements android.widget.._cls2
{

    final SettingsNavigationGuidanceActivity this$0;
    private final SettingsNativeManager val$nativeManager;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (SettingsNavigationGuidanceActivity.access$1(SettingsNavigationGuidanceActivity.this) == null)
        {
            return;
        } else
        {
            val$nativeManager.setVoice(i);
            setResult(-1);
            finish();
            return;
        }
    }

    ()
    {
        this$0 = final_settingsnavigationguidanceactivity;
        val$nativeManager = SettingsNativeManager.this;
        super();
    }
}
