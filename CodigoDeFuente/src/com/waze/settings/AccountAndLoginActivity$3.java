// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.settings:
//            AccountAndLoginActivity

class this._cls0
    implements android.view.ty._cls3
{

    final AccountAndLoginActivity this$0;

    public void onClick(View view)
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(AccountAndLoginActivity.this);
    }

    ()
    {
        this$0 = AccountAndLoginActivity.this;
        super();
    }
}
