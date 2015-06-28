// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.settings:
//            SettingsGeneralActivity, SettingsLanguageActivity

class this._cls0
    implements android.view.ty._cls2
{

    final SettingsGeneralActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(SettingsGeneralActivity.this, com/waze/settings/SettingsLanguageActivity);
        startActivityForResult(intent, 0);
    }

    ()
    {
        this$0 = SettingsGeneralActivity.this;
        super();
    }
}
