// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.AdapterView;
import android.widget.ListView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.main.navigate.EventOnRoute;
import com.waze.main.navigate.MajorEventOnRoute;
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.routes:
//            RouteAdapter, AlternativeRoute, RoutesMapActivity

public class RoutesActivity extends ActivityBase
{

    protected static final int MAP_ACTIVITY_CODE = 1000;
    private DriveToNativeManager driveToNativeManager;
    protected EventOnRoute events[];
    private boolean gotEvents;
    private boolean gotMajorEvents;
    private boolean gotRoutes;
    protected MajorEventOnRoute majorEvents[];
    private NativeManager nativeManager;
    private RouteAdapter routeAdapter;
    private ListView routeList;
    private AlternativeRoute routes[];

    public RoutesActivity()
    {
        gotRoutes = false;
        gotEvents = false;
        gotMajorEvents = false;
    }

    private void invalidateRoutes()
    {
        if (gotMajorEvents && gotEvents && gotRoutes)
        {
            routeAdapter.setEvents(events);
            routeAdapter.setMajorEvents(majorEvents);
            routeAdapter.setRoutes(routes);
            routeList.invalidateViews();
        }
    }

    private void markClosure()
    {
        if (!gotMajorEvents || majorEvents == null || routes == null) goto _L2; else goto _L1
_L1:
        MajorEventOnRoute amajoreventonroute[];
        int i;
        int j;
        amajoreventonroute = majorEvents;
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

    private void onRouteSelected(final int position)
    {
        if (routes == null || position >= routes.length)
        {
            return;
        }
        if (routes[position].closure)
        {
            MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativeManager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), nativeManager.getLanguageString(DisplayStrings.DS_ALTERNATIVE_CLOSURE_SELECTED), false, new android.content.DialogInterface.OnClickListener() {

                final RoutesActivity this$0;
                private final int val$position;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    if (i == 1)
                    {
                        routeConfirmed(position);
                    }
                }

            
            {
                this$0 = RoutesActivity.this;
                position = i;
                super();
            }
            }, nativeManager.getLanguageString(DisplayStrings.DS_YES), nativeManager.getLanguageString(DisplayStrings.DS_NO), -1);
            return;
        } else
        {
            routeConfirmed(position);
            return;
        }
    }

    private void routeConfirmed(int i)
    {
        driveToNativeManager.selectAlternativeRoute(i);
        finish();
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

    public void onBackPressed()
    {
        driveToNativeManager.onAlternativeRoutesClosed();
        super.onBackPressed();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f0300d1);
        nativeManager = AppService.getNativeManager();
        driveToNativeManager = DriveToNativeManager.getInstance();
        TitleBar titlebar = (TitleBar)findViewById(0x7f090283);
        titlebar.init(this, DisplayStrings.DS_ROUTES, DisplayStrings.DS_MAP);
        titlebar.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final RoutesActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(RoutesActivity.this, com/waze/routes/RoutesMapActivity);
                startActivityForResult(intent, 1000);
            }

            
            {
                this$0 = RoutesActivity.this;
                super();
            }
        });
        routeAdapter = new RouteAdapter(this);
        routeList = (ListView)findViewById(0x7f0905b2);
        routeList.setAdapter(routeAdapter);
        routeList.setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final RoutesActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                onRouteSelected(i);
            }

            
            {
                this$0 = RoutesActivity.this;
                super();
            }
        });
        driveToNativeManager.getAlternativeRoutes(new com.waze.navigate.DriveToNativeManager.AlternativeRoutesListener() {

            final RoutesActivity this$0;

            public void onComplete(AlternativeRoute aalternativeroute[])
            {
                routes = aalternativeroute;
                gotRoutes = true;
                invalidateRoutes();
            }

            
            {
                this$0 = RoutesActivity.this;
                super();
            }
        });
        driveToNativeManager.getEventsOnRoute(new com.waze.navigate.DriveToNativeManager.EventsOnRouteListener() {

            final RoutesActivity this$0;

            public void onComplete(EventOnRoute aeventonroute[])
            {
                events = aeventonroute;
                gotEvents = true;
                invalidateRoutes();
            }

            
            {
                this$0 = RoutesActivity.this;
                super();
            }
        });
        driveToNativeManager.getMajorEventsOnRoute(new com.waze.navigate.DriveToNativeManager.MajorEventsOnRouteListener() {

            final RoutesActivity this$0;

            public void onComplete(MajorEventOnRoute amajoreventonroute[])
            {
                majorEvents = amajoreventonroute;
                gotMajorEvents = true;
                markClosure();
                invalidateRoutes();
            }

            
            {
                this$0 = RoutesActivity.this;
                super();
            }
        });
    }








}
