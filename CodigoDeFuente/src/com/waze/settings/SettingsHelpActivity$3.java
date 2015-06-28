// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;
import com.waze.ConfigItem;
import com.waze.ifs.ui.VideoActivity;

// Referenced classes of package com.waze.settings:
//            SettingsHelpActivity

class this._cls0
    implements android.view.ty._cls3
{

    final SettingsHelpActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(SettingsHelpActivity.this, com/waze/ifs/ui/VideoActivity);
        intent.putExtra("url", editVideoUrl.getValue());
        startActivity(intent);
    }

    ()
    {
        this$0 = SettingsHelpActivity.this;
        super();
    }
}
