// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;

// Referenced classes of package com.waze.share:
//            FacebookEventPostActivity, ShareFbMainData

class this._cls0
    implements android.view._cls2
{

    final FacebookEventPostActivity this$0;

    public void onClick(View view)
    {
        if (FacebookEventPostActivity.access$1(FacebookEventPostActivity.this).isNavigating && FacebookEventPostActivity.access$2(FacebookEventPostActivity.this))
        {
            FacebookEventPostActivity.access$3(FacebookEventPostActivity.this);
            return;
        } else
        {
            FacebookEventPostActivity.access$4(FacebookEventPostActivity.this);
            return;
        }
    }

    ()
    {
        this$0 = FacebookEventPostActivity.this;
        super();
    }
}
