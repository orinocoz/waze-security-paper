// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.analytics.Analytics;

// Referenced classes of package com.waze.share:
//            ShareActivity, ShareUtility

class this._cls0
    implements android.view.ener
{

    final ShareActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("SHARE_LOCATION_OF", "VAUE", "DRIVE");
        ShareUtility.OpenShareActivity(reType.ShareType_ShareDrive, null, null, null);
    }

    reType()
    {
        this$0 = ShareActivity.this;
        super();
    }
}
