// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze:
//            NativeManager, MainActivity, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        ActivityBase.closeAllActivities();
        MainActivity.bToOpenPasswordRecovery = true;
        if (MyWazeNativeManager.getInstance().isRandomUserNTV())
        {
            Intent intent = new Intent(AppService.getMainActivity(), com/waze/phone/PhoneNumberSignInActivity);
            intent.putExtra("back", 1);
            intent.putExtra("type", 1);
            intent.putExtra("fon_shon_rea_son", "FEATURE");
            AppService.getMainActivity().startActivityForResult(intent, 5000);
            return;
        } else
        {
            AppService.getMainActivity().openPasswordRecovery();
            return;
        }
    }

    SignInActivity()
    {
        this$0 = NativeManager.this;
        super();
    }
}
