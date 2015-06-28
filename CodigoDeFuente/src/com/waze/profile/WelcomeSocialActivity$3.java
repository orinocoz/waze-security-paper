// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.profile:
//            WelcomeSocialActivity, TwitterConnectActivity

class this._cls0
    implements android.view.y._cls3
{

    final WelcomeSocialActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(WelcomeSocialActivity.this, com/waze/profile/TwitterConnectActivity);
        startActivityForResult(intent, 0);
    }

    ()
    {
        this$0 = WelcomeSocialActivity.this;
        super();
    }
}
