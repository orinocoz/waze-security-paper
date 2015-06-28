// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import com.waze.AppService;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.social.FacebookEventActivity;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AddressItem

class val.ad
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final AddressItem val$ad;

    public void run()
    {
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/mywaze/social/FacebookEventActivity);
        intent.putExtra("AddressItem", val$ad);
        AppService.getActiveActivity().startActivityForResult(intent, 1);
    }

    ty()
    {
        this$0 = final_drivetonativemanager;
        val$ad = AddressItem.this;
        super();
    }
}
