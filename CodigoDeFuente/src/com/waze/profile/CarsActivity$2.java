// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.view.View;
import android.widget.AdapterView;
import com.waze.mywaze.MyWazeNativeManager;

// Referenced classes of package com.waze.profile:
//            CarsActivity, CarListAdapter

class val.adapter
    implements android.widget.temClickListener
{

    final CarsActivity this$0;
    private final CarListAdapter val$adapter;
    private final String val$carList[];

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        String s = val$carList[i];
        val$adapter.setSelection(s);
        CarsActivity.access$1(CarsActivity.this).setUserCar(s);
        setResult(0);
        finish();
    }

    ger()
    {
        this$0 = final_carsactivity;
        val$carList = as;
        val$adapter = CarListAdapter.this;
        super();
    }
}
