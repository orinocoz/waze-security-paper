// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.settings:
//            SettingsSoundActivity, SettingsNavigationGuidanceActivity

class this._cls0
    implements android.view.ty._cls1
{

    final SettingsSoundActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(SettingsSoundActivity.this, com/waze/settings/SettingsNavigationGuidanceActivity);
        startActivityForResult(intent, 0);
    }

    ceActivity()
    {
        this$0 = SettingsSoundActivity.this;
        super();
    }
}
