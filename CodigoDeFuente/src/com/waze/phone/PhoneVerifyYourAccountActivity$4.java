// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import android.widget.ScrollView;

// Referenced classes of package com.waze.phone:
//            PhoneVerifyYourAccountActivity

class val.root
    implements android.view.stener
{

    final PhoneVerifyYourAccountActivity this$0;
    private final View val$root;

    public void onGlobalLayout()
    {
        if (val$root.getRootView().getHeight() - val$root.getHeight() > 100)
        {
            PhoneVerifyYourAccountActivity.access$1(PhoneVerifyYourAccountActivity.this).scrollTo(0, PhoneVerifyYourAccountActivity.access$1(PhoneVerifyYourAccountActivity.this).getHeight());
        }
    }

    ener()
    {
        this$0 = final_phoneverifyyouraccountactivity;
        val$root = View.this;
        super();
    }
}
