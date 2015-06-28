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
        Log.d("WAZE", (new StringBuilder("erase ai callback running in thread ")).append(Thread.currentThread().getId()).toString());
    }

    public void event()
    {
        Log.d("WAZE", (new StringBuilder("erase ai event running in thread ")).append(Thread.currentThread().getId()).toString());
        Log.d("WAZE", (new StringBuilder("ai= ")).append(val$ai).toString());
        DriveToNativeManager.access$31(DriveToNativeManager.this, val$ai.getId(), val$ai.getCategory().intValue(), val$ai.getTitle());
        Log.d("WAZE", (new StringBuilder("erase eraseAddressItemNTV in thread ")).append(Thread.currentThread().getId()).toString());
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$ai = AddressItem.this;
        super();
    }
}
