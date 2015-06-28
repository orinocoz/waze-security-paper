// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Intent;
import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.reports:
//            NearbyGasStationsActivity, UpdatePriceActivity

class this._cls0
    implements android.widget.ner
{

    final NearbyGasStationsActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        Intent intent = new Intent(NearbyGasStationsActivity.this, com/waze/reports/UpdatePriceActivity);
        intent.putExtra("index", i);
        startActivityForResult(intent, 1);
    }

    r()
    {
        this$0 = NearbyGasStationsActivity.this;
        super();
    }
}
