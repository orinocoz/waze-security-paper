// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.navigate.social:
//            MyShareDriveActivity, AddFromActivity

class this._cls0
    implements android.view.eActivity._cls7
{

    final MyShareDriveActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("SHARE_ADD_FRIENDS_CLICK", null, null);
        Intent intent = new Intent(MyShareDriveActivity.this, com/waze/navigate/social/AddFromActivity);
        intent.putExtra(AddFromActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_SHARE);
        intent.putExtra("type", 1);
        startActivityForResult(intent, 2001);
    }

    ()
    {
        this$0 = MyShareDriveActivity.this;
        super();
    }
}
