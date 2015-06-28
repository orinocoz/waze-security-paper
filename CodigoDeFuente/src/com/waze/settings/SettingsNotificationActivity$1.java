// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.util.Log;
import android.widget.CompoundButton;
import com.waze.push.Registrar;

// Referenced classes of package com.waze.settings:
//            SettingsNotificationActivity

class this._cls0
    implements android.widget.istener
{

    final SettingsNotificationActivity this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        Log.d("WAZE", (new StringBuilder("Notifications checked: ")).append(flag).toString());
        if (flag)
        {
            Registrar.instance().register();
            return;
        } else
        {
            Registrar.instance().unregister();
            return;
        }
    }

    ener()
    {
        this$0 = SettingsNotificationActivity.this;
        super();
    }
}
