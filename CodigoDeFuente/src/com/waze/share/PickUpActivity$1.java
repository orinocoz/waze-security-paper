// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.share:
//            PickUpActivity

class this._cls0
    implements android.view.ner
{

    final PickUpActivity this$0;

    public void onClick(View view)
    {
        Analytics.log("PICKUP_REQUEST");
        if (AppService.isNetworkAvailable())
        {
            PickUpActivity.access$0(PickUpActivity.this).SendPickUpRequest();
            return;
        } else
        {
            MsgBox.openMessageBox(PickUpActivity.access$0(PickUpActivity.this).getLanguageString(DisplayStrings.DS_ERROR), PickUpActivity.access$0(PickUpActivity.this).getLanguageString(DisplayStrings.DS_NETWORK_CONNECTION_PROBLEMS__PLEASE_TRY_AGAIN_LATER_), false);
            return;
        }
    }

    r()
    {
        this$0 = PickUpActivity.this;
        super();
    }
}
