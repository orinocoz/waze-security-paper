// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.settings:
//            SettingsLanguageActivity, SettingsValue, SettingsNativeManager

class val.nativeManager
    implements android.widget.ener
{

    final SettingsLanguageActivity this$0;
    private final SettingsNativeManager val$nativeManager;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        if (SettingsLanguageActivity.access$1(SettingsLanguageActivity.this) == null)
        {
            return;
        } else
        {
            val$nativeManager.setLanguage(SettingsLanguageActivity.access$1(SettingsLanguageActivity.this)[i].value);
            setResult(-1);
            finish();
            return;
        }
    }

    r()
    {
        this$0 = final_settingslanguageactivity;
        val$nativeManager = SettingsNativeManager.this;
        super();
    }
}
