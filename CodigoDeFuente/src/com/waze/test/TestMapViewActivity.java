// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import android.os.Bundle;
import com.waze.MapView;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.DriveToNativeManager;
import com.waze.view.title.TitleBar;

public class TestMapViewActivity extends ActivityBase
{

    private MapView mMapView;
    private final RunnableExecutor mNativeCanvasReadyEvent = new RunnableExecutor() {

        final TestMapViewActivity this$0;

        public void event()
        {
            DriveToNativeManager.getInstance();
        }

            
            {
                this$0 = TestMapViewActivity.this;
                super();
            }
    };

    public TestMapViewActivity()
    {
        mMapView = null;
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03011a);
        ((TitleBar)findViewById(0x7f090283)).init(this, "Test MapView");
        mMapView = (MapView)findViewById(0x7f090722);
        mMapView.setNativeCanvasReadyEvent(mNativeCanvasReadyEvent);
    }

    public void onPause()
    {
        super.onPause();
        mMapView.onPause();
    }

    public void onResume()
    {
        super.onResume();
        mMapView.onResume();
    }
}
