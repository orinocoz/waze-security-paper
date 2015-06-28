// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class val.provider
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final String val$category;
    private final String val$provider;

    public void run()
    {
        DriveToNativeManager.access$77(DriveToNativeManager.this, val$category, val$provider);
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$category = s;
        val$provider = String.this;
        super();
    }
}
