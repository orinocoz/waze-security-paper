// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;


// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager

class val.comment
    implements Runnable
{

    final RTAlertsNativeManager this$0;
    private final int val$alertId;
    private final String val$comment;

    public void run()
    {
        RTAlertsNativeManager.access$8(RTAlertsNativeManager.this, val$alertId, val$comment);
    }

    ()
    {
        this$0 = final_rtalertsnativemanager;
        val$alertId = i;
        val$comment = String.this;
        super();
    }
}
