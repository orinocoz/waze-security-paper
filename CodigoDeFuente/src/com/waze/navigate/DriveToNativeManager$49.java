// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.os.Bundle;
import com.waze.ifs.async.UpdateHandlers;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

class this._cls0
    implements Runnable
{

    final DriveToNativeManager this$0;

    public void run()
    {
        com.waze.reports.Position position = DriveToNativeManager.access$43(DriveToNativeManager.this);
        Bundle bundle = new Bundle();
        bundle.putSerializable("position", position);
        DriveToNativeManager.access$45(DriveToNativeManager.access$44()).sendUpdateMessage(DriveToNativeManager.UH_MAP_CENTER, bundle);
    }

    ()
    {
        this$0 = DriveToNativeManager.this;
        super();
    }
}
