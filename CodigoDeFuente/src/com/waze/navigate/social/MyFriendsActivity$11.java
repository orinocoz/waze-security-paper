// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import com.waze.analytics.Analytics;
import com.waze.social.AddFriendDialog;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity, AddFromActivity

class this._cls0
    implements com.waze.social.riendDialog
{

    final MyFriendsActivity this$0;

    public void onNotNowClicked()
    {
        MyFriendsActivity.access$21(false);
        MyFriendsActivity.access$20(MyFriendsActivity.this).dismiss();
        Analytics.log("ADD_FRIEND_FROM_FRIEND_REQUEST", "ACTION", "NOT_NOW");
    }

    public void onSendRequestClicked()
    {
        MyFriendsActivity.access$20(MyFriendsActivity.this).dismiss();
        Intent intent = new Intent(MyFriendsActivity.this, com/waze/navigate/social/AddFromActivity);
        intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_DEFAULT);
        startActivityForResult(intent, 1001);
        Analytics.log("ADD_FRIEND_FROM_FRIEND_REQUEST", "ACTION", "ADD");
    }

    og()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
