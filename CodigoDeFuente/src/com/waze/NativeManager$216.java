// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.social.ShareDrivingFriendsActivity;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class val.sMeeting
    implements Runnable
{

    final NativeManager this$0;
    private final String val$sMeeting;

    public void run()
    {
        Intent intent = new Intent(AppService.getActiveActivity(), com/waze/navigate/social/ShareDrivingFriendsActivity);
        intent.putExtra("meeting", val$sMeeting);
        AppService.getActiveActivity().startActivityForResult(intent, 0);
    }

    e()
    {
        this$0 = final_nativemanager;
        val$sMeeting = String.this;
        super();
    }
}
