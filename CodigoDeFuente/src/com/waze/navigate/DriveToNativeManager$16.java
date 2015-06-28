// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private String priceFormat;
    final DriveToNativeManager this$0;
    private final ceFormatListener val$listener;
    private final String val$prodId;

    public void callback()
    {
        val$listener.onComplete(priceFormat);
    }

    public void event()
    {
        priceFormat = DriveToNativeManager.access$15(DriveToNativeManager.this, val$prodId);
    }

    ceFormatListener()
    {
        this$0 = final_drivetonativemanager;
        val$prodId = s;
        val$listener = ceFormatListener.this;
        super();
    }
}
