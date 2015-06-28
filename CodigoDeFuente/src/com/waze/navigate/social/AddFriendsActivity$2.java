// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate.social:
//            AddFriendsActivity

class this._cls0
    implements android.view.sActivity._cls2
{

    final AddFriendsActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("ADD_FRIENDS_OPTIONS_FACEBOOK_CLICK", null, null);
        facebookPrivacyClicked();
    }

    ()
    {
        this$0 = AddFriendsActivity.this;
        super();
    }
}
