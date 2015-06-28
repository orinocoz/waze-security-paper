// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;


// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class this._cls0
    implements Runnable
{

    final DriveToNativeManager this$0;

    public void run()
    {
        if (isStopPointSearchNTV())
        {
            DriveToNativeManager.access$73(DriveToNativeManager.this);
            return;
        } else
        {
            DriveToNativeManager.access$74(DriveToNativeManager.this);
            return;
        }
    }

    ()
    {
        this$0 = DriveToNativeManager.this;
        super();
    }
}
