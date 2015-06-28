// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Intent;
import android.view.View;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.social.AddFriendsActivity;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.phone.PhoneNumberSignInActivity;

// Referenced classes of package com.waze:
//            LayoutManager, TooltipType

class this._cls0
    implements android.view.ener
{

    final LayoutManager this$0;

    public void onClick(View view)
    {
        LayoutManager.access$3(LayoutManager.this, LayoutManager.access$2(LayoutManager.this), TooltipType.FRIENDS);
        if (!MyWazeNativeManager.getInstance().getFacebookLoggedInNTV() && !MyWazeNativeManager.getInstance().getContactLoggedInNTV() && MyWazeNativeManager.getInstance().getNumberOfFriends() == 0)
        {
            Intent intent2 = new Intent(LayoutManager.access$1(LayoutManager.this), com/waze/phone/PhoneNumberSignInActivity);
            intent2.putExtra("type", 1);
            intent2.putExtra("back", 1);
            intent2.putExtra("fon_shon_rea_son", "FEATURE");
            LayoutManager.access$1(LayoutManager.this).startActivity(intent2);
            return;
        }
        if (MyWazeNativeManager.getInstance().getNumberOfFriends() == 0 && MyWazeNativeManager.getInstance().getNumberOfFriendsPending() == 0)
        {
            Intent intent1 = new Intent(LayoutManager.access$1(LayoutManager.this), com/waze/navigate/social/AddFriendsActivity);
            LayoutManager.access$1(LayoutManager.this).startActivity(intent1);
            return;
        } else
        {
            Intent intent = new Intent(LayoutManager.access$1(LayoutManager.this), com/waze/navigate/social/MyFriendsActivity);
            LayoutManager.access$1(LayoutManager.this).startActivity(intent);
            return;
        }
    }

    MyFriendsActivity()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
