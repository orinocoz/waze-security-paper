// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.reports:
//            SimpleChoiceFragment

class this._cls0
    implements android.widget.Listener
{

    final SimpleChoiceFragment this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (keyevent != null && keyevent.getAction() == 1)
        {
            SimpleChoiceFragment.access$0(SimpleChoiceFragment.this);
        }
        return true;
    }

    stener()
    {
        this$0 = SimpleChoiceFragment.this;
        super();
    }
}
