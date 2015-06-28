// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.mywaze.social:
//            FoursquareVenue, FoursquareListAdapter

public class FoursquareListActivity extends ActivityBase
{

    private MyWazeNativeManager mywazeManager;

    public FoursquareListActivity()
    {
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        Bundle bundle1;
        super.onCreate(bundle);
        setContentView(0x7f030059);
        ((TitleBar)findViewById(0x7f0902c2)).init(this, DisplayStrings.DS_FOURSQUARE);
        bundle1 = getIntent().getExtras();
        if (bundle1 == null) goto _L2; else goto _L1
_L1:
        String as[];
        String as1[];
        String as2[];
        FoursquareVenue afoursquarevenue[];
        int i;
        as = bundle1.getStringArray("com.waze.mywaze.foursquare.descriptions");
        as1 = bundle1.getStringArray("com.waze.mywaze.foursquare.addresses");
        as2 = bundle1.getStringArray("com.waze.mywaze.foursquare.distances");
        afoursquarevenue = new FoursquareVenue[as.length];
        i = 0;
_L6:
        if (i < afoursquarevenue.length) goto _L4; else goto _L3
_L3:
        ListView listview = (ListView)findViewById(0x7f0902cb);
        listview.setAdapter(new FoursquareListAdapter(getApplicationContext(), 0x7f030058, afoursquarevenue));
        listview.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final FoursquareListActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int j, long l)
            {
                mywazeManager.selectFoursquareVenue(j);
            }

            
            {
                this$0 = FoursquareListActivity.this;
                super();
            }
        });
_L2:
        return;
_L4:
        afoursquarevenue[i] = new FoursquareVenue(as[i], as1[i], as2[i]);
        i++;
        if (true) goto _L6; else goto _L5
_L5:
    }

}
