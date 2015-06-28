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
    private final String val$icon;
    private final String val$message;
    private final int val$timeout;

    public void run()
    {
        setShortMessageIcon(val$message, val$icon, val$timeout);
    }

    ()
    {
        this$0 = final_bottomnotification;
        val$message = s;
        val$icon = s1;
        val$timeout = I.this;
        super();
    }
}
