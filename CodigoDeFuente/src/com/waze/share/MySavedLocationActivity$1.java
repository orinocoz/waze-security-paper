// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.share:
//            MySavedLocationActivity

class this._cls0
    implements android.widget.tener
{

    final MySavedLocationActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        addressItemClicked(view);
    }

    tener()
    {
        this$0 = MySavedLocationActivity.this;
        super();
    }
}
