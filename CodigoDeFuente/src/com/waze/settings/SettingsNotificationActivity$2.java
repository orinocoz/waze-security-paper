// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.widget.CompoundButton;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.settings:
//            SettingsNotificationActivity

class this._cls0
    implements android.widget.istener
{

    final SettingsNotificationActivity this$0;

    public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
    {
        if (flag)
        {
            Analytics.log("PUSH_PLACES", "VAUE", "ON");
            return;
        } else
        {
            Analytics.log("PUSH_PLACES", "VAUE", "OFF");
            return;
        }
    }

    ener()
    {
        this$0 = SettingsNotificationActivity.this;
        super();
    }
}
