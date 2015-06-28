// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.ConfigManager;

// Referenced classes of package com.waze.settings:
//            SettingsMainActivity

class this._cls0
    implements android.view.ty._cls5
{

    final SettingsMainActivity this$0;

    public void onClick(View view)
    {
        ConfigManager.getInstance().sendLogsClick();
    }

    ()
    {
        this$0 = SettingsMainActivity.this;
        super();
    }
}
