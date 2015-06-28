// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import android.os.Bundle;
import android.widget.ListView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.main.navigate:
//            NavigationListItemAdapter, NavigationItem

public class NavigationListActivity extends ActivityBase
{

    private NavigationListItemAdapter adapter;
    private ListView list;
    private NativeManager nativeManager;

    public NavigationListActivity()
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030096);
        nativeManager = AppService.getNativeManager();
        Analytics.log("NAV LIST");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_NAVIGATION_LIST);
        nativeManager.getNavBarManager().getNavigationItems(new com.waze.NavBarManager.NavigationListListener() {

            final NavigationListActivity this$0;

            public void onComplete(NavigationItem anavigationitem[])
            {
                adapter.setItems(anavigationitem);
                list.invalidateViews();
            }

            
            {
                this$0 = NavigationListActivity.this;
                super();
            }
        });
        adapter = new NavigationListItemAdapter(this, nativeManager.getNavBarManager().getDriveOnLeft());
        list = (ListView)findViewById(0x7f090477);
        list.setAdapter(adapter);
    }


}
