// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import com.waze.mywaze.social.FacebookActivity;

// Referenced classes of package com.waze.navigate.social:
//            EditFriendsActivity

class this._cls0
    implements com.waze.mywaze.cebookCallback
{

    final EditFriendsActivity this$0;

    public void onFacebookSettings(com.waze.mywaze.cebookSettings cebooksettings)
    {
        Intent intent = new Intent(EditFriendsActivity.this, com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", cebooksettings);
        startActivityForResult(intent, 0);
    }

    tings()
    {
        this$0 = EditFriendsActivity.this;
        super();
    }
}
