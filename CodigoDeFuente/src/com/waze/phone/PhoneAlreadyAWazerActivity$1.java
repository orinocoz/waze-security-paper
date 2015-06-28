// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneAlreadyAWazerActivity

class this._cls0
    implements android.view._cls1
{

    final PhoneAlreadyAWazerActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("VERIFY_MY_ACCOUNT", null, null, true);
        PhoneAlreadyAWazerActivity.access$0(PhoneAlreadyAWazerActivity.this).OpenProgressPopup(PhoneAlreadyAWazerActivity.access$0(PhoneAlreadyAWazerActivity.this).getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        PhoneAlreadyAWazerActivity.access$0(PhoneAlreadyAWazerActivity.this).AuthContacts();
        PhoneAlreadyAWazerActivity.access$1(PhoneAlreadyAWazerActivity.this, true);
    }

    ()
    {
        this$0 = PhoneAlreadyAWazerActivity.this;
        super();
    }
}
