// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.ifs.ui:
//            EditTextDialogActivity

class this._cls0
    implements android.widget.stener
{

    final EditTextDialogActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (keyevent != null && keyevent.getAction() == 1)
        {
            EditTextDialogActivity.access$0(EditTextDialogActivity.this);
            finish();
        }
        return true;
    }

    tener()
    {
        this$0 = EditTextDialogActivity.this;
        super();
    }
}
