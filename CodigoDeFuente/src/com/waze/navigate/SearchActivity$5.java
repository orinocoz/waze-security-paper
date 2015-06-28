// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.widget.ListView;

// Referenced classes of package com.waze.navigate:
//            SearchActivity

class this._cls0
    implements Runnable
{

    final SearchActivity this$0;

    public void run()
    {
        ((ListView)findViewById(0x7f0905e5)).invalidateViews();
    }

    ()
    {
        this$0 = SearchActivity.this;
        super();
    }
}
