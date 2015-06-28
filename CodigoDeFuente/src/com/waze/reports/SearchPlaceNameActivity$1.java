// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.view.View;

// Referenced classes of package com.waze.reports:
//            SearchPlaceNameActivity

class this._cls0
    implements android.view.y._cls1
{

    final SearchPlaceNameActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent();
        intent.putExtra("selected_place", SearchPlaceNameActivity.access$0(SearchPlaceNameActivity.this));
        setResult(-1, intent);
        finish();
    }

    ()
    {
        this$0 = SearchPlaceNameActivity.this;
        super();
    }
}
