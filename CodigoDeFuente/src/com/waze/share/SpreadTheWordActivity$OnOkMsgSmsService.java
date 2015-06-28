// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import com.waze.social.facebook.FacebookWrapper;

// Referenced classes of package com.waze.share:
//            SpreadTheWordActivity

protected class this._cls0
    implements android.content.his._cls0
{

    final SpreadTheWordActivity this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        if (i == 1)
        {
            FacebookWrapper.getInstance().authorize(SpreadTheWordActivity.this, null, false);
        }
    }

    protected ()
    {
        this$0 = SpreadTheWordActivity.this;
        super();
    }
}
