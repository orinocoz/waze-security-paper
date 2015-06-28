// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            CarListAdapter

public class CarsActivity extends ActivityBase
{

    private MyWazeNativeManager mywazeManager;

    public CarsActivity()
    {
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    private void init(String s)
    {
        final String carList[] = getResources().getStringArray(0x7f0c0000);
        final CarListAdapter adapter = new CarListAdapter(getApplicationContext(), 0x7f03002a, carList, s);
        ListView listview = (ListView)findViewById(0x7f0901fe);
        listview.setAdapter(adapter);
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final CarsActivity this$0;
            private final CarListAdapter val$adapter;
            private final String val$carList[];

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                String s1 = carList[i];
                adapter.setSelection(s1);
                mywazeManager.setUserCar(s1);
                setResult(0);
                finish();
            }

            
            {
                this$0 = CarsActivity.this;
                carList = as;
                adapter = carlistadapter;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03002b);
        ((TitleBar)findViewById(0x7f0901fd)).init(this, DisplayStrings.DS_SELECT_YOUR_CAR);
        mywazeManager.getUserCar(new com.waze.mywaze.MyWazeNativeManager.UserCarCallback() {

            final CarsActivity this$0;

            public void onUserCar(String s)
            {
                init(s);
            }

            
            {
                this$0 = CarsActivity.this;
                super();
            }
        });
    }


}
