// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;

import com.waze.AppService;

// Referenced classes of package com.waze.ifs.async:
//            RunnableCallback

public abstract class RunnableUICallback extends RunnableCallback
{

    public RunnableUICallback()
    {
        super(AppService.getInstance());
    }
}
