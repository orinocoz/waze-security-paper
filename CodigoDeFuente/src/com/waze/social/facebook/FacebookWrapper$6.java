// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social.facebook;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.async.RunnableUICallback;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.social.facebook:
//            FacebookWrapper

class val.fbPermRequest extends RunnableExecutor
{

    final FacebookWrapper this$0;
    private final RunnableUICallback val$fbPermRequest;

    public void event()
    {
        val$fbPermRequest.run();
    }

    (RunnableUICallback runnableuicallback)
    {
        this$0 = final_facebookwrapper;
        val$fbPermRequest = runnableuicallback;
        super(Executor.this);
    }
}
