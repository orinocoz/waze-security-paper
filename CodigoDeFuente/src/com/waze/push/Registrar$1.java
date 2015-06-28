// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.push;

import android.app.Activity;
import com.waze.ifs.async.RunnableExecutor;

// Referenced classes of package com.waze.push:
//            Registrar

class eExecutor extends RunnableExecutor
{

    private final Activity val$context;

    public void event()
    {
        Registrar.access$0(Registrar.instance(), val$context);
        Registrar.access$1(Registrar.instance());
    }

    eExecutor(Activity activity1)
    {
        val$context = activity1;
        super(final_activity);
    }
}
