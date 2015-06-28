// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.SettingsAdvancedActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/settings/SettingsAdvancedActivity);
        AppService.getActiveActivity().startActivityForResult(intent, 0);
    }

    e()
    {
        this$0 = NativeManager.this;
        super();
    }
}
