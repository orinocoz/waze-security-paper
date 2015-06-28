// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.share:
//            ShareFbActivity, ShareFbLocationActivity

class this._cls0
    implements android.view.er
{

    final ShareFbActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(ShareFbActivity.this, com/waze/share/ShareFbLocationActivity);
        startActivityForResult(intent, 3);
    }

    ivity()
    {
        this$0 = ShareFbActivity.this;
        super();
    }
}
