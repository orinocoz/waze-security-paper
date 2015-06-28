// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.view.View;
import android.widget.AdapterView;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.mywaze.social:
//            FoursquareListActivity

class this._cls0
    implements android.widget.stener
{

    final FoursquareListActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        FoursquareListActivity.access$0(FoursquareListActivity.this).selectFoursquareVenue(i);
    }

    ()
    {
        this$0 = FoursquareListActivity.this;
        super();
    }
}
