// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;


// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class val.timeout
    implements Runnable
{

    final BottomNotification this$0;
    private final String val$message;
    private final int val$points;
    private final int val$timeout;
    private final String val$title;

    public void run()
    {
        setLongMessagePoints(val$title, val$message, val$points, val$timeout);
    }

    ()
    {
        this$0 = final_bottomnotification;
        val$title = s;
        val$message = s1;
        val$points = i;
        val$timeout = I.this;
        super();
    }
}
