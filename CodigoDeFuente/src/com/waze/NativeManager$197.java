// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.navigate.NavigateActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        Intent intent = new Intent(AppService.getMainActivity(), com/waze/navigate/NavigateActivity);
        AppService.getMainActivity().startActivityForResult(intent, 0);
    }

    ctivity()
    {
        this$0 = NativeManager.this;
        super();
    }
}
