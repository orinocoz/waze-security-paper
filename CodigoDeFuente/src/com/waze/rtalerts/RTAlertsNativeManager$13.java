// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;


// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsComments

class val.height
    implements Runnable
{

    final RTAlertsNativeManager this$0;
    private final int val$alertId;
    private final int val$commentId;
    private final int val$height;
    private final byte val$imageCopy[];
    private final int val$width;

    public void run()
    {
        RTAlertsComments.updateFbImage(val$alertId, val$commentId, val$imageCopy, val$width, val$height);
    }

    ()
    {
        this$0 = final_rtalertsnativemanager;
        val$alertId = i;
        val$commentId = j;
        val$imageCopy = abyte0;
        val$width = k;
        val$height = I.this;
        super();
    }
}
