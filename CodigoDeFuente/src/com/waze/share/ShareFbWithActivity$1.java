// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.share:
//            ShareFbWithActivity, ShareFbWithListAdapter

class this._cls0
    implements android.widget.kListener
{

    final ShareFbWithActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        ((ShareFbWithListAdapter)adapterview.getAdapter()).toggleChecked(i);
    }

    ()
    {
        this$0 = ShareFbWithActivity.this;
        super();
    }
}
