// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Intent;
import android.view.View;
import com.waze.AppService;
import com.waze.navigate.social.MyFriendsActivity;

// Referenced classes of package com.waze.view.popups:
//            FriendsOnlinePopUp

class this._cls0
    implements android.view.PopUp._cls7
{

    final FriendsOnlinePopUp this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/MyFriendsActivity);
        intent.putExtra("type", 0);
        AppService.showActivity(intent);
    }

    ()
    {
        this$0 = FriendsOnlinePopUp.this;
        super();
    }
}
