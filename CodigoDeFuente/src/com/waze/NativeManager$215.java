// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class val.Token
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Token;

    public void run()
    {
        NativeManager.mInviteId = val$Token;
        Intent intent = new Intent(AppService.getMainActivity(), com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 1);
        intent.putExtra("back", 1);
        intent.putExtra("fon_shon_rea_son", "FEATURE");
        AppService.getMainActivity().startActivityForResult(intent, 0);
    }

    ignInActivity()
    {
        this$0 = final_nativemanager;
        val$Token = String.this;
        super();
    }
}
