// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.NativeManager;
import com.waze.phone.AddressBook;

// Referenced classes of package com.waze.profile:
//            TempUserProfileActivity

class this._cls0
    implements android.view.y._cls4
{

    final TempUserProfileActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().DeleteAccount();
        AddressBook.DeleteAccount();
    }

    ()
    {
        this$0 = TempUserProfileActivity.this;
        super();
    }
}
