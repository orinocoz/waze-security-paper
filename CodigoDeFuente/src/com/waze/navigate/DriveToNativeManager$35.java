// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private ressItemAppData data;
    final DriveToNativeManager this$0;
    private final String val$id;
    private final ectListener val$l;

    public void callback()
    {
        val$l.onComplete(data);
    }

    public void event()
    {
        try
        {
            data = DriveToNativeManager.access$32(DriveToNativeManager.this, val$id);
            return;
        }
        catch (Exception exception)
        {
            data = null;
        }
    }

    ectListener()
    {
        this$0 = final_drivetonativemanager;
        val$id = s;
        val$l = ectListener.this;
        super();
    }
}
