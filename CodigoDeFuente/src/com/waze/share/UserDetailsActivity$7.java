// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.AppService;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class this._cls0
    implements android.view._cls7
{

    final UserDetailsActivity this$0;

    public void onClick(View view)
    {
        if (!AppService.isNetworkAvailable())
        {
            UserDetailsActivity.access$1(UserDetailsActivity.this, DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
        }
    }

    ()
    {
        this$0 = UserDetailsActivity.this;
        super();
    }
}
