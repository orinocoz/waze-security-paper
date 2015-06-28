// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import android.widget.AbsListView;
import android.widget.ListView;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity

class this._cls0
    implements android.widget.llListener
{

    final AddFromActivity this$0;

    public void onScroll(AbsListView abslistview, int i, int j, int k)
    {
    }

    public void onScrollStateChanged(AbsListView abslistview, int i)
    {
        if (i == 1)
        {
            AddFromActivity.access$5(AddFromActivity.this).requestFocus();
        }
    }

    ()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
