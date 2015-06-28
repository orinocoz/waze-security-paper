// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.share.UserDetailsActivity;
import com.waze.user.PersonBase;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity

class val.p
    implements android.view.eActivity._cls6
{

    final MyShareDriveActivity this$0;
    private final PersonBase val$p;

    public void onClick(View view)
    {
        Intent intent = new Intent(MyShareDriveActivity.this, com/waze/share/UserDetailsActivity);
        intent.putExtra("FriendUserData", val$p);
        startActivityForResult(intent, 0);
    }

    ()
    {
        this$0 = final_mysharedriveactivity;
        val$p = PersonBase.this;
        super();
    }
}
