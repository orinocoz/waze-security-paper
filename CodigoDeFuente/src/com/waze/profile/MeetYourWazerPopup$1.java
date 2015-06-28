// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze.profile:
//            MeetYourWazerPopup

class this._cls0
    implements android.view.p._cls1
{

    final MeetYourWazerPopup this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("MINIMAL_ALREADY_WAZER_CLICKED", null, null, true);
        Intent intent = new Intent(MeetYourWazerPopup.access$0(MeetYourWazerPopup.this), com/waze/phone/PhoneNumberSignInActivity);
        intent.putExtra("type", 0);
        intent.putExtra("report_start", false);
        intent.putExtra("fon_shon_rea_son", "SIGNUP");
        AppService.getMainActivity().startActivityForResult(intent, 5000);
    }

    ty()
    {
        this$0 = MeetYourWazerPopup.this;
        super();
    }
}
