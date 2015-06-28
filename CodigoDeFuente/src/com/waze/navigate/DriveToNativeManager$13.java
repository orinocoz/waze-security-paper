// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, Product

class t> extends RunnableUICallback
{

    private Product product;
    final DriveToNativeManager this$0;
    private final int val$index;
    private final ductListener val$listener;

    public void callback()
    {
        val$listener.onComplete(product);
    }

    public void event()
    {
        try
        {
            product = DriveToNativeManager.access$12(DriveToNativeManager.this, val$index);
            return;
        }
        catch (Exception exception)
        {
            product = null;
        }
    }

    ductListener()
    {
        this$0 = final_drivetonativemanager;
        val$index = i;
        val$listener = ductListener.this;
        super();
    }
}
