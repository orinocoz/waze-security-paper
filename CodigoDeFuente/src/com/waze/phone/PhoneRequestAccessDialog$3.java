// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.phone:
//            PhoneRequestAccessDialog, AddressBook

class this._cls0
    implements android.view._cls3
{

    final PhoneRequestAccessDialog this$0;

    public void onClick(View view)
    {
        Analytics.log("ALLOW_CONTACTS_ACCESS_CONTINUE_CLICK", null, null);
        if (!AddressBook.AccountExist())
        {
            AddressBook.CreateAccount();
        }
        NativeManager.getInstance().setContactsAccess(true);
        mbOkClicked = true;
        dismiss();
    }

    ()
    {
        this$0 = PhoneRequestAccessDialog.this;
        super();
    }
}
