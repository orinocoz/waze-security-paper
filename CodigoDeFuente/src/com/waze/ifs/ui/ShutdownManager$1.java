// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;


// Referenced classes of package com.waze.ifs.ui:
//            ShutdownManager

class 
    implements Runnable
{

    public void run()
    {
        System.runFinalization();
        System.exit(0);
    }

    ()
    {
    }
}
