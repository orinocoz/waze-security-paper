// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.profile.MyProfileActivity;

// Referenced classes of package com.waze.settings:
//            AccountAndLoginActivity

class this._cls0
    implements android.view.ty._cls2
{

    final AccountAndLoginActivity this$0;

    public void onClick(View view)
    {
        if (AccountAndLoginActivity.access$1(AccountAndLoginActivity.this).isRandomUserNTV())
        {
            Intent intent = new Intent(AccountAndLoginActivity.this, com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("type", 1);
            intent.putExtra("back", 1);
            intent.putExtra("fon_shon_rea_son", "SETTINGS");
            startActivityForResult(intent, 0);
            return;
        } else
        {
            Intent intent1 = new Intent(AccountAndLoginActivity.this, com/waze/profile/MyProfileActivity);
            startActivityForResult(intent1, 0);
            return;
        }
    }

    ()
    {
        this$0 = AccountAndLoginActivity.this;
        super();
    }
}
