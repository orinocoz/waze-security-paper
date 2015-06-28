// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotification, BottomNotificationOnClickIntent

class val.timeout
    implements Runnable
{

    final BottomNotification this$0;
    private final String val$message;
    private final int val$timeout;

    private void disableOnClickListenerIfOfflineRouteMessage(String s)
    {
        if (s.equalsIgnoreCase(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BottomBar_OFFLINE_ROUTE)))
        {
            setListener(BottomNotificationOnClickIntent.NONE);
        }
    }

    public void run()
    {
        disableOnClickListenerIfOfflineRouteMessage(val$message);
        setShortMessage(val$message, val$timeout);
    }

    lickIntent()
    {
        this$0 = final_bottomnotification;
        val$message = s;
        val$timeout = I.this;
        super();
    }
}
