// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import com.waze.NativeManager;
import com.waze.navigate.social.ShareDriveActivity;

// Referenced classes of package com.waze.share:
//            ShareActivity

class this._cls0
    implements android.view.ener
{

    final ShareActivity this$0;

    public void onClick(View view)
    {
        if (!ShareDriveActivity.bIsFollow)
        {
            ShareActivity.access$0(ShareActivity.this).StopFollow();
        }
        setResult(-1);
        finish();
    }

    riveActivity()
    {
        this$0 = ShareActivity.this;
        super();
    }
}
