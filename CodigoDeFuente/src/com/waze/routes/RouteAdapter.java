// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.routes;

import android.content.Context;
import android.os.Handler;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListAdapter;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.main.navigate.EventOnRoute;
import com.waze.main.navigate.MajorEventOnRoute;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AnimationUtils;

// Referenced classes of package com.waze.routes:
//            AlternativeRoute

public class RouteAdapter extends BaseAdapter
    implements ListAdapter
{
    static class ViewHolder
    {

        public TextView description;
        public TextView distanceUnits;
        public TextView distanceValue;
        public TextView goText;
        public TextView index;
        public ImageView preferred;
        public TextView timeHoursUnits;
        public TextView timeHoursValue;
        public TextView timeMinutesUnits;
        public TextView timeMinutesValue;
        public TextView toll;

        ViewHolder()
        {
        }
    }


    private static final int TRAFFIC_EVENT_ANIMATION_DURATION = 500;
    private Context context;
    private EventOnRoute events[];
    private Handler handler;
    private LayoutInflater inflater;
    private MajorEventOnRoute majorEvents[];
    private NativeManager nativeManager;
    private AlternativeRoute routes[];

    public RouteAdapter(Context context1)
    {
        handler = new Handler();
        context = context1;
        inflater = LayoutInflater.from(context1);
        nativeManager = AppService.getNativeManager();
    }

    private View getRouteView(int i, View view)
    {
        ViewHolder viewholder;
        final View myView;
        String s;
        final AlternativeRoute route;
        String s1;
        int j;
        String s2;
        String s3;
        if (view == null || view.findViewById(0x7f09059a) == null)
        {
            view = inflater.inflate(0x7f0300cf, null);
            viewholder = new ViewHolder();
            viewholder.index = (TextView)view.findViewById(0x7f09059a);
            viewholder.description = (TextView)view.findViewById(0x7f09059d);
            viewholder.toll = (TextView)view.findViewById(0x7f09059e);
            viewholder.distanceValue = (TextView)view.findViewById(0x7f090492);
            viewholder.distanceUnits = (TextView)view.findViewById(0x7f090493);
            viewholder.timeHoursValue = (TextView)view.findViewById(0x7f0905a0);
            viewholder.timeHoursUnits = (TextView)view.findViewById(0x7f0905a1);
            viewholder.timeMinutesValue = (TextView)view.findViewById(0x7f0905a2);
            viewholder.timeMinutesUnits = (TextView)view.findViewById(0x7f0905a3);
            viewholder.goText = (TextView)view.findViewById(0x7f09059f);
            viewholder.preferred = (ImageView)view.findViewById(0x7f09059b);
            view.setTag(viewholder);
        } else
        {
            viewholder = (ViewHolder)view.getTag();
        }
        myView = view;
        viewholder.index.setText((new StringBuilder()).append(i + 1).toString());
        viewholder.goText.setText(nativeManager.getLanguageString(DisplayStrings.DS_GO));
        s = nativeManager.getLanguageString(DisplayStrings.DS_VIA);
        route = routes[i];
        s1 = nativeManager.getLanguageString(route.description);
        viewholder.description.setText((new StringBuilder(String.valueOf(s))).append(": ").append(s1).toString());
        if (route.distanceRound < 100)
        {
            viewholder.distanceValue.setText((new StringBuilder()).append(route.distanceRound).append(".").append(route.distanceTenths).toString());
        } else
        {
            viewholder.distanceValue.setText((new StringBuilder()).append(route.distanceRound).toString());
        }
        viewholder.toll.setText(nativeManager.getLanguageString(DisplayStrings.DS_TOLL));
        viewholder.distanceUnits.setText(route.distanceUnits);
        j = route.time / 60;
        s2 = nativeManager.getLanguageString(DisplayStrings.DS_MIN_);
        viewholder.timeMinutesUnits.setText(s2);
        s3 = nativeManager.getLanguageString(DisplayStrings.DS_H);
        viewholder.timeHoursUnits.setText(s3);
        if (j > 60)
        {
            viewholder.timeMinutesValue.setText((new StringBuilder()).append(j % 60).toString());
            viewholder.timeHoursValue.setText((new StringBuilder()).append(j / 60).toString());
            viewholder.timeHoursUnits.setVisibility(0);
            viewholder.timeHoursValue.setVisibility(0);
        } else
        {
            viewholder.timeMinutesValue.setText((new StringBuilder()).append(j).toString());
            viewholder.timeHoursUnits.setVisibility(8);
            viewholder.timeHoursValue.setVisibility(8);
        }
        if (route.preferred)
        {
            viewholder.preferred.setVisibility(0);
        } else
        {
            viewholder.preferred.setVisibility(8);
        }
        if (route.toll)
        {
            viewholder.toll.setVisibility(0);
        } else
        {
            viewholder.toll.setVisibility(8);
        }
        populateMajorEventsOnRoute(myView, route);
        handler.postDelayed(new Runnable() {

            final RouteAdapter this$0;
            private final View val$myView;
            private final AlternativeRoute val$route;

            public void run()
            {
                populateEventsOnRoute(myView, route);
            }

            
            {
                this$0 = RouteAdapter.this;
                myView = view;
                route = alternativeroute;
                super();
            }
        }, 500L);
        return view;
    }

    private View getStaticView(View view)
    {
        if (view == null || view.findViewById(0x7f0905b0) == null)
        {
            view = inflater.inflate(0x7f0300d0, null);
        }
        String s = nativeManager.getLanguageString(DisplayStrings.DS_YOUR_PREFERRED_ROUTE);
        ((TextView)view.findViewById(0x7f0905b0)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_TIPC_TEACH_WAZE_YOUR_PREFERRED_ROUTES_BY_SIMPLY_DRIVING_THEM_SEVERAL_TIMES_);
        ((TextView)view.findViewById(0x7f0905b1)).setText(s1);
        return view;
    }

    private void populateEventsOnRoute(View view, AlternativeRoute alternativeroute)
    {
        if (events != null)
        {
            RelativeLayout relativelayout = (RelativeLayout)view.findViewById(0x7f0905a5);
            RelativeLayout relativelayout1 = (RelativeLayout)view.findViewById(0x7f0905a6);
            int i = relativelayout.getMeasuredWidth();
            EventOnRoute aeventonroute[] = events;
            int j = aeventonroute.length;
            int k = 0;
            while (k < j) 
            {
                EventOnRoute eventonroute = aeventonroute[k];
                if (eventonroute != null && eventonroute.alertRouteId == alternativeroute.id)
                {
                    if (eventonroute.alertType == 4)
                    {
                        android.widget.RelativeLayout.LayoutParams layoutparams = new android.widget.RelativeLayout.LayoutParams((int)((double)(i * (eventonroute.end - eventonroute.start)) / 100D), -1);
                        ImageView imageview = new ImageView(context);
                        layoutparams.setMargins((int)(((double)eventonroute.start / 100D) * (double)i), 0, 0, 0);
                        imageview.setScaleType(android.widget.ImageView.ScaleType.FIT_XY);
                        if (eventonroute.severity == 2)
                        {
                            imageview.setImageResource(0x7f02041b);
                        } else
                        if (eventonroute.severity == 1)
                        {
                            imageview.setImageResource(0x7f02041a);
                        } else
                        if (eventonroute.severity == 0)
                        {
                            imageview.setImageResource(0x7f020419);
                        }
                        imageview.setLayoutParams(layoutparams);
                        relativelayout.addView(imageview);
                        AnimationUtils.stretchViewHorizontally(imageview, 500);
                    } else
                    {
                        int l;
                        android.widget.RelativeLayout.LayoutParams layoutparams1;
                        double d;
                        ImageView imageview1;
                        if (eventonroute.alertType == 1)
                        {
                            l = 0x7f02002b;
                        } else
                        if (eventonroute.alertType == 2)
                        {
                            l = 0x7f020026;
                        } else
                        if (eventonroute.alertType == 3)
                        {
                            l = 0x7f020029;
                        } else
                        if (eventonroute.alertType == 5)
                        {
                            l = 0x7f020028;
                        } else
                        if (eventonroute.alertType == 12)
                        {
                            l = 0x7f020333;
                        } else
                        {
                            l = 0x7f02002a;
                        }
                        layoutparams1 = new android.widget.RelativeLayout.LayoutParams(-2, -2);
                        d = eventonroute.start;
                        if (d > 85D)
                        {
                            d = 85D;
                        }
                        imageview1 = new ImageView(context);
                        layoutparams1.setMargins((int)((d / 100D) * (double)i), 0, 0, 0);
                        imageview1.setImageResource(l);
                        imageview1.setLayoutParams(layoutparams1);
                        relativelayout1.addView(imageview1);
                        AnimationUtils.overshootCustomPopView(imageview1);
                    }
                }
                k++;
            }
        }
    }

    private void populateMajorEventsOnRoute(View view, AlternativeRoute alternativeroute)
    {
        View view1;
        MajorEventOnRoute amajoreventonroute[];
        int i;
        int j;
        view1 = view.findViewById(0x7f0905a7);
        if (majorEvents == null)
        {
            view1.setVisibility(8);
            return;
        }
        amajoreventonroute = majorEvents;
        i = amajoreventonroute.length;
        j = 0;
_L2:
        MajorEventOnRoute majoreventonroute;
        if (j >= i)
        {
            view1.setVisibility(8);
            return;
        }
        majoreventonroute = amajoreventonroute[j];
          goto _L1
_L4:
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        if (majoreventonroute.alertRouteId != alternativeroute.id || majoreventonroute.alertType != 12) goto _L4; else goto _L3
_L3:
        view1.setVisibility(0);
        ((TextView)view1.findViewById(0x7f0905a9)).setText(majoreventonroute.description);
        ((TextView)view1.findViewById(0x7f0905aa)).setText(majoreventonroute.time);
        ((TextView)view1.findViewById(0x7f0905ab)).setText(majoreventonroute.reported);
        ((TextView)view1.findViewById(0x7f0905ae)).setText(majoreventonroute.dueto);
        ((TextView)view1.findViewById(0x7f0905ac)).setText(majoreventonroute.thanked);
        ((TextView)view1.findViewById(0x7f0905ad)).setText(majoreventonroute.duration);
        return;
    }

    public int getCount()
    {
        if (routes == null)
        {
            return 0;
        } else
        {
            return 1 + routes.length;
        }
    }

    public Object getItem(int i)
    {
        return null;
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (i == routes.length)
        {
            return getStaticView(view);
        } else
        {
            return getRouteView(i, view);
        }
    }

    public void setEvents(EventOnRoute aeventonroute[])
    {
        events = aeventonroute;
    }

    public void setMajorEvents(MajorEventOnRoute amajoreventonroute[])
    {
        majorEvents = amajoreventonroute;
    }

    public void setRoutes(AlternativeRoute aalternativeroute[])
    {
        routes = aalternativeroute;
    }

}
