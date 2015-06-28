// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.widget.ListView;

// Referenced classes of package com.waze.main.navigate:
//            NavigationListActivity, NavigationListItemAdapter, NavigationItem

class this._cls0
    implements com.waze.istListener
{

    final NavigationListActivity this$0;

    public void onComplete(NavigationItem anavigationitem[])
    {
        NavigationListActivity.access$0(NavigationListActivity.this).setItems(anavigationitem);
        NavigationListActivity.access$1(NavigationListActivity.this).invalidateViews();
    }

    ()
    {
        this$0 = NavigationListActivity.this;
        super();
    }
}
