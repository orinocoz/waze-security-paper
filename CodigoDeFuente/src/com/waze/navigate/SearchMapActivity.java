// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import com.waze.MapView;
import com.waze.MapViewWrapper;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager

public class SearchMapActivity extends ActivityBase
{

    private String category;
    private DriveToNativeManager driveToNativeManager;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final SearchMapActivity this$0;

        public void event()
        {
            driveToNativeManager.setSearchMapView();
            driveToNativeManager.setSearchResultPins(category, provider);
        }

            
            {
                this$0 = SearchMapActivity.this;
                super();
            }
    };
    private MapViewWrapper mapView;
    private String provider;

    public SearchMapActivity()
    {
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300de);
        category = getIntent().getExtras().getString("category");
        provider = getIntent().getExtras().getString("provider");
        driveToNativeManager = DriveToNativeManager.getInstance();
        mapView = (MapViewWrapper)findViewById(0x7f090202);
        mapView.getMapView().setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.init(this, DisplayStrings.DS_SEARCH_RESULTS);
        titlebar.setCloseText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_LIST));
        titlebar.setCloseResultCode(2);
    }

    public void onPause()
    {
        super.onPause();
        mapView.onPause();
        driveToNativeManager.unsetSearchMapView();
    }

    public void onResume()
    {
        super.onResume();
        mapView.onResume();
    }



}
