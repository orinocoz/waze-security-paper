// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.profile:
//            WelcomeActivity, WelcomeDoneActivity

class this._cls0
    implements android.view.er
{

    final WelcomeActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("BABY_WAZER_NEXT", null, null, false);
        Intent intent = new Intent(WelcomeActivity.this, com/waze/profile/WelcomeDoneActivity);
        startActivityForResult(intent, 0);
        setResult(-1);
        finish();
    }

    y()
    {
        this$0 = WelcomeActivity.this;
        super();
    }
}
