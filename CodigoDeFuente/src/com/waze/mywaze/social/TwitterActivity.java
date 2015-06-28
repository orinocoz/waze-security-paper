// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.CheckedTextView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.TwitterConnectActivity;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class TwitterActivity extends ActivityBase
{

    private static final String LOG_TAG = "Waze";
    private static final int SOCIAL_DESTINATION_MODE_CITY = 1;
    private static final int SOCIAL_DESTINATION_MODE_DISABLED = 0;
    private static final int SOCIAL_DESTINATION_MODE_FULL = 3;
    private static TwitterActivity activeInstance = null;
    private String buttonTitles[];
    private TextView connectButton;
    private TextView connectStatus;
    private boolean connected;
    private View drivingMenu;
    private SettingsSwitchView drivingOption;
    private CheckedTextView drivingStyle[];
    private String drivingStyleTexts[];
    private SettingsSwitchView munchingOption;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private SettingsSwitchView reportsOption;
    private String statusTexts[];

    public TwitterActivity()
    {
        drivingStyle = new CheckedTextView[2];
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        activeInstance = this;
    }

    private void onDrivingStyle(int i)
    {
        showDrivingStyle(i);
        MyWazeNativeManager mywazenativemanager = mywazeManager;
        byte byte0;
        if (i > 0)
        {
            byte0 = 3;
        } else
        {
            byte0 = 1;
        }
        mywazenativemanager.twitterSetDrivingMode(byte0);
    }

    private void onLogin()
    {
        if (connected)
        {
            mywazeManager.twitterDisconnect();
            return;
        }
        if (!AppService.isNetworkAvailable())
        {
            Log.e("Waze", "TwitterActivity:: onLogin, no network connection");
            android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                final TwitterActivity this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            
            {
                this$0 = TwitterActivity.this;
                super();
            }
            };
            MsgBox.openMessageBoxWithCallback(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false, onclicklistener);
            return;
        } else
        {
            Intent intent = new Intent(this, com/waze/profile/TwitterConnectActivity);
            intent.putExtra("com.waze.twitter.frommenu", true);
            startActivityForResult(intent, 0);
            return;
        }
    }

    private void onOptionDriving(boolean flag)
    {
        int i = 1;
        showOptionDriving(flag);
        MyWazeNativeManager mywazenativemanager = mywazeManager;
        if (flag)
        {
            if (drivingStyle[i].isChecked())
            {
                i = 3;
            }
        } else
        {
            i = 0;
        }
        mywazenativemanager.twitterSetDrivingMode(i);
    }

    private void onOptionMunching(boolean flag)
    {
        mywazeManager.twitterSetMunchingMode(flag);
    }

    private void onOptionReports(boolean flag)
    {
        mywazeManager.twitterSetReportMode(flag);
    }

    public static void refreshStatus(boolean flag)
    {
        if (activeInstance != null && activeInstance.isRunning())
        {
            activeInstance.connected = flag;
            activeInstance.updateStatus();
        }
    }

    private void showDrivingStyle(int i)
    {
        int j = 0;
        do
        {
            if (j >= drivingStyle.length)
            {
                return;
            }
            CheckedTextView checkedtextview = drivingStyle[j];
            boolean flag;
            if (i == j)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            checkedtextview.setChecked(flag);
            j++;
        } while (true);
    }

    private void showOptionDriving(boolean flag)
    {
        View view = drivingMenu;
        int i;
        if (flag)
        {
            i = 0;
        } else
        {
            i = 8;
        }
        view.setVisibility(i);
    }

    private void updateDriving(int i)
    {
        if (i > 0)
        {
            drivingOption.setValue(true);
            showOptionDriving(true);
            if (i == 3)
            {
                showDrivingStyle(1);
                return;
            } else
            {
                showDrivingStyle(0);
                return;
            }
        } else
        {
            drivingOption.setValue(false);
            showOptionDriving(false);
            showDrivingStyle(0);
            return;
        }
    }

    private void updateStatus()
    {
        if (connected)
        {
            connectButton.setText(buttonTitles[1]);
            connectStatus.setText(statusTexts[1]);
            return;
        } else
        {
            connectButton.setText(buttonTitles[0]);
            connectStatus.setText(statusTexts[0]);
            return;
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f03012b);
        ((TitleBar)findViewById(0x7f09076b)).init(this, DisplayStrings.DS_TWITTER);
        buttonTitles = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0001));
        statusTexts = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0003));
        drivingStyleTexts = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0004));
        connectButton = (TextView)findViewById(0x7f0902bc);
        connectStatus = (TextView)findViewById(0x7f0902bd);
        reportsOption = (SettingsSwitchView)findViewById(0x7f0906ec);
        drivingOption = (SettingsSwitchView)findViewById(0x7f0906ee);
        drivingMenu = findViewById(0x7f0906ef);
        drivingStyle[0] = (CheckedTextView)findViewById(0x7f0906f0);
        drivingStyle[1] = (CheckedTextView)findViewById(0x7f0906f1);
        munchingOption = (SettingsSwitchView)findViewById(0x7f0906f4);
        Bundle bundle1 = getIntent().getExtras();
        int i;
        if (bundle1 != null)
        {
            com.waze.mywaze.MyWazeNativeManager.TwitterSettings twittersettings = (com.waze.mywaze.MyWazeNativeManager.TwitterSettings)bundle1.getSerializable("com.waze.mywaze.twittersettings");
            connected = twittersettings.loggedIn;
            reportsOption.setValue(twittersettings.postReports);
            munchingOption.setValue(twittersettings.postMunching);
            updateDriving(twittersettings.postDriving);
            View view = findViewById(0x7f0906f3);
            int k;
            if (twittersettings.showMunching)
            {
                k = 0;
            } else
            {
                k = 8;
            }
            view.setVisibility(k);
        }
        updateStatus();
        findViewById(0x7f0902a0).setOnClickListener(new android.view.View.OnClickListener() {

            final TwitterActivity this$0;

            public void onClick(View view1)
            {
                onLogin();
            }

            
            {
                this$0 = TwitterActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0906eb)).setText(nativeManager.getLanguageString(DisplayStrings.DS_AUTOMATICALLY_TWEET_TO_MY_FOLLOWERSC));
        reportsOption.setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_ROAD_REPORTS));
        reportsOption.setOnChecked(new SwitchCheckedCallback() {

            final TwitterActivity this$0;

            public void OnCallback(boolean flag)
            {
                onOptionReports(flag);
            }

            
            {
                this$0 = TwitterActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0906ed)).setText(nativeManager.getLanguageString(DisplayStrings.DS_EXC__JUST_REPORTED_A_TRAFFIC_JAM_ON_GEARY_ST__SF__CA_USING_AWAZE_SOCIAL_GPS_));
        drivingOption.setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_DESTINATION_AND_ETA));
        drivingOption.setOnChecked(new SwitchCheckedCallback() {

            final TwitterActivity this$0;

            public void OnCallback(boolean flag)
            {
                onOptionDriving(flag);
            }

            
            {
                this$0 = TwitterActivity.this;
                super();
            }
        });
        i = 0;
        do
        {
            if (i >= drivingStyle.length)
            {
                ((TextView)findViewById(0x7f0906f2)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SHARE_YOUR_DESTINATION_ETA_AND_ROUTE));
                munchingOption.setText(nativeManager.getLanguageString(DisplayStrings.DS_MY_ROAD_MUNCHING));
                munchingOption.setOnChecked(new SwitchCheckedCallback() {

                    final TwitterActivity this$0;

                    public void OnCallback(boolean flag)
                    {
                        onOptionMunching(flag);
                    }

            
            {
                this$0 = TwitterActivity.this;
                super();
            }
                });
                ((TextView)findViewById(0x7f0906f5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_EXC__JUST_MUNCHED_A_SWAZE_ROAD_GOODIES_WORTH_200_POINTS_ON_GEARY_ST__SF_DRIVING_WITH_AWAZE_SOCIAL_GPS));
                return;
            }
            final int j = i;
            drivingStyle[i].setText(drivingStyleTexts[i]);
            drivingStyle[i].setOnClickListener(new android.view.View.OnClickListener() {

                final TwitterActivity this$0;
                private final int val$j;

                public void onClick(View view1)
                {
                    onDrivingStyle(j);
                }

            
            {
                this$0 = TwitterActivity.this;
                j = i;
                super();
            }
            });
            i++;
        } while (true);
    }

    protected void onDestroy()
    {
        activeInstance = null;
        super.onDestroy();
    }






}
