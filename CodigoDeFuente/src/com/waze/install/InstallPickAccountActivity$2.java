// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.install:
//            InstallPickAccountActivity

class this._cls0
    implements android.view.y._cls2
{

    final InstallPickAccountActivity this$0;

    public void onClick(View view)
    {
        MyWazeNativeManager.getInstance().facebookResolveConflict();
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = InstallPickAccountActivity.this;
        super();
    }
}
