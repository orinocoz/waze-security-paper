// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;


// Referenced classes of package com.waze.inbox:
//            InboxNativeManager

class val.read
    implements Runnable
{

    final InboxNativeManager this$0;
    private final String val$ids[];
    private final boolean val$read;

    public void run()
    {
        InboxNativeManager.access$8(InboxNativeManager.this, val$ids, val$read);
    }

    ()
    {
        this$0 = final_inboxnativemanager;
        val$ids = as;
        val$read = Z.this;
        super();
    }
}
