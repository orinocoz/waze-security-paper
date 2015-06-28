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
//            AddFromActivity

class this._cls0
    implements android.widget.ctionListener
{

    final AddFromActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (AddFromActivity.access$2(AddFromActivity.this).enoughToFilter() && AddFromActivity.access$3(AddFromActivity.this) != null && AddFromActivity.access$3(AddFromActivity.this).getCount() > 0)
        {
            com.waze.user.PersonBase personbase = AddFromActivity.access$3(AddFromActivity.this).getItem(0);
            if (!AddFromActivity.access$2(AddFromActivity.this).getObjects().contains(personbase))
            {
                AddFromActivity.access$2(AddFromActivity.this).performCompletion();
                AddFromActivity.access$4(AddFromActivity.this).notifyDataSetChanged();
            }
        } else
        {
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(AddFromActivity.access$2(AddFromActivity.this).getWindowToken(), 0);
        }
        return true;
    }

    ()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
