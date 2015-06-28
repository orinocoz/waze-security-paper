// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.TextView;
import com.waze.autocomplete.ContactsCompletionView;
import java.util.List;

// Referenced classes of package com.waze.navigate.social:
//            ShareDriveActivity

class this._cls0
    implements android.widget.onListener
{

    final ShareDriveActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (ShareDriveActivity.access$6(ShareDriveActivity.this).enoughToFilter() && ShareDriveActivity.access$7(ShareDriveActivity.this) != null && ShareDriveActivity.access$7(ShareDriveActivity.this).getCount() > 0)
        {
            com.waze.user.PersonBase personbase = ShareDriveActivity.access$7(ShareDriveActivity.this).getItem(0);
            if (!ShareDriveActivity.access$6(ShareDriveActivity.this).getObjects().contains(personbase))
            {
                ShareDriveActivity.access$6(ShareDriveActivity.this).performCompletion();
                ShareDriveActivity.access$8(ShareDriveActivity.this).notifyDataSetChanged();
            }
        } else
        {
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(ShareDriveActivity.access$6(ShareDriveActivity.this).getWindowToken(), 0);
        }
        return true;
    }

    nArrayAdapter()
    {
        this$0 = ShareDriveActivity.this;
        super();
    }
}
