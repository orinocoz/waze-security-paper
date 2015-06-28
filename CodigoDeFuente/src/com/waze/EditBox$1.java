// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze:
//            EditBox

class nit>
    implements android.widget.nEditorActionListener
{

    final EditBox this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        int j = EditBox.access$0(EditBox.this);
        boolean flag = false;
        if (i == j)
        {
            flag = onKeyDown(66, new KeyEvent(0, 66));
            if (!EditBox.access$1(EditBox.this))
            {
                HideSoftInput();
            }
        }
        return flag;
    }

    nt()
    {
        this$0 = EditBox.this;
        super();
    }
}
