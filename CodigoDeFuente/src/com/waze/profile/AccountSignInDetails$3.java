// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.AppService;

// Referenced classes of package com.waze.profile:
//            AccountSignInDetails, ImageTaker

class this._cls0
    implements android.view.s._cls3
{

    final AccountSignInDetails this$0;

    public void onClick(View view)
    {
        AccountSignInDetails.access$1(AccountSignInDetails.this, new ImageTaker(AppService.getMainActivity(), "ProfileImage"));
        AccountSignInDetails.access$2(AccountSignInDetails.this).sendIntent();
    }

    ()
    {
        this$0 = AccountSignInDetails.this;
        super();
    }
}
