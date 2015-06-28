// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import com.waze.user.UserData;

// Referenced classes of package com.waze.messages:
//            MessagesNativeManager

class val.text
    implements Runnable
{

    final val.text this$1;
    private final boolean val$isPrivate;
    private final String val$text;
    private final UserData val$userData;

    public void run()
    {
        MessagesNativeManager.access$0(MessagesNativeManager.getInstance(), val$isPrivate, val$userData, val$text);
    }

    ()
    {
        this$1 = final_;
        val$isPrivate = flag;
        val$userData = userdata;
        val$text = String.this;
        super();
    }
}
