// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.bottom;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.Animation;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.social.MyFriendsActivity;
import com.waze.rtalerts.RTAlertsMenu;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AxisFlipper;
import com.waze.view.navbar.BottomBar;

// Referenced classes of package com.waze.view.bottom:
//            BottomNotificationOnClickIntent

public class BottomNotification extends RelativeLayout
{

    private static int $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent[];
    private static BottomNotification inst;
    private boolean NAmessageShown;
    private boolean animating;
    private BottomBar bottomBar;
    private Context context;
    private boolean hidable;
    private boolean initialized;
    private View longView;
    private android.view.View.OnClickListener mListener;
    private View nearbyView;
    private TextView points;
    private String pointsString;
    private TextView pointsTitle;
    private int refCount;
    private View rightSide;
    private View seperator;
    private TextView shortMessage;
    private TextView text;
    private TextView title;

    static int[] $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent()
    {
        int ai[] = $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[BottomNotificationOnClickIntent.values().length];
        try
        {
            ai1[BottomNotificationOnClickIntent.MY_FRIENDS_ACTIVITY.ordinal()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[BottomNotificationOnClickIntent.MY_WAZE_ACTIVITY.ordinal()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[BottomNotificationOnClickIntent.NONE.ordinal()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[BottomNotificationOnClickIntent.RT_ALERTS_MENU.ordinal()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        $SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent = ai1;
        return ai1;
    }

    public BottomNotification(Context context1, AttributeSet attributeset)
    {
        super(context1, attributeset);
        NAmessageShown = false;
        mListener = null;
        ((LayoutInflater)context1.getSystemService("layout_inflater")).inflate(0x7f030027, this);
        context = context1;
        title = (TextView)findViewById(0x7f0901d2);
        seperator = findViewById(0x7f0901d3);
        text = (TextView)findViewById(0x7f0901d4);
        rightSide = findViewById(0x7f0901d5);
        points = (TextView)findViewById(0x7f0901d6);
        pointsTitle = (TextView)findViewById(0x7f0901d7);
        shortMessage = (TextView)findViewById(0x7f0901cd);
        longView = findViewById(0x7f0901d1);
        nearbyView = findViewById(0x7f0901ce);
        findViewById(0x7f0901cc).setOnClickListener(new android.view.View.OnClickListener() {

            final BottomNotification this$0;

            public void onClick(View view)
            {
                if (mListener != null)
                {
                    mListener.onClick(view);
                }
                close();
            }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
        });
        inst = this;
        animating = false;
    }

    private void close()
    {
        if (getVisibility() != 8 && !animating)
        {
            if (bottomBar.unhide())
            {
                setVisibility(8);
            } else
            {
                AxisFlipper axisflipper = new AxisFlipper(0.0D, 90D, 0.0D, 0.0D, 0.0D, 0.0D, 0.5D, 0.5D);
                axisflipper.setDuration(250L);
                axisflipper.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                    final BottomNotification this$0;

                    public void onAnimationEnd(Animation animation)
                    {
                        setVisibility(8);
                        animating = false;
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
                });
                animating = true;
                startAnimation(axisflipper);
            }
        }
        hidable = false;
    }

    private int getIconResId(String s)
    {
        String s1 = (new StringBuilder("drawable/")).append(s.replace("-", "_").replace("+", "_").toLowerCase()).toString();
        return getResources().getIdentifier(s1, null, context.getPackageName());
    }

    private native void initNTV();

    public static void initNative()
    {
        if (inst != null)
        {
            inst.initNTV();
        }
    }

    private void open(int i)
    {
        Log.d("WAZE", (new StringBuilder("opening bottom notification for ")).append(i).append(" seconds").toString());
        if (animating)
        {
            clearAnimation();
            setVisibility(8);
            animating = false;
        }
        if (getVisibility() != 0 && bottomBar != null)
        {
            bottomBar.hide(false);
            AxisFlipper axisflipper = new AxisFlipper(90D, 0.0D, 0.0D, 0.0D, 0.0D, 0.0D, 0.5D, 0.5D);
            axisflipper.setDuration(250L);
            setVisibility(0);
            startAnimation(axisflipper);
        }
        refCount = 1 + refCount;
        if (i != -1)
        {
            postDelayed(new Runnable() {

                final BottomNotification this$0;

                public void run()
                {
                    closeBottom();
                }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
            }, i * 1000);
        }
    }

    public void closeBottom()
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;

            public void run()
            {
                Log.d("WAZE", (new StringBuilder("timeout for bottom notification. ref count is ")).append(refCount).toString());
                BottomNotification bottomnotification = BottomNotification.this;
                int i = -1 + bottomnotification.refCount;
                bottomnotification.refCount = i;
                if (i == 0)
                {
                    close();
                }
            }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
        });
    }

    public void displayBottomPrivacyMessage()
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;

            public void run()
            {
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().getLayoutMgr().displayBottomPrivacyMessage();
                }
            }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
        });
    }

    public void hide(boolean flag)
    {
        if (hidable)
        {
            close();
        }
    }

    public void init()
    {
        if (!initialized)
        {
            initialized = true;
            refCount = 0;
            hidable = false;
            NativeManager nativemanager = NativeManager.getInstance();
            pointsString = nativemanager.getLanguageString(DisplayStrings.DS_POINTSE);
            if (nativemanager.getLanguageRtl())
            {
                text.setVisibility(8);
                text = (TextView)findViewById(0x7f0901d8);
                text.setVisibility(0);
            }
            if (nativemanager.getMainActivity() != null && nativemanager.getMainActivity().getLayoutMgr() != null)
            {
                bottomBar = nativemanager.getMainActivity().getLayoutMgr().getBottomBar();
                return;
            }
        }
    }

    public boolean isHidable()
    {
        return hidable;
    }

    public void postLongMessageIcon(final String title, final String message, final String icon, final int timeout)
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;
            private final String val$icon;
            private final String val$message;
            private final int val$timeout;
            private final String val$title;

            public void run()
            {
                setLongMessageIcon(title, message, icon, timeout);
            }

            
            {
                this$0 = BottomNotification.this;
                title = s;
                message = s1;
                icon = s2;
                timeout = i;
                super();
            }
        });
    }

    public void postLongMessagePoints(final String title, final String message, final int points, final int timeout)
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;
            private final String val$message;
            private final int val$points;
            private final int val$timeout;
            private final String val$title;

            public void run()
            {
                setLongMessagePoints(title, message, points, timeout);
            }

            
            {
                this$0 = BottomNotification.this;
                title = s;
                message = s1;
                points = i;
                timeout = j;
                super();
            }
        });
    }

    public void postMessage(final String message, final int timeout)
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;
            private final String val$message;
            private final int val$timeout;

            private void disableOnClickListenerIfOfflineRouteMessage(String s)
            {
                if (s.equalsIgnoreCase(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BottomBar_OFFLINE_ROUTE)))
                {
                    setListener(BottomNotificationOnClickIntent.NONE);
                }
            }

            public void run()
            {
                disableOnClickListenerIfOfflineRouteMessage(message);
                setShortMessage(message, timeout);
            }

            
            {
                this$0 = BottomNotification.this;
                message = s;
                timeout = i;
                super();
            }
        });
    }

    public void postMessageIcon(final String message, final String icon, final int timeout)
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;
            private final String val$icon;
            private final String val$message;
            private final int val$timeout;

            public void run()
            {
                setShortMessageIcon(message, icon, timeout);
            }

            
            {
                this$0 = BottomNotification.this;
                message = s;
                icon = s1;
                timeout = i;
                super();
            }
        });
    }

    public void postNearbyMessage(final String message, final String messageBody, final int timeout)
    {
        AppService.Post(new Runnable() {

            final BottomNotification this$0;
            private final boolean val$isClosureEnabled;
            private final boolean val$isFoursquareEnabled;
            private final boolean val$isRandomUser;
            private final String val$message;
            private final String val$messageBody;
            private final int val$timeout;

            public void run()
            {
                setNearByMessage(message, messageBody, timeout, isRandomUser, isFoursquareEnabled, isClosureEnabled);
            }

            
            {
                this$0 = BottomNotification.this;
                message = s;
                messageBody = s1;
                timeout = i;
                isRandomUser = flag;
                isFoursquareEnabled = flag1;
                isClosureEnabled = flag2;
                super();
            }
        });
    }

    public void setListener(BottomNotificationOnClickIntent bottomnotificationonclickintent)
    {
        switch ($SWITCH_TABLE$com$waze$view$bottom$BottomNotificationOnClickIntent()[bottomnotificationonclickintent.ordinal()])
        {
        default:
            mListener = null;
            return;

        case 2: // '\002'
            mListener = new android.view.View.OnClickListener() {

                final BottomNotification this$0;

                public void onClick(View view)
                {
                    Intent intent = new Intent(getContext(), com/waze/rtalerts/RTAlertsMenu);
                    if (AppService.getMainActivity() != null)
                    {
                        AppService.getMainActivity().startActivityForResult(intent, 32773);
                    }
                }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
            };
            return;

        case 3: // '\003'
            mListener = new android.view.View.OnClickListener() {

                final BottomNotification this$0;

                public void onClick(View view)
                {
                    Intent intent = new Intent(AppService.getAppContext(), com/waze/navigate/social/MyFriendsActivity);
                    intent.putExtra("type", 0);
                    AppService.getMainActivity().startActivityForResult(intent, 1);
                }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
            };
            return;

        case 4: // '\004'
            mListener = new android.view.View.OnClickListener() {

                final BottomNotification this$0;

                public void onClick(View view)
                {
                    MyWazeNativeManager.getInstance().launchMyWaze(context);
                }

            
            {
                this$0 = BottomNotification.this;
                super();
            }
            };
            break;
        }
    }

    public void setLongMessageIcon(String s, String s1, String s2, int i)
    {
        init();
        longView.setVisibility(0);
        shortMessage.setVisibility(8);
        nearbyView.setVisibility(8);
        title.setVisibility(0);
        seperator.setVisibility(0);
        rightSide.setVisibility(0);
        points.setVisibility(8);
        pointsTitle.setVisibility(8);
        title.setText(s);
        text.setText(s1);
        rightSide.setBackgroundResource(getIconResId(s2));
        open(i);
    }

    public void setLongMessagePoints(String s, String s1, int i, int j)
    {
        init();
        longView.setVisibility(0);
        shortMessage.setVisibility(8);
        nearbyView.setVisibility(8);
        title.setVisibility(0);
        seperator.setVisibility(0);
        rightSide.setVisibility(0);
        points.setVisibility(0);
        pointsTitle.setVisibility(0);
        title.setText(s);
        text.setText(s1);
        rightSide.setBackgroundResource(0);
        points.setText(String.valueOf(i));
        pointsTitle.setText(pointsString);
        open(j);
    }

    public void setNearByMessage(String s, String s1, int i, boolean flag, boolean flag1, boolean flag2)
    {
        init();
        longView.setVisibility(8);
        nearbyView.setVisibility(0);
        shortMessage.setVisibility(8);
        if (s == null)
        {
            ((TextView)findViewById(0x7f0901cf)).setVisibility(8);
            setListener(BottomNotificationOnClickIntent.RT_ALERTS_MENU);
        } else
        {
            ((TextView)findViewById(0x7f0901cf)).setVisibility(0);
            ((TextView)findViewById(0x7f0901cf)).setText(s);
            setListener(BottomNotificationOnClickIntent.MY_FRIENDS_ACTIVITY);
        }
        if (s1 == null)
        {
            ((TextView)findViewById(0x7f0901d0)).setVisibility(8);
        } else
        {
            ((TextView)findViewById(0x7f0901d0)).setVisibility(0);
            ((TextView)findViewById(0x7f0901d0)).setText(s1);
        }
        hidable = true;
        nearbyView.setPadding(25, 10, 25, 10);
        open(i);
    }

    public void setShortMessage(String s, int i)
    {
        init();
        longView.setVisibility(8);
        nearbyView.setVisibility(8);
        shortMessage.setVisibility(0);
        shortMessage.setText(s);
        hidable = true;
        open(i);
    }

    public void setShortMessageIcon(String s, String s1, int i)
    {
        init();
        longView.setVisibility(0);
        shortMessage.setVisibility(8);
        nearbyView.setVisibility(8);
        title.setVisibility(8);
        seperator.setVisibility(8);
        rightSide.setVisibility(0);
        points.setVisibility(8);
        pointsTitle.setVisibility(8);
        text.setText(s);
        rightSide.setBackgroundResource(getIconResId(s1));
        open(i);
    }






}
