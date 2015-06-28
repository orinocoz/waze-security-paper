// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.routes.AlternativeRoute;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class t> extends RunnableUICallback
{

    private AlternativeRoute routes[];
    final DriveToNativeManager this$0;
    private final ernativeRoutesListener val$listener;

    public void callback()
    {
        val$listener.onComplete(routes);
    }

    public void event()
    {
        routes = DriveToNativeManager.access$50(DriveToNativeManager.this);
    }

    ernativeRoutesListener()
    {
        this$0 = final_drivetonativemanager;
        val$listener = ernativeRoutesListener.this;
        super();
    }
}
