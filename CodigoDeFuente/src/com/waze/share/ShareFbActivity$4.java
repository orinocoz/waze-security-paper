// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;

// Referenced classes of package com.waze.share:
//            ShareFbActivity, ShareFbMainData

class this._cls0
    implements android.view.er
{

    final ShareFbActivity this$0;

    public void onClick(View view)
    {
        if (ShareFbActivity.access$2(ShareFbActivity.this).isNavigating && ShareFbActivity.access$3(ShareFbActivity.this))
        {
            ShareFbActivity.access$4(ShareFbActivity.this);
            return;
        } else
        {
            ShareFbActivity.access$5(ShareFbActivity.this);
            return;
        }
    }

    ()
    {
        this$0 = ShareFbActivity.this;
        super();
    }
}
