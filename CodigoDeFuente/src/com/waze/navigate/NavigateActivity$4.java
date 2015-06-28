// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity

class this._cls0
    implements android.widget.tionListener
{

    final NavigateActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
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

    nListener()
    {
        this$0 = NavigateActivity.this;
        super();
    }
}
