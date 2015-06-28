// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AddressItem

class t> extends RunnableUICallback
{

    final DriveToNativeManager this$0;
    private final AddressItem val$ai;

    public void callback()
    {
        Log.d("WAZE", (new StringBuilder("store ai callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        DriveToNativeManager.access$28(DriveToNativeManager.this, val$ai);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$ai = AddressItem.this;
        super();
    }
}
