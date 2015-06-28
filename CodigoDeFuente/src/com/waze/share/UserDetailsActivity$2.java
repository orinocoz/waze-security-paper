// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Intent;
import android.net.Uri;
import android.view.View;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class this._cls0
    implements android.view._cls2
{

    final UserDetailsActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent("android.intent.action.DIAL");
        intent.setData(Uri.parse((new StringBuilder("tel:")).append(sPhoneNumer).toString()));
        startActivityForResult(intent, 1004);
    }

    ()
    {
        this$0 = UserDetailsActivity.this;
        super();
    }
}
