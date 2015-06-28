// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.share.UserDetailsActivity;
import com.waze.user.FriendUserData;

// Referenced classes of package com.waze.navigate.social:
//            FriendsDrivingActivity

class val.fud
    implements android.view.gActivity._cls3
{

    final FriendsDrivingActivity this$0;
    private final FriendUserData val$fud;

    public void onClick(View view)
    {
        Intent intent = new Intent(FriendsDrivingActivity.this, com/waze/share/UserDetailsActivity);
        intent.putExtra("FriendUserData", val$fud);
        startActivityForResult(intent, 0);
    }

    ()
    {
        this$0 = final_friendsdrivingactivity;
        val$fud = FriendUserData.this;
        super();
    }
}
