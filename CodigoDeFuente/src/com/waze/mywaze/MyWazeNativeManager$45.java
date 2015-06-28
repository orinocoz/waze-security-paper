// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import android.content.Intent;
import com.waze.AppService;
import com.waze.ifs.ui.ActivityBase;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class this._cls0
    implements Runnable
{

    final MyWazeNativeManager this$0;

    public void run()
    {
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 1);
        intent.putExtra("back", 1);
        intent.putExtra("fon_shon_rea_son", "FEATURE");
        AppService.getActiveActivity().startActivity(intent);
    }

    y()
    {
        this$0 = MyWazeNativeManager.this;
        super();
    }
}
