// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.navigate.AddFavoriteActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService, MainActivity

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        MainActivity mainactivity = AppService.getMainActivity();
        if (mainactivity != null)
        {
            Intent intent = new Intent(mainactivity, com/waze/navigate/AddFavoriteActivity);
            intent.putExtra("AddressType", 6);
            mainactivity.startActivity(intent);
        }
    }

    teActivity()
    {
        this$0 = NativeManager.this;
        super();
    }
}
