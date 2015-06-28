// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import com.waze.mywaze.social.FacebookActivity;

// Referenced classes of package com.waze.navigate.social:
//            MyFriendsActivity

class this._cls0
    implements com.waze.mywaze.FacebookCallback
{

    final MyFriendsActivity this$0;

    public void onFacebookSettings(com.waze.mywaze.FacebookSettings facebooksettings)
    {
        Intent intent = new Intent(MyFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
        startActivityForResult(intent, 0);
    }

    ettings()
    {
        this$0 = MyFriendsActivity.this;
        super();
    }
}
