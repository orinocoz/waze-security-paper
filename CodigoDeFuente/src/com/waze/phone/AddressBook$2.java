// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.accounts.AccountManagerCallback;
import android.accounts.AccountManagerFuture;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            AddressBook

class erFuture
    implements AccountManagerCallback
{

    public void run(AccountManagerFuture accountmanagerfuture)
    {
        NativeManager.getInstance().DeleteContactsFromDataBase();
        if (NativeManager.getInstance().getInitializedStatus())
        {
            AddressBook.CreateAccount();
            return;
        } else
        {
            NativeManager.bToCreateAcc = true;
            return;
        }
    }

    erFuture()
    {
    }
}
