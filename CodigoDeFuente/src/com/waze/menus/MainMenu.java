// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.menus;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.View;
import android.view.Window;
import android.view.animation.Animation;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.MapView;
import com.waze.MoodManager;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.inbox.InboxActivity;
import com.waze.inbox.InboxMessage;
import com.waze.inbox.InboxNativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.settings.SettingsDialogListener;
import com.waze.settings.SettingsMainActivity;
import com.waze.settings.SettingsUtils;
import com.waze.share.ShareUtility;
import com.waze.strings.DisplayStrings;
import com.waze.view.anim.AnimationUtils;
import java.util.ArrayList;
import java.util.List;

public class MainMenu extends Dialog
{

    private RTAlertsNativeManager alertsManager;
    private android.view.animation.Animation.AnimationListener animationListener;
    private boolean disableAnimation;
    private boolean isNavigating;
    public volatile boolean isVisible;
    private LayoutManager layoutManager;
    private String mDisplayOptions[];
    private final com.waze.inbox.InboxNativeManager.InboxDataListener mInboxDataListener = new com.waze.inbox.InboxNativeManager.InboxDataListener() {

        final MainMenu this$0;

        public void onData(InboxMessage ainboxmessage[], int i, int j, boolean flag)
        {
            setInboxBadge(i);
        }

            
            {
                this$0 = MainMenu.this;
                super();
            }
    };
    private int mOrientation;
    private View mainLayout;
    private Drawable menuButtonDrawable;
    private ImageView menuMood;
    private ImageButton menuMuteImage;
    private MoodManager moodManager;
    private NativeManager nativeManager;
    protected boolean shouldDisplayTip;

    public MainMenu(Context context, LayoutManager layoutmanager)
    {
        super(context, 0x7f06000f);
        isVisible = false;
        disableAnimation = false;
        shouldDisplayTip = false;
        menuButtonDrawable = null;
        mDisplayOptions = new String[3];
        mOrientation = 1;
        layoutManager = layoutmanager;
        nativeManager = AppService.getNativeManager();
        moodManager = MoodManager.getInstance();
        alertsManager = RTAlertsNativeManager.getInstance();
        ArrayList arraylist = new ArrayList();
        arraylist.add(new ConfigItem("Tip", "Second page shown", ""));
        ConfigManager.getInstance().getConfig(new com.waze.ConfigManager.IConfigUpdater() {

            final MainMenu this$0;

            public void updateConfigItems(List list)
            {
                if (!((ConfigItem)list.get(0)).getValue().equalsIgnoreCase("yes"))
                {
                    shouldDisplayTip = true;
                }
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        }, arraylist, "");
        initLayout();
    }

    private void initDynamic()
    {
        updateMood();
        setInboxButtonDynamic(true);
        View view = findViewById(0x7f0903c7);
        if (nativeManager.isFollowActiveNTV())
        {
            view.setVisibility(0);
            view.setClickable(true);
            return;
        } else
        {
            view.setVisibility(8);
            return;
        }
    }

    private void initLayout()
    {
        isNavigating = nativeManager.isNavigatingNTV();
        if (isNavigating)
        {
            setContentView(0x7f03007e);
        } else
        {
            setContentView(0x7f03007c);
        }
        if (MapView.gpuSupported() == MapView.GPU_NOT_SUPPORTED)
        {
            disableAnimation = true;
        }
        if (menuButtonDrawable != null)
        {
            setMenuButtonDrawable(menuButtonDrawable);
        }
        findViewById(0x7f0903c2).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view)
            {
                close();
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        mDisplayOptions[0] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_ON);
        mDisplayOptions[1] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALERTS_ONLY);
        mDisplayOptions[2] = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUNDS_OFF);
        mainLayout = findViewById(0x7f0903c4);
        getWindow().setLayout(-1, -1);
        initStaticFull();
        findViewById(0x7f0903dd).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "MUTE_TOGGLE");
                AppService.Post(new Runnable() {

                    final _cls3 this$1;

                    public void run()
                    {
                        SettingsUtils.showSubmenu(AppService.getMainActivity(), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SOUND), mDisplayOptions, new SettingsDialogListener() {

                            final _cls1 this$2;

                            public void onComplete(int i)
                            {
                                NativeManager.Post(i. new Runnable() {

                                    final _cls1 this$3;
                                    private final int val$position;

                                    public void run()
                                    {
                                        nativeManager.toggleNavigationVoiceNTV(position);
                                    }

            
            {
                this$3 = final__pcls1;
                position = I.this;
                super();
            }
                                });
                                updateMuteImage(true, i);
                            }


            
            {
                this$2 = _cls1.this;
                super();
            }
                        });
                    }


            
            {
                this$1 = _cls3.this;
                super();
            }
                });
            }


            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        updateMuteImage(false, nativeManager.isNavigatingVoiceNTV());
    }

    private void initStaticAll()
    {
        if (nativeManager.isDebug())
        {
            View view = findViewById(0x7f0903c6);
            if (view != null)
            {
                view.setVisibility(0);
            }
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view1)
                {
                    ConfigManager.getInstance().sendLogsClick();
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        }
        String s = nativeManager.getLanguageString(DisplayStrings.DS_MENU);
        ((TextView)findViewById(0x7f0903c9)).setText(s);
        animationListener = new android.view.animation.Animation.AnimationListener() {

            final MainMenu this$0;

            public void onAnimationEnd(Animation animation)
            {
                mainLayout.post(new Runnable() {

                    final _cls6 this$1;

                    public void run()
                    {
                        dismiss();
                    }

            
            {
                this$1 = _cls6.this;
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
                this$0 = MainMenu.this;
                super();
            }
        };
        findViewById(0x7f0903c5).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view1)
            {
                close();
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
    }

    private void initStaticFull()
    {
        initStaticAll();
        View view = findViewById(0x7f0903c3);
        if (view != null)
        {
            view.setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view2)
                {
                    close();
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        }
        String s = nativeManager.getLanguageString(DisplayStrings.DS_NAVIGATE);
        ((TextView)findViewById(0x7f0903cd)).setText(s);
        String s1 = nativeManager.getLanguageString(DisplayStrings.DS_MY_WAZE);
        ((TextView)findViewById(0x7f0903da)).setText(s1);
        String s2 = nativeManager.getLanguageString(DisplayStrings.DS_MAIN_MENU_SEND);
        ((TextView)findViewById(0x7f0903d0)).setText(s2);
        findViewById(0x7f0903d1).setVisibility(8);
        menuMood = (ImageView)findViewById(0x7f0903d9);
        if (isNavigating)
        {
            String s3 = nativeManager.getLanguageString(DisplayStrings.DS_STOP_NAV);
            if (mOrientation == 1)
            {
                s3 = nativeManager.getLanguageString(DisplayStrings.DS_STOP_NAVIGATION);
            }
            ((TextView)findViewById(0x7f0903e3)).setText(s3);
            String s4 = nativeManager.getLanguageString(DisplayStrings.DS_ROUTES);
            ((TextView)findViewById(0x7f0903e7)).setText(s4);
            String s5 = nativeManager.getLanguageString(DisplayStrings.DS_MAIN_MENU_SEND_ETA);
            ((TextView)findViewById(0x7f0903e5)).setText(s5);
            findViewById(0x7f0903e2).setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view2)
                {
                    Analytics.log("MAIN_MENU_CLICK", "VAUE", "STOP_NAV");
                    NativeManager.Post(new Runnable() {

                        final _cls9 this$1;

                        public void run()
                        {
                            nativeManager.stopNavigationNTV();
                        }

            
            {
                this$1 = _cls9.this;
                super();
            }
                    });
                    close();
                }


            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
            findViewById(0x7f0903e6).setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view2)
                {
                    Analytics.log("MAIN_MENU_CLICK", "VAUE", "ROUTES");
                    NativeManager.Post(new Runnable() {

                        final _cls10 this$1;

                        public void run()
                        {
                            AppService.getNativeManager().navigateRecalcAltRoutesNTV();
                        }

            
            {
                this$1 = _cls10.this;
                super();
            }
                    });
                    close();
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
            findViewById(0x7f0903e4).setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view2)
                {
                    Analytics.log("MAIN_MENU_CLICK", "VAUE", "SHARE_DRIVE");
                    ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 16);
                    dismiss();
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        }
        View view1 = findViewById(0x7f0903c8);
        view1.setVisibility(8);
        if (view1 != null)
        {
            view1.setOnClickListener(new android.view.View.OnClickListener() {

                final MainMenu this$0;

                public void onClick(View view2)
                {
                    android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                        final _cls12 this$1;

                        public void onClick(DialogInterface dialoginterface, int i)
                        {
                            if (i == 1)
                            {
                                NativeManager.Post(new Runnable() {

                                    final _cls1 this$2;

                                    public void run()
                                    {
                                        AppService.getNativeManager().StopFollow();
                                    }

            
            {
                this$2 = _cls1.this;
                super();
            }
                                });
                                findViewById(0x7f0903c7).setVisibility(8);
                                close();
                            }
                        }

            
            {
                this$1 = _cls12.this;
                super();
            }
                    };
                    MsgBox.getInstance().OpenConfirmDialogCustomTimeoutCbJava(nativeManager.getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q), nativeManager.getLanguageString(DisplayStrings.DS_WILL_NO_LONGER_TRACK_YOU_ON_THE_MAP), true, onclicklistener, nativeManager.getLanguageString(DisplayStrings.DS_YES), nativeManager.getLanguageString(DisplayStrings.DS_NO), -1);
                }


            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        }
        findViewById(0x7f0903d8).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view2)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "MY_WAZE");
                MyWazeNativeManager.getInstance().launchMyWaze(getContext());
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        findViewById(0x7f0903ce).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view2)
            {
                ShareUtility.shareLocationOrDrive(AppService.getMainActivity(), 32);
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "SEND_LOCATION");
                dismiss();
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        findViewById(0x7f0903db).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view2)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "SETTINGS");
                Intent intent = new Intent(getContext(), com/waze/settings/SettingsMainActivity);
                AppService.getMainActivity().startActivityForResult(intent, 32775);
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        setInboxButtonStatic();
        findViewById(0x7f0903cc).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view2)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "NAVIGATE");
                if (AppService.getMainActivity() != null)
                {
                    AppService.getMainActivity().startNavigateActivity();
                }
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        findViewById(0x7f0903df).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view2)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "SWITCH_OFF");
                nativeManager.StopWaze();
                dismiss();
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
    }

    private void setInboxBadge(int i)
    {
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f0903d5);
        TextView textview = (TextView)findViewById(0x7f0903d7);
        if (i > 0)
        {
            relativelayout.setVisibility(0);
            textview.setText(String.valueOf(i));
        } else
        {
            relativelayout.setVisibility(8);
        }
        relativelayout.invalidate();
    }

    private void setInboxButtonDynamic(boolean flag)
    {
        InboxNativeManager inboxnativemanager = InboxNativeManager.getInstance();
        inboxnativemanager.addDataListener(mInboxDataListener);
        inboxnativemanager.getInboxCounters(new com.waze.inbox.InboxNativeManager.InboxCountersHandler() {

            final MainMenu this$0;

            public void onCounters(int i, int j, int k)
            {
                setInboxBadge(i);
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
        if (flag)
        {
            inboxnativemanager.requestRefresh();
        }
    }

    private void setInboxButtonStatic()
    {
        ((TextView)findViewById(0x7f0903d4)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_INBOX));
        findViewById(0x7f0903d2).setOnClickListener(new android.view.View.OnClickListener() {

            final MainMenu this$0;

            public void onClick(View view)
            {
                Analytics.log("MAIN_MENU_CLICK", "VAUE", "INBOX");
                Intent intent = new Intent(AppService.getMainActivity(), com/waze/inbox/InboxActivity);
                AppService.getMainActivity().startActivityForResult(intent, 0);
            }

            
            {
                this$0 = MainMenu.this;
                super();
            }
        });
    }

    private void unsetInboxButtonDynamic()
    {
        InboxNativeManager.getInstance().removeDataListener(mInboxDataListener);
    }

    private void updateMood()
    {
label0:
        {
            if (menuMood != null)
            {
                if (!MyWazeNativeManager.getInstance().GetInvisible())
                {
                    break label0;
                }
                menuMood.setImageResource(0x7f020182);
            }
            return;
        }
        String s = moodManager.getWazerMood().replace("-", "_").toLowerCase();
        menuMood.setImageResource(ResManager.GetDrawableId(s));
    }

    private void updateMuteImage(boolean flag, int i)
    {
        menuMuteImage = (ImageButton)findViewById(0x7f0903dd);
        if (i == 1)
        {
            ((TextView)findViewById(0x7f0903de)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ALERTS_ONLY));
            menuMuteImage.setImageResource(0x7f02002e);
        } else
        if (i == 0)
        {
            ((TextView)findViewById(0x7f0903de)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SOUNDS_ON));
            menuMuteImage.setImageResource(0x7f0203c2);
        } else
        {
            ((TextView)findViewById(0x7f0903de)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SOUNDS_OFF));
            menuMuteImage.setImageResource(0x7f0203c1);
        }
        if (flag)
        {
            MsgBox.OpenMutePopup(i);
        }
    }

    public void cancel()
    {
        dismiss();
        super.cancel();
    }

    public void close()
    {
        unsetInboxButtonDynamic();
        if (disableAnimation)
        {
            dismiss();
            return;
        } else
        {
            AnimationUtils.closeAnimateMenu(mainLayout, animationListener);
            return;
        }
    }

    public void dismiss()
    {
        isVisible = false;
        layoutManager.onMainMenuClosed();
        super.dismiss();
    }

    public void onBackPressed()
    {
        close();
    }

    public boolean onCreateOptionsMenu(Menu menu)
    {
        close();
        return false;
    }

    public void onOrientationChanged(int i)
    {
        mOrientation = i;
        initLayout();
        initDynamic();
    }

    public void open()
    {
        isVisible = true;
        Analytics.log("MAIN_MENU_BUTTON");
        initLayout();
        initDynamic();
        if (!disableAnimation)
        {
            AnimationUtils.openAnimateMenu(mainLayout, new android.view.animation.Animation.AnimationListener() {

                final MainMenu this$0;

                public void onAnimationEnd(Animation animation)
                {
                    Analytics.log("MAIN_MENU_SHOWN");
                }

                public void onAnimationRepeat(Animation animation)
                {
                }

                public void onAnimationStart(Animation animation)
                {
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        } else
        {
            setOnShowListener(new android.content.DialogInterface.OnShowListener() {

                final MainMenu this$0;

                public void onShow(DialogInterface dialoginterface)
                {
                    Analytics.log("MAIN_MENU_SHOWN");
                    setOnShowListener(null);
                }

            
            {
                this$0 = MainMenu.this;
                super();
            }
            });
        }
        layoutManager.SetMenuMainButton();
        show();
    }

    public void refresh()
    {
        updateMood();
    }

    public void setMenuButtonDrawable(Drawable drawable)
    {
        ImageView imageview = (ImageView)findViewById(0x7f0903c3);
        if (imageview != null && drawable != null)
        {
            imageview.setImageDrawable(drawable);
        }
    }





}
