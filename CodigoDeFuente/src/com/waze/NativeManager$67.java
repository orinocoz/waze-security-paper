// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze:
//            NativeManager

class val.username
    implements Runnable
{

    final NativeManager this$0;
    private final int val$nType;
    private final String val$username;

    public void run()
    {
        Iterator iterator = NativeManager.access$72(NativeManager.this).iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            ((UserNameResult)iterator.next()).onUserNameResult(val$nType, val$username);
        } while (true);
    }

    UserNameResult()
    {
        this$0 = final_nativemanager;
        val$nType = i;
        val$username = String.this;
        super();
    }
}
