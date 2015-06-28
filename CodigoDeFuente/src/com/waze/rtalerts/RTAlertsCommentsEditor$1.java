// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.text.Editable;
import android.view.KeyEvent;
import android.widget.EditText;
import android.widget.TextView;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsCommentsEditor

class this._cls0
    implements android.widget.stener
{

    final RTAlertsCommentsEditor this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (keyevent != null && keyevent.getAction() == 1)
        {
            RTAlertsCommentsEditor.access$1(RTAlertsCommentsEditor.this, RTAlertsCommentsEditor.access$0(RTAlertsCommentsEditor.this).getText().toString());
        }
        return true;
    }

    ner()
    {
        this$0 = RTAlertsCommentsEditor.this;
        super();
    }
}
