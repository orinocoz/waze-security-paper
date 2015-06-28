// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteNameActivity

class this._cls0
    implements android.widget.tener
{

    final AddFavoriteNameActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 6)
        {
            approveClicked(textview);
        }
        if (keyevent != null && keyevent.getAction() == 1)
        {
            approveClicked(textview);
        }
        return true;
    }

    er()
    {
        this$0 = AddFavoriteNameActivity.this;
        super();
    }
}
