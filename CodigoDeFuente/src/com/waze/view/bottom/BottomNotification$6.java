// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;


// Referenced classes of package com.waze.view.bottom:
//            BottomNotification

class val.isClosureEnabled
    implements Runnable
{

    final BottomNotification this$0;
    private final boolean val$isClosureEnabled;
    private final boolean val$isFoursquareEnabled;
    private final boolean val$isRandomUser;
    private final String val$message;
    private final String val$messageBody;
    private final int val$timeout;

    public void run()
    {
        setNearByMessage(val$message, val$messageBody, val$timeout, val$isRandomUser, val$isFoursquareEnabled, val$isClosureEnabled);
    }

    ()
    {
        this$0 = final_bottomnotification;
        val$message = s;
        val$messageBody = s1;
        val$timeout = i;
        val$isRandomUser = flag;
        val$isFoursquareEnabled = flag1;
        val$isClosureEnabled = Z.this;
        super();
    }
}
