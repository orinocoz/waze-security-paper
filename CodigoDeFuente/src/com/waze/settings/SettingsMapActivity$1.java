// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.settings:
//            SettingsMapActivity, SettingsMapColorsActivity

class this._cls0
    implements android.view.ty._cls1
{

    final SettingsMapActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(SettingsMapActivity.this, com/waze/settings/SettingsMapColorsActivity);
        startActivityForResult(intent, 1000);
    }

    ity()
    {
        this$0 = SettingsMapActivity.this;
        super();
    }
}
