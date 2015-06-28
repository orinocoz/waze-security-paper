// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import android.text.Editable;
import android.text.TextWatcher;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.messages:
//            UserMessageEditorActivity

class this._cls0
    implements TextWatcher
{

    final UserMessageEditorActivity this$0;

    public void afterTextChanged(Editable editable)
    {
        if (editable.length() > 0)
        {
            UserMessageEditorActivity.access$0(UserMessageEditorActivity.this).setCloseTextColor(114, 210, 238);
            return;
        } else
        {
            UserMessageEditorActivity.access$0(UserMessageEditorActivity.this).setCloseTextColor(119, 119, 119);
            return;
        }
    }

    public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    public void onTextChanged(CharSequence charsequence, int i, int j, int k)
    {
    }

    ()
    {
        this$0 = UserMessageEditorActivity.this;
        super();
    }
}
