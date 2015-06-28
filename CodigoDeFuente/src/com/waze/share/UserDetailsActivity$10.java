// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;

// Referenced classes of package com.waze.share:
//            UserDetailsActivity

class this._cls0
    implements android.content.Listener
{

    final UserDetailsActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        setResult(0);
        finish();
    }

    kListener()
    {
        this$0 = UserDetailsActivity.this;
        super();
    }
}
