// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MapView;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.MajorEventOnRoute;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.tabs.TabBar;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.routes:
//            AlternativeRoute, RoutesActivity

public class RoutesMapActivity extends ActivityBase
{

    private DriveToNativeManager driveToNativeManager;
    private MapView mapView;
    private NativeManager nativeManager;
    protected AlternativeRoute routes[];
    private int selected;

    public RoutesMapActivity()
    {
        selected = -1;
    }

    private void onSelect(int i)
    {
        if (routes.length <= i)
        {
            return;
        }
        if (getResources().getConfiguration().orientation != 2);
        selected = i;
        driveToNativeManager.highlightRoute(selected);
        findViewById(0x7f0905b6).setVisibility(0);
        findViewById(0x7f09059c).setVisibility(0);
        String s = nativeManager.getLanguageString(DisplayStrings.DS_VIA);
        if (nativeManager.getLanguageRtl())
        {
            ((TextView)findViewById(0x7f09059c)).setGravity(5);
        } else
        {
            ((TextView)findViewById(0x7f09059c)).setGravity(3);
        }
        ((TextView)findViewById(0x7f09059c)).setText((new StringBuilder(String.valueOf(s))).append(": ").append(routes[selected].description).toString());
    }

    private void populateData(int i, boolean flag)
    {
        TabBar tabbar = (TabBar)findViewById(0x7f0905b4);
        if (routes.length == 1)
        {
            tabbar.setEnabled(1, false);
            tabbar.setText(1, "");
            tabbar.setEnabled(2, false);
            tabbar.setText(2, "");
        } else
        if (routes.length == 2)
        {
            tabbar.setEnabled(2, false);
            tabbar.setText(2, "");
        }
        if (routes.length > 0)
        {
            tabbar.setText(0, (new StringBuilder()).append(routes[0].time / 60).append(nativeManager.getLanguageString(DisplayStrings.DS_MIN_)).toString());
        }
        if (routes.length > 1)
        {
            tabbar.setText(1, (new StringBuilder()).append(routes[1].time / 60).append(nativeManager.getLanguageString(DisplayStrings.DS_MIN_)).toString());
        }
        if (routes.length > 2)
        {
            tabbar.setText(2, (new StringBuilder()).append(routes[2].time / 60).append(nativeManager.getLanguageString(DisplayStrings.DS_MIN_)).toString());
        }
        onSelect(i);
        if (flag)
        {
            driveToNativeManager.highlightRoute(-1);
            return;
        } else
        {
            driveToNativeManager.highlightRoute(i);
            return;
        }
    }

    private void routeConfirmed()
    {
        driveToNativeManager.selectAlternativeRoute(selected);
        setResult(-1);
        finish();
    }

    public void onConfigurationChanged(Configuration configuration)
    {
        super.onConfigurationChanged(configuration);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f0300d2);
        nativeManager = AppService.getNativeManager();
        driveToNativeManager = DriveToNativeManager.getInstance();
        if (bundle != null)
        {
            routes = (AlternativeRoute[])bundle.getParcelableArray((new StringBuilder(String.valueOf(getClass().getName()))).append(".routes").toString());
            selected = bundle.getInt((new StringBuilder(String.valueOf(getClass().getName()))).append(".selected").toString());
        }
        mapView = (MapView)findViewById(0x7f0905b3);
        TitleBar titlebar = (TitleBar)findViewById(0x7f090058);
        titlebar.init(this, DisplayStrings.DS_ROUTES, DisplayStrings.DS_LIST);
        titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final RoutesMapActivity this$0;

            public void onClick(View view)
            {
                setResult(-1);
                finish();
                Intent intent = new Intent(RoutesMapActivity.this, com/waze/routes/RoutesActivity);
                startActivity(intent);
            }

            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0905b7)).setText(nativeManager.getLanguageString(DisplayStrings.DS_GO));
        findViewById(0x7f0905b6).setOnClickListener(new android.view.View.OnClickListener() {

            final RoutesMapActivity this$0;

            public void onClick(View view)
            {
                if (routes[selected].closure)
                {
                    MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativeManager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), nativeManager.getLanguageString(DisplayStrings.DS_ALTERNATIVE_CLOSURE_SELECTED), false, new android.content.DialogInterface.OnClickListener() {

                        final _cls2 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            if (i == 1)
                            {
                                routeConfirmed();
                            }
                        }

            
            {
                this$1 = _cls2.this;
                super();
            }
                    }, nativeManager.getLanguageString(DisplayStrings.DS_YES), nativeManager.getLanguageString(DisplayStrings.DS_NO), -1);
                    return;
                } else
                {
                    routeConfirmed();
                    return;
                }
            }


            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
        });
        TabBar tabbar;
        if (routes == null)
        {
            driveToNativeManager.getAlternativeRoutes(new com.waze.navigate.DriveToNativeManager.AlternativeRoutesListener() {

                final RoutesMapActivity this$0;

                public void onComplete(AlternativeRoute aalternativeroute[])
                {
                    routes = aalternativeroute;
                    populateData(0, true);
                }

            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
            });
            driveToNativeManager.getMajorEventsOnRoute(new com.waze.navigate.DriveToNativeManager.MajorEventsOnRouteListener() {

                final RoutesMapActivity this$0;

                public void onComplete(MajorEventOnRoute amajoreventonroute[])
                {
                    if (amajoreventonroute == null) goto _L2; else goto _L1
_L1:
                    int i;
                    int j;
                    i = amajoreventonroute.length;
                    j = 0;
_L6:
                    if (j < i) goto _L3; else goto _L2
_L2:
                    return;
_L3:
                    MajorEventOnRoute majoreventonroute = amajoreventonroute[j];
                    if (majoreventonroute.alertType != 12) goto _L5; else goto _L4
_L4:
                    int k = 0;
_L7:
                    if (k < routes.length)
                    {
label0:
                        {
                            if (majoreventonroute.alertRouteId != routes[k].id)
                            {
                                break label0;
                            }
                            routes[k].closure = true;
                        }
                    }
_L5:
                    j++;
                      goto _L6
                    k++;
                      goto _L7
                }

            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
            });
        } else
        {
            populateData(selected, false);
        }
        tabbar = (TabBar)findViewById(0x7f0905b4);
        tabbar.setAltRoutesTabs();
        tabbar.setListener(new com.waze.view.tabs.TabBar.IOnTabClickListener() {

            final RoutesMapActivity this$0;

            public void onClick(int i)
            {
                onSelect(i);
            }

            
            {
                this$0 = RoutesMapActivity.this;
                super();
            }
        });
    }

    public void onPause()
    {
        super.onPause();
        mapView.onPause();
        driveToNativeManager.unsetAlternativeRoutesView();
    }

    public void onResume()
    {
        super.onResume();
        mapView.onResume();
        driveToNativeManager.setAlternativeRoutesView();
    }

    protected void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putParcelableArray((new StringBuilder(String.valueOf(getClass().getName()))).append(".routes").toString(), routes);
        bundle.putInt((new StringBuilder(String.valueOf(getClass().getName()))).append(".selected").toString(), selected);
    }





}
