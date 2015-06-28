// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.profile:
//            LaterActivity

class this._cls0
    implements android.view.ener
{

    final LaterActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().logAnalytics("START_DONE", false, true);
        setResult(3);
        finish();
    }

    ()
    {
        this$0 = LaterActivity.this;
        super();
    }
}
