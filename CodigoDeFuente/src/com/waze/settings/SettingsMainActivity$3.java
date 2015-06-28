// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;
import com.waze.ConfigItem;
import com.waze.ifs.ui.VideoActivity;

// Referenced classes of package com.waze.settings:
//            SettingsMainActivity

class this._cls0
    implements android.view.ty._cls3
{

    final SettingsMainActivity this$0;

    public void onClick(View view)
    {
        if (editVideoUrl != null)
        {
            Intent intent = new Intent(SettingsMainActivity.this, com/waze/ifs/ui/VideoActivity);
            intent.putExtra("url", editVideoUrl.getValue());
            intent.putExtra("landscape", true);
            startActivity(intent);
        }
    }

    ()
    {
        this$0 = SettingsMainActivity.this;
        super();
    }
}
