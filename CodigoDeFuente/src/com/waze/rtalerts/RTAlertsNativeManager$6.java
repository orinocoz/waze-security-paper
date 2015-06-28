// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, MapProblem

class t> extends RunnableUICallback
{

    MapProblem problems[];
    final RTAlertsNativeManager this$0;
    private final pProblemsListener val$listener;

    public void callback()
    {
        val$listener.onComplete(problems);
    }

    public void event()
    {
        problems = RTAlertsNativeManager.access$5(RTAlertsNativeManager.this);
    }

    pProblemsListener()
    {
        this$0 = final_rtalertsnativemanager;
        val$listener = pProblemsListener.this;
        super();
    }
}
