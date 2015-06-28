// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.reports:
//            ClosureMap

class cutor extends RunnableExecutor
{

    final ClosureMap this$0;

    public void event()
    {
        ClosureMap.access$0(ClosureMap.this).setRoadClosureMap();
        if (ClosureMap.access$1())
        {
            ClosureMap.access$2(ClosureMap.this).StartClosureObject(false, 0, ClosureMap.access$1());
            return;
        } else
        {
            ClosureMap.access$2(ClosureMap.this).StartClosureObject(false, -1, ClosureMap.access$1());
            return;
        }
    }

    eManager()
    {
        this$0 = ClosureMap.this;
        super();
    }
}
