// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import android.view.View;
import com.waze.settings.SettingsMainActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeActivity

class this._cls0
    implements android.view.ner
{

    final MyWazeActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(MyWazeActivity.this, com/waze/settings/SettingsMainActivity);
        startActivityForResult(intent, 0);
    }

    ivity()
    {
        this$0 = MyWazeActivity.this;
        super();
    }
}
