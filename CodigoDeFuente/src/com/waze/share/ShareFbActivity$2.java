// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.share:
//            ShareFbActivity, ShareFbWithActivity

class this._cls0
    implements android.view.er
{

    final ShareFbActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(ShareFbActivity.this, com/waze/share/ShareFbWithActivity);
        intent.putExtra("Friends list", ShareFbActivity.access$1(ShareFbActivity.this));
        startActivityForResult(intent, 2);
    }

    y()
    {
        this$0 = ShareFbActivity.this;
        super();
    }
}
