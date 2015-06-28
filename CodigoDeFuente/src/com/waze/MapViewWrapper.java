// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.widget.RelativeLayout;
import com.waze.view.popups.DetailsPopUp;

// Referenced classes of package com.waze:
//            MapView, AppService

public final class MapViewWrapper extends RelativeLayout
{

    private MapView mapView;

    public MapViewWrapper(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030081, this);
        mapView = (MapView)findViewById(0x7f0903f4);
        boolean flag = context.obtainStyledAttributes(attributeset, R.styleable.MainView).getBoolean(0, true);
        mapView.setHandleKeys(flag);
    }

    public void closeDetailsPopup()
    {
        DetailsPopUp detailspopup;
        if (DetailsPopUp.hasInstance())
        {
            if ((detailspopup = DetailsPopUp.getInstance(getContext())).isShown())
            {
                detailspopup.closeNow();
                return;
            }
        }
    }

    public MapView getMapView()
    {
        return mapView;
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        return mapView.onKeyDown(i, keyevent);
    }

    public void onPause()
    {
        DetailsPopUp.getInstance(getContext()).hide();
        AppService.setActiveMapViewWrapper(null);
        mapView.onPause();
    }

    public void onResume()
    {
        AppService.setActiveMapViewWrapper(this);
        mapView.onResume();
    }

    public void showDetailsPopup(int i, int j, String s, String s1, String s2, boolean flag, String s3)
    {
        DetailsPopUp.getInstance(getContext()).show(i, j, s, s1, s2, flag, s3);
    }

    public void updateDetailsPopup(int i, int j)
    {
        DetailsPopUp detailspopup;
        if (DetailsPopUp.hasInstance())
        {
            if ((detailspopup = DetailsPopUp.getInstance(getContext())).isShown())
            {
                detailspopup.update(i, j);
                return;
            }
        }
    }
}
