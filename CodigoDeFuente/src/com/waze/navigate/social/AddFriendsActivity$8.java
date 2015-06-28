// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import com.waze.mywaze.social.FacebookActivity;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsActivity

class this._cls0
    implements com.waze.mywaze.acebookCallback
{

    final AddFriendsActivity this$0;

    public void onFacebookSettings(com.waze.mywaze.acebookSettings acebooksettings)
    {
        Intent intent = new Intent(AddFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", acebooksettings);
        startActivityForResult(intent, 1004);
    }

    ttings()
    {
        this$0 = AddFriendsActivity.this;
        super();
    }
}
