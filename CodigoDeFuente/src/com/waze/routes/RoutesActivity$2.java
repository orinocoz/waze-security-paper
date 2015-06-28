// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.routes:
//            RoutesActivity

class this._cls0
    implements android.widget.mClickListener
{

    final RoutesActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        RoutesActivity.access$0(RoutesActivity.this, i);
    }

    ClickListener()
    {
        this$0 = RoutesActivity.this;
        super();
    }
}
