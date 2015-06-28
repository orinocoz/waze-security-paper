// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, AddFriendsActivity

class this._cls0
    implements android.view.
{

    final MyFriendsActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/AddFriendsActivity);
        startActivityForResult(intent, 1001);
    }

    ()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
