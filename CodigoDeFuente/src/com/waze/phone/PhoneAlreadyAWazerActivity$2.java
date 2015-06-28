// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.MainActivity;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneAlreadyAWazerActivity

class this._cls0
    implements android.view._cls2
{

    final PhoneAlreadyAWazerActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("CREATE_NEW_ACCOUNT", null, null, true);
        PhoneAlreadyAWazerActivity.access$1(PhoneAlreadyAWazerActivity.this, false);
        MainActivity.bToOpenAccountPopup = true;
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = PhoneAlreadyAWazerActivity.this;
        super();
    }
}
