// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.share:
//            ShareActivity

class this._cls0
    implements android.widget.rActionListener
{

    final ShareActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
        if (i == 3)
        {
            searchClicked();
        }
        if (keyevent != null && keyevent.getAction() == 1)
        {
            searchClicked();
        }
        return true;
    }

    rActionListener()
    {
        this$0 = ShareActivity.this;
        super();
    }
}
