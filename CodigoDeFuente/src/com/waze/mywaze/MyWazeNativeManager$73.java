// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.mywaze:
//            MyWazeNativeManager

class val.readPermissions
    implements Runnable
{

    final MyWazeNativeManager this$0;
    private final String val$readPermissions[];

    public void run()
    {
        FacebookWrapper.getInstance().updatePermissions(val$readPermissions);
    }

    r()
    {
        this$0 = final_mywazenativemanager;
        val$readPermissions = _5B_Ljava.lang.String_3B_.this;
        super();
    }
}
