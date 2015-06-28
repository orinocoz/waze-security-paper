// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.os.Bundle;
import android.os.Handler;

// Referenced classes of package com.waze.phone:
//            AddressBook

class ver extends ContentObserver
{

    public void onChange(boolean flag)
    {
        super.onChange(flag);
        if (ContentResolver.getSyncAutomatically(AddressBook.access$0(), "com.android.contacts"))
        {
            Bundle bundle = new Bundle();
            bundle.putBoolean("expedited", true);
            bundle.putBoolean("force", true);
            bundle.putBoolean("force", true);
            ContentResolver.requestSync(AddressBook.access$0(), "com.android.contacts", bundle);
        }
    }

    er(Handler handler)
    {
        super(handler);
    }
}
