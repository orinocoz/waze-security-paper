// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.username
    implements Runnable
{

    final NativeManager this$0;
    private final String val$firstname;
    private final String val$lastname;
    private final String val$username;

    public void run()
    {
        NativeManager.access$47(NativeManager.this, val$firstname, val$lastname, val$username);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$firstname = s;
        val$lastname = s1;
        val$username = String.this;
        super();
    }
}
