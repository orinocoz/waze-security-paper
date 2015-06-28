// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.location.Location;
import android.util.DisplayMetrics;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import android.widget.ViewFlipper;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MapView;
import com.waze.MsgBox;
import com.waze.NativeLocListener;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.DriveToNativeManager;
import com.waze.roadrecording.RoadRecordingPopUp;
import com.waze.rtalerts.RTAlertsMenu;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AnimationUtils;
import com.waze.view.bottom.BottomNotification;
import com.waze.view.text.AutoResizeTextView;

// Referenced classes of package com.waze.reports:
//            ReportForm, MapIssueReport, TrafficJamReport, AddPlaceFlowActivity, 
//            ClosureMap, CameraReport, PoliceReport, AccidentReport, 
//            HazardReport, ChitchatReport

public class ReportMenu extends Dialog
{
    class ReportMenuOrganizer
    {

        private static final int ID_BASE = 100;
        final RelativeLayout _container;
        int _curNumOfItems;
        final boolean _isVertical;
        int _lastButton;
        int _lastFirstInLine;
        final int _menuSpacing;
        final int _numLines;
        final ReportMenu this$0;

        void addReportButton(String s, int i, android.view.View.OnClickListener onclicklistener)
        {
            int j = 5;
            int k = 1;
            View view = buildReportButton(s, i, onclicklistener);
            view.setId(100 + _curNumOfItems);
            int l = (int)(93F * mDensity);
            int i1;
            android.widget.RelativeLayout.LayoutParams layoutparams;
            if (_isVertical)
            {
                i1 = (int)(93F * mDensity);
            } else
            {
                i1 = (int)(85F * mDensity);
            }
            layoutparams = new android.widget.RelativeLayout.LayoutParams(l, i1);
            if (_lastButton == 0)
            {
                float f = mDensity;
                if (_isVertical)
                {
                    j = 13;
                }
                layoutparams.setMargins((int)(f * (float)j), 0, 0, 0);
                _lastFirstInLine = 100 + _curNumOfItems;
            } else
            {
                int j1;
                if (_curNumOfItems % _numLines == 0)
                {
                    j1 = k;
                } else
                {
                    j1 = 0;
                }
                if (j1 != 0)
                {
                    int i2;
                    int j2;
                    int k2;
                    if (!_isVertical)
                    {
                        j = 6;
                    }
                    layoutparams.addRule(j, _lastFirstInLine);
                    if (_isVertical)
                    {
                        i2 = 3;
                    } else
                    {
                        i2 = k;
                    }
                    layoutparams.addRule(i2, _lastFirstInLine);
                    if (_isVertical)
                    {
                        j2 = 0;
                    } else
                    {
                        j2 = _menuSpacing;
                    }
                    if (_isVertical)
                    {
                        k2 = _menuSpacing;
                    } else
                    {
                        k2 = 0;
                    }
                    layoutparams.setMargins(j2, k2, 0, 0);
                    _lastFirstInLine = 100 + _curNumOfItems;
                } else
                {
                    if (_isVertical)
                    {
                        j = 6;
                    }
                    layoutparams.addRule(j, _lastButton);
                    int k1;
                    int l1;
                    if (!_isVertical)
                    {
                        k = 3;
                    }
                    layoutparams.addRule(k, _lastButton);
                    if (_isVertical)
                    {
                        k1 = _menuSpacing;
                    } else
                    {
                        k1 = 0;
                    }
                    if (_isVertical)
                    {
                        l1 = 0;
                    } else
                    {
                        l1 = _menuSpacing;
                    }
                    layoutparams.setMargins(k1, l1, 0, 0);
                }
            }
            _lastButton = 100 + _curNumOfItems;
            _curNumOfItems = 1 + _curNumOfItems;
            _container.addView(view, layoutparams);
        }

        View buildReportButton(String s, int i, android.view.View.OnClickListener onclicklistener)
        {
            Context context = getContext();
            int j;
            LinearLayout linearlayout;
            int k;
            ImageView imageview;
            AutoResizeTextView autoresizetextview;
            android.widget.LinearLayout.LayoutParams layoutparams;
            if (_isVertical)
            {
                j = 0x7f060019;
            } else
            {
                j = 0x7f06001a;
            }
            linearlayout = new LinearLayout(context, null, j);
            linearlayout.setBackgroundResource(0x7f0201f7);
            linearlayout.setClickable(true);
            linearlayout.setGravity(1);
            linearlayout.setOrientation(1);
            linearlayout.setId(i);
            linearlayout.setOnClickListener(onclicklistener);
            k = (int)(5F * mDensity);
            linearlayout.setPadding(k, k, k, k);
            imageview = new ImageView(getContext());
            imageview.setImageResource(i);
            linearlayout.addView(imageview, -2, 0);
            ((android.widget.LinearLayout.LayoutParams)imageview.getLayoutParams()).weight = 1.0F;
            autoresizetextview = new AutoResizeTextView(new ContextThemeWrapper(getContext(), 0x7f06001f));
            autoresizetextview.setText(s);
            layoutparams = new android.widget.LinearLayout.LayoutParams(-2, -2);
            layoutparams.setMargins(0, (int)mDensity, 0, 0);
            linearlayout.addView(autoresizetextview, layoutparams);
            return linearlayout;
        }

        ReportMenuOrganizer(RelativeLayout relativelayout, int i, boolean flag)
        {
            this$0 = ReportMenu.this;
            super();
            _curNumOfItems = 0;
            _lastFirstInLine = 0;
            _lastButton = 0;
            _container = relativelayout;
            _numLines = i;
            _isVertical = flag;
            _menuSpacing = (int)getContext().getResources().getDimension(0x7f0b001d);
        }
    }


    private static final int ANIMATION_DURATION = 300;
    private static final long GPS_FREASH = 30000L;
    private android.view.animation.Animation.AnimationListener closeAnimationListener;
    private boolean disableAnimation;
    protected boolean inMenu;
    private LayoutInflater inflater;
    private boolean isClosureEnabled;
    protected boolean isFirstImage;
    private boolean isFoursquareEnabled;
    private boolean isRandomUser;
    public volatile boolean isVisible;
    private LayoutManager layoutManager;
    private float mDensity;
    private RoadRecordingPopUp mRoadRecordingPopUp;
    private RelativeLayout mainLayout;
    private RelativeLayout mainLayoutToAnimate;
    private MyWazeNativeManager myWazeNativeManager;
    private NativeManager nativeManager;
    private android.view.animation.Animation.AnimationListener openAnimationListener;
    private ReportForm reportForm;

    public ReportMenu(Context context, LayoutManager layoutmanager, boolean flag, boolean flag1, boolean flag2)
    {
        super(context, 0x7f060011);
        isFirstImage = true;
        inMenu = false;
        disableAnimation = false;
        isVisible = false;
        layoutManager = layoutmanager;
        isRandomUser = flag;
        isFoursquareEnabled = flag1;
        isClosureEnabled = flag2;
        inflater = (LayoutInflater)context.getSystemService("layout_inflater");
        mDensity = context.getResources().getDisplayMetrics().density;
        setContentView(0x7f0300c8);
        getWindow().setLayout(-1, -1);
        mainLayout = (RelativeLayout)findViewById(0x7f090570);
        closeAnimationListener = new android.view.animation.Animation.AnimationListener() {

            final ReportMenu this$0;

            public void onAnimationEnd(Animation animation)
            {
                mainLayout.post(new Runnable() {

                    final _cls1 this$1;

                    public void run()
                    {
                        hideBottomNotification(true);
                        dismiss();
                    }

            
            {
                this$1 = _cls1.this;
                super();
            }
                });
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = ReportMenu.this;
                super();
            }
        };
        if (MapView.gpuSupported() == MapView.GPU_NOT_SUPPORTED)
        {
            disableAnimation = true;
        }
        nativeManager = AppService.getNativeManager();
        myWazeNativeManager = MyWazeNativeManager.getInstance();
        openAnimationListener = new android.view.animation.Animation.AnimationListener() {

            final ReportMenu this$0;

            public void onAnimationEnd(Animation animation)
            {
                mainLayout.post(new Runnable() {

                    final _cls2 this$1;

                    public void run()
                    {
                        Analytics.log("REPORT_MENU_SHOWN");
                        showBottomNotification();
                    }

            
            {
                this$1 = _cls2.this;
                super();
            }
                });
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }


            
            {
                this$0 = ReportMenu.this;
                super();
            }
        };
        initLayout();
    }

    private void initLayout()
    {
        int i = 1;
        ViewFlipper viewflipper = (ViewFlipper)findViewById(0x7f090571);
        if (viewflipper.getChildAt(0) != null)
        {
            viewflipper.removeViewAt(0);
        }
        boolean flag;
        View view;
        byte byte0;
        String s;
        RelativeLayout relativelayout;
        ReportMenuOrganizer reportmenuorganizer;
        String s1;
        int j;
        boolean flag1;
        String s2;
        int k;
        View view1;
        if (getContext().getResources().getConfiguration().orientation == i)
        {
            flag = i;
        } else
        {
            flag = false;
        }
        if (flag)
        {
            view = inflater.inflate(0x7f0300cc, viewflipper);
            byte0 = 3;
        } else
        {
            view = inflater.inflate(0x7f0300cb, viewflipper);
            byte0 = 2;
        }
        s = nativeManager.getLanguageString(DisplayStrings.DS_REPORT);
        ((TextView)view.findViewById(0x7f09058b)).setText(s);
        relativelayout = (RelativeLayout)view.findViewById(0x7f09058c);
        relativelayout.removeAllViews();
        reportmenuorganizer = new ReportMenuOrganizer(relativelayout, byte0, flag);
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_JAM), 0x7f0201e5, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new TrafficJamReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() == 0)
        {
            i = 0;
        }
        s1 = nativeManager.getLanguageString(DisplayStrings.DS_POLICE);
        if (i != 0)
        {
            j = 0x7f0201e1;
        } else
        {
            j = 0x7f020329;
        }
        reportmenuorganizer.addReportButton(s1, j, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new PoliceReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_ACCIDENT), 0x7f0201d5, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new AccidentReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_HAZARD), 0x7f0201db, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new HazardReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        if (nativeManager.isGasUpdateable())
        {
            reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_GAS_PRICES), 0x7f0201da, new android.view.View.OnClickListener() {

                final ReportMenu this$0;

                public void onClick(View view2)
                {
                    DriveToNativeManager.getInstance().searchNearbyStations();
                    close();
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
        }
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_CHIT_CHAT), 0x7f0201d9, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                if (!isRandomUser)
                {
                    hideBottomNotification(false);
                    setReportForm(new ChitchatReport(getContext(), ReportMenu.this));
                    flipView();
                    return;
                } else
                {
                    nativeManager.randomUserMsg();
                    return;
                }
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_MAP_ISSUE), 0x7f0201dc, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new MapIssueReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_PLACE), 0x7f0201e0, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                Analytics.log("PLACES_REPORT_MENU_PLACE_CLICKED", null, null);
                Location location = NativeLocListener.getInstance().getLastLocation();
                if (location == null || System.currentTimeMillis() - location.getTime() > 30000L)
                {
                    MsgBox.openMessageBox(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SORRY__THERESS_NO_GPS_RECEPTION_IN_THIS_LOCATION__MAKE_SURE_YOU_ARE_OUTDOORS), false);
                    return;
                }
                hideBottomNotification(false);
                Intent intent = new Intent(getContext(), com/waze/reports/AddPlaceFlowActivity);
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().startActivityForResult(intent, 0);
                }
                dismiss();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        if (isClosureEnabled)
        {
            reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_CLOSURE), 0x7f0200ba, new android.view.View.OnClickListener() {

                final ReportMenu this$0;

                public void onClick(View view2)
                {
                    hideBottomNotification(false);
                    ClosureMap.launch(getContext(), ReportMenu.this, layoutManager, false);
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
        }
        flag1 = NativeManager.getInstance().isEnforcementAlertsEnabledNTV();
        s2 = nativeManager.getLanguageString(DisplayStrings.DS_CAMERA);
        if (flag1)
        {
            k = 0x7f0201e4;
        } else
        {
            k = 0x7f0203c4;
        }
        reportmenuorganizer.addReportButton(s2, k, new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                hideBottomNotification(false);
                setReportForm(new CameraReport(getContext(), ReportMenu.this));
                flipView();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        if (isFoursquareEnabled)
        {
            reportmenuorganizer.addReportButton(nativeManager.getLanguageString(DisplayStrings.DS_CHECK_IN), 0x7f0201d7, new android.view.View.OnClickListener() {

                final ReportMenu this$0;

                public void onClick(View view2)
                {
                    hideBottomNotification(false);
                    myWazeNativeManager.foursquareCheckin();
                    dismiss();
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
        }
        ((TextView)view.findViewById(0x7f090592)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ALL_REPORTS));
        mainLayoutToAnimate = (RelativeLayout)view.findViewById(0x7f09058a);
        view1 = findViewById(0x7f090589);
        if (view1 != null)
        {
            initButton();
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final ReportMenu this$0;

                public void onClick(View view2)
                {
                    close();
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
        }
        findViewById(0x7f090591).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                NativeManager.Post(new Runnable() {

                    final _cls15 this$1;

                    public void run()
                    {
                        AppService.Post(new Runnable() {

                            final _cls1 this$2;

                            public void run()
                            {
                                Analytics.log("MAIN_MENU_CLICK", "VAUE", "REPORTS");
                                Intent intent = new Intent(getContext(), com/waze/rtalerts/RTAlertsMenu);
                                if (AppService.getMainActivity() != null)
                                {
                                    AppService.getMainActivity().startActivityForResult(intent, 32773);
                                }
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                    }


            
            {
                this$1 = _cls15.this;
                super();
            }
                });
            }


            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        findViewById(0x7f090590).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                NativeManager.Post(new Runnable() {

                    final _cls16 this$1;

                    public void run()
                    {
                        AppService.Post(new Runnable() {

                            final _cls1 this$2;

                            public void run()
                            {
                                Analytics.log("MAIN_MENU_CLICK", "VAUE", "REPORTS");
                                Intent intent = new Intent(getContext(), com/waze/rtalerts/RTAlertsMenu);
                                if (AppService.getMainActivity() != null)
                                {
                                    AppService.getMainActivity().startActivityForResult(intent, 32773);
                                }
                            }

            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                    }


            
            {
                this$1 = _cls16.this;
                super();
            }
                });
            }


            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        findViewById(0x7f090570).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                if (!inMenu)
                {
                    close();
                }
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
        findViewById(0x7f090033).setOnClickListener(new android.view.View.OnClickListener() {

            final ReportMenu this$0;

            public void onClick(View view2)
            {
                close();
            }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
        });
    }

    private void showBottomNotification()
    {
        layoutManager.getBottomNotification().setShortMessage(nativeManager.getLanguageString(DisplayStrings.DS_LOCATION_AND_TIME_SAVED), 8);
    }

    public void ClearDimEffect()
    {
        getWindow().clearFlags(2);
    }

    public void SetDimEffect()
    {
        getWindow().addFlags(2);
    }

    protected void close()
    {
        if (disableAnimation)
        {
            hideBottomNotification(false);
            dismiss();
        } else
        {
            AnimationUtils.closeAnimateReport(mainLayoutToAnimate, closeAnimationListener);
        }
        removeReportForm();
        ReportForm.SetIsLaneActive(true);
    }

    public void dismiss()
    {
        isVisible = false;
        nativeManager.restorePoiFocus();
        super.dismiss();
    }

    public void flipView()
    {
        if (reportForm == null)
        {
            return;
        }
        ViewFlipper viewflipper = (ViewFlipper)findViewById(0x7f090571);
        viewflipper.addView(reportForm);
        viewflipper.showNext();
        Animation animation = reportForm.animation;
        if (animation != null)
        {
            viewflipper.setInAnimation(animation);
            animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                final ReportMenu this$0;

                public void onAnimationEnd(Animation animation1)
                {
                    reportForm.start();
                }

                public void onAnimationRepeat(Animation animation1)
                {
                }

                public void onAnimationStart(Animation animation1)
                {
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
        } else
        {
            reportForm.start();
        }
        inMenu = true;
    }

    public int getDelayedReportButtonResource()
    {
        if (((ViewFlipper)findViewById(0x7f090571)).getChildCount() > 1 && reportForm != null)
        {
            return reportForm.getDelayedReportButtonResource();
        } else
        {
            return 0x7f0200b9;
        }
    }

    public void hideBottomNotification(boolean flag)
    {
        layoutManager.getBottomNotification().hide(flag);
    }

    public void initButton()
    {
        if (android.os.Build.VERSION.SDK_INT > 11)
        {
            Drawable drawable;
            if (DriveToNativeManager.getInstance().isDayMode())
            {
                drawable = AppService.getAppContext().getResources().getDrawable(0x7f020327);
            } else
            {
                drawable = AppService.getAppContext().getResources().getDrawable(0x7f020328);
            }
            setMenuButtonDrawable(drawable);
        }
    }

    public void onActivityResult(Activity activity, int i, int j, Intent intent)
    {
        if (reportForm != null)
        {
            reportForm.onActivityResult(activity, i, j, intent);
        }
    }

    public void onBackPressed()
    {
        if (inMenu)
        {
            removeReportForm();
            return;
        } else
        {
            close();
            return;
        }
    }

    public void onOrientationChanged(int i)
    {
        ViewFlipper viewflipper = (ViewFlipper)findViewById(0x7f090571);
        viewflipper.removeAllViews();
        initLayout();
        if (reportForm != null)
        {
            reportForm.beforeOrientationChanged();
            reportForm.stop();
            reportForm.removeAllViews();
            reportForm.onOrientationChanged(i);
            reportForm.afterOrientationChanged();
            reportForm.stop();
            viewflipper.addView(reportForm);
            viewflipper.showNext();
        }
        if (mRoadRecordingPopUp != null)
        {
            mRoadRecordingPopUp.onOrientationChanged(i);
        }
    }

    public void open(boolean flag)
    {
        isVisible = true;
        if (disableAnimation)
        {
            setOnShowListener(new android.content.DialogInterface.OnShowListener() {

                final ReportMenu this$0;

                public void onShow(DialogInterface dialoginterface)
                {
                    Analytics.log("REPORT_MENU_SHOWN");
                    setOnShowListener(null);
                }

            
            {
                this$0 = ReportMenu.this;
                super();
            }
            });
            showBottomNotification();
            return;
        }
        if (flag)
        {
            int ai[] = layoutManager.getDelayedReportButtonLocation();
            AnimationUtils.openAnimateFromPoint(mainLayoutToAnimate, ai[0], ai[1], 300, openAnimationListener);
            return;
        } else
        {
            AnimationUtils.openAnimateReport(mainLayoutToAnimate, openAnimationListener);
            return;
        }
    }

    public void removeReportForm()
    {
        if (inMenu)
        {
            final ViewFlipper viewFlipper = (ViewFlipper)findViewById(0x7f090571);
            if (reportForm != null)
            {
                reportForm.stop();
            }
            if (reportForm != null && reportForm.animation != null)
            {
                Animation animation = reportForm.animation;
                viewFlipper.setInAnimation(animation);
                animation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

                    final ReportMenu this$0;
                    private final ViewFlipper val$viewFlipper;

                    public void onAnimationEnd(Animation animation1)
                    {
                        viewFlipper.post(viewFlipper. new Runnable() {

                            final _cls19 this$1;
                            private final ViewFlipper val$viewFlipper;

                            public void run()
                            {
                                viewFlipper.removeView(reportForm);
                                reportForm = null;
                            }

            
            {
                this$1 = final__pcls19;
                viewFlipper = ViewFlipper.this;
                super();
            }
                        });
                        animation1.setAnimationListener(null);
                    }

                    public void onAnimationRepeat(Animation animation1)
                    {
                    }

                    public void onAnimationStart(Animation animation1)
                    {
                    }


            
            {
                this$0 = ReportMenu.this;
                viewFlipper = viewflipper;
                super();
            }
                });
            } else
            {
                viewFlipper.removeView(reportForm);
                reportForm = null;
            }
            viewFlipper.setDisplayedChild(0);
            layoutManager.removeDelayedReportButton();
            inMenu = false;
        }
    }

    public void setDelayedReport()
    {
        int ai[] = layoutManager.getDelayedReportButtonLocation();
        AnimationUtils.closeAnimateToPoint(mainLayout, ai[0], ai[1], 300, closeAnimationListener);
        layoutManager.setDelayedReport(this);
    }

    public void setMenuButtonDrawable(Drawable drawable)
    {
        ImageView imageview = (ImageView)findViewById(0x7f090589);
        if (imageview != null && drawable != null)
        {
            imageview.setImageDrawable(drawable);
        }
    }

    public void setReportForm(ReportForm reportform)
    {
        reportForm = reportform;
    }

    public void setRoadPaving(boolean flag)
    {
        if (flag)
        {
            layoutManager.removeRoadPavingTab();
            close();
            return;
        } else
        {
            layoutManager.setRoadPavingTab(this);
            AnimationUtils.closeAnimateReport(mainLayout, closeAnimationListener);
            return;
        }
    }

    public void setRoadRecording(RoadRecordingPopUp roadrecordingpopup)
    {
        mRoadRecordingPopUp = roadrecordingpopup;
    }

    public void showMapProblemReport()
    {
        setReportForm(new MapIssueReport(getContext(), this));
        flipView();
    }

    public void showRoadRecording()
    {
        mRoadRecordingPopUp = new RoadRecordingPopUp(getContext(), this);
        mRoadRecordingPopUp.open();
    }

    public void showTrafficJamReport()
    {
        setReportForm(new TrafficJamReport(getContext(), this));
        flipView();
    }









}
