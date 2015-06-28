// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.share.ShareUtility;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 256);
    }

    ()
    {
        this$0 = NativeManager.this;
        super();
    }
}
