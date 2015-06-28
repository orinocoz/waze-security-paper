// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.view.View;
import com.waze.NativeManager;

// Referenced classes of package com.waze.phone:
//            PhoneKeepInMindActivity

class this._cls0
    implements android.view._cls2
{

    final PhoneKeepInMindActivity this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().SignUplogAnalytics("KEEP_IN_MIND_BACK", null, null, true);
        setResult(0);
        finish();
    }

    ()
    {
        this$0 = PhoneKeepInMindActivity.this;
        super();
    }
}
