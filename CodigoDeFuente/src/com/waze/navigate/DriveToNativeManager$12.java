// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.main.navigate.Category;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private Category categories[];
    final DriveToNativeManager this$0;
    private final egoriesListener val$listener;

    public void callback()
    {
        val$listener.onComplete(categories);
    }

    public void event()
    {
        try
        {
            categories = DriveToNativeManager.access$11(DriveToNativeManager.this);
            return;
        }
        catch (Exception exception)
        {
            categories = null;
        }
    }

    egoriesListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = egoriesListener.this;
        super();
    }
}
