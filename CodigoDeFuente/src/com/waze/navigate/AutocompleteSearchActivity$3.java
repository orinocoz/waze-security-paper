// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.util.Log;
import android.view.KeyEvent;
import android.widget.TextView;

// Referenced classes of package com.waze.navigate:
//            AutocompleteSearchActivity

class this._cls0
    implements android.widget.er
{

    final AutocompleteSearchActivity this$0;

    public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
    {
        Log.d("WAZE", (new StringBuilder("a:")).append(i).append(" ke:").append(keyevent).toString());
        if (i == 3)
        {
            AutocompleteSearchActivity.access$6(AutocompleteSearchActivity.this);
        }
        if (keyevent != null && keyevent.getAction() == 1)
        {
            AutocompleteSearchActivity.access$6(AutocompleteSearchActivity.this);
        }
        return true;
    }

    ()
    {
        this$0 = AutocompleteSearchActivity.this;
        super();
    }
}
