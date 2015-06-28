// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.text.Editable;
import android.view.View;
import android.widget.HorizontalScrollView;
import com.waze.autocomplete.ContactsCompletionView;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.view.eActivity._cls8
{

    final ShareDriveActivity this$0;

    public void onClick(View view)
    {
        ShareDriveActivity.access$6(ShareDriveActivity.this).performClick();
        ShareDriveActivity.access$6(ShareDriveActivity.this).requestFocus();
        ShareDriveActivity.access$6(ShareDriveActivity.this).setSelection(ShareDriveActivity.access$6(ShareDriveActivity.this).getText().length());
        ShareDriveActivity.access$13(ShareDriveActivity.this).smoothScrollTo(ShareDriveActivity.access$6(ShareDriveActivity.this).getWidth(), 0);
        ShareDriveActivity.access$12(ShareDriveActivity.this);
    }

    ()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
