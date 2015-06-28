// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.widget.HorizontalScrollView;
import com.waze.autocomplete.ContactsCompletionView;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements Runnable
{

    final ShareDriveActivity this$0;

    public void run()
    {
        if (ShareDriveActivity.access$13(ShareDriveActivity.this) != null && ShareDriveActivity.access$6(ShareDriveActivity.this) != null)
        {
            ShareDriveActivity.access$13(ShareDriveActivity.this).smoothScrollTo(ShareDriveActivity.access$6(ShareDriveActivity.this).getWidth(), 0);
        }
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
