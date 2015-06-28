// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.NativeManager;
import com.waze.phone.AddressBook;

// Referenced classes of package com.waze.profile:
//            MyProfileActivity

class this._cls0
    implements android.view.._cls13
{

    final MyProfileActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().LogOutAccount();
        AddressBook.DeleteAccount();
    }

    ()
    {
        this$0 = MyProfileActivity.this;
        super();
    }
}
