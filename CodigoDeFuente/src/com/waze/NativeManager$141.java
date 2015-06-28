// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.Intent;
import com.waze.navigate.social.MyFriendsActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.Type
    implements Runnable
{

    final NativeManager this$0;
    private final int val$Type;

    public void run()
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/MyFriendsActivity);
        intent.putExtra("type", val$Type);
        intent.setFlags(0x10000000);
        AppService.getAppContext().startActivity(intent);
    }

    FriendsActivity()
    {
        this$0 = final_nativemanager;
        val$Type = I.this;
        super();
    }
}
