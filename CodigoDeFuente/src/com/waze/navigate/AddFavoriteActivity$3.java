// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AddFavoriteActivity

class this._cls0
    implements android.widget.nListener
{

    final AddFavoriteActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        if (i == 3)
        {
            searchClicked(textview);
        }
        if (keyevent != null && keyevent.getAction() == 1)
        {
            searchClicked(textview);
        }
        return true;
    }

    stener()
    {
        this$0 = AddFavoriteActivity.this;
        super();
    }
}
