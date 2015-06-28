// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.content.Intent;
import android.view.View;
import com.waze.analytics.Analytics;
import com.waze.navigate.NavigateActivity;

// Referenced classes of package com.waze.navigate.social:
//            ShareHelpActivity

class this._cls0
    implements android.view.
{

    final ShareHelpActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("SHARE_HELP_SCREEN_DRIVE_CLICK", null, null);
        Intent intent = new Intent(ShareHelpActivity.this, com/waze/navigate/NavigateActivity);
        startActivityForResult(intent, 1);
    }

    ()
    {
        this$0 = ShareHelpActivity.this;
        super();
    }
}
