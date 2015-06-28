// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;


// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class val.problemIndex
    implements Runnable
{

    final RTAlertsNativeManager this$0;
    private final String val$desc;
    private final int val$problemIndex;

    public void run()
    {
        RTAlertsNativeManager.access$9(RTAlertsNativeManager.this, val$desc, val$problemIndex);
    }

    ()
    {
        this$0 = final_rtalertsnativemanager;
        val$desc = s;
        val$problemIndex = I.this;
        super();
    }
}
