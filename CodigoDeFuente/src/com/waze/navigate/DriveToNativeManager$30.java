// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, NavigateActivity, AddFavoriteActivity, AddressItem

class val.ai
    implements Runnable
{

    final DriveToNativeManager this$0;
    private final AddressItem val$ai;

    public void run()
    {
        if (NativeManager.getInstance().getAutoCompleteFeatures() != 0)
        {
            Intent intent = new Intent(AppService.getActiveActivity(), com/waze/navigate/NavigateActivity);
            intent.putExtra("AddressItem", val$ai);
            AppService.getActiveActivity().startActivityForResult(intent, 1);
            return;
        } else
        {
            Intent intent1 = new Intent(AppService.getActiveActivity(), com/waze/navigate/AddFavoriteActivity);
            intent1.putExtra("SearchStr", val$ai.getAddress());
            intent1.putExtra("AddressType", 11);
            intent1.putExtra("AddressItem", val$ai);
            AppService.getActiveActivity().startActivityForResult(intent1, 1);
            return;
        }
    }

    ()
    {
        this$0 = final_drivetonativemanager;
        val$ai = AddressItem.this;
        super();
    }
}
