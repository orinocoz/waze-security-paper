// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.navigate:
//            HistoryActivity

class this._cls0
    implements android.widget.ClickListener
{

    final HistoryActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        addressItemClicked(view);
    }

    ckListener()
    {
        this$0 = HistoryActivity.this;
        super();
    }
}
