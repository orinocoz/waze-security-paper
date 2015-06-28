// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AutoCompleteTextView;
import android.widget.ListView;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity

class val.listView
    implements android.widget.lListener
{

    final NavigateActivity this$0;
    private final ListView val$listView;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (i == 1 && !val$listView.hasFocus())
        {
            val$listView.requestFocus();
            ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(searchBox.getWindowToken(), 0);
        }
    }

    anager()
    {
        this$0 = final_navigateactivity;
        val$listView = ListView.this;
        super();
    }
}
