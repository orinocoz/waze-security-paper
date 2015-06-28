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
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.profile.FoursquareConnectActivity;
import com.waze.settings.SettingsSwitchView;
import com.waze.settings.SwitchCheckedCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class FoursquareActivity extends ActivityBase
{

    private static final String LOG_TAG = "Waze";
    private static FoursquareActivity activeInstance = null;
    private SettingsSwitchView badgeOption;
    private boolean beforeCheckIn;
    private String buttonTitles[];
    private TextView connectButton;
    private TextView connectStatus;
    private boolean connected;
    private SettingsSwitchView loginOption;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;
    private String statusTexts[];

    public FoursquareActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        activeInstance = this;
    }

    private void onLogin()
    {
        if (connected)
        {
            mywazeManager.foursquareDisconnect();
            return;
        }
        if (!AppService.isNetworkAvailable())
        {
            Log.e("Waze", "FourSquareActivity:: onLogin, no network connection");
            android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

                final FoursquareActivity this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                }

            
            {
                this$0 = FoursquareActivity.this;
                super();
            }
            };
            MsgBox.openMessageBoxWithCallback(nativeManager.getLanguageString(DisplayStrings.DS_NO_NETWORK_CONNECTION), nativeManager.getLanguageString(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER), false, onclicklistener);
            return;
        } else
        {
            startActivityForResult(new Intent(this, com/waze/profile/FoursquareConnectActivity), 0);
            return;
        }
    }

    private void onOptionBadge(boolean flag)
    {
        mywazeManager.foursquareSetTweetBadge(flag);
    }

    private void onOptionLogin(boolean flag)
    {
        mywazeManager.foursquareSetTweetLogin(flag);
    }

    public static void refreshStatus(boolean flag)
    {
        if (activeInstance != null && activeInstance.isRunning())
        {
            activeInstance.connected = flag;
            activeInstance.updateStatus();
        }
    }

    private void updateStatus()
    {
        if (connected)
        {
            connectButton.setText(buttonTitles[1]);
            connectStatus.setText(statusTexts[1]);
            if (beforeCheckIn)
            {
                mywazeManager.foursquareCheckin();
                setResult(-1);
                finish();
            }
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
        setContentView(0x7f030056);
        buttonTitles = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0001));
        statusTexts = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0003));
        ((TitleBar)findViewById(0x7f0902bb)).init(this, DisplayStrings.DS_FOURSQUARE);
        connectButton = (TextView)findViewById(0x7f0902bc);
        connectStatus = (TextView)findViewById(0x7f0902bd);
        loginOption = (SettingsSwitchView)findViewById(0x7f0902bf);
        badgeOption = (SettingsSwitchView)findViewById(0x7f0902c0);
        findViewById(0x7f0902a0).setOnClickListener(new android.view.View.OnClickListener() {

            final FoursquareActivity this$0;

            public void onClick(View view)
            {
                onLogin();
            }

            
            {
                this$0 = FoursquareActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0902be)).setText(nativeManager.getLanguageString(DisplayStrings.DS_AUTOMATICALLY_TWEET_TO_MY_FOLLOWERS_THAT_IC));
        ((TextView)findViewById(0x7f0902c1)).setText((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_WESVE_PARTNERED_WITH_FOURSQUARE_TO_GIVE_YOU_QUICK_ACCESS_TO_CHECKING_IN_AT_NEARBY_VENUES_)))).append("\n\n").append(nativeManager.getLanguageString(DisplayStrings.DS_WHAT_IS_FOURSQUAREQ)).append("\n").append(nativeManager.getLanguageString(DisplayStrings.DS_ITSS_A_FUN_WAY_TO_DISCOVER_AND_PROMOTE_COOL_PLACES_IN_YOUR_CITY_AND_BE_REWARDED_FOR_DOING_SO_)).append("\n").append(nativeManager.getLanguageString(DisplayStrings.DS_DONST_HAVE_AN_ACCOUNTQ_SIGN_UP_ONC)).append(" ").append(nativeManager.getLanguageString(DisplayStrings.DS_WWW_FOURSQUARE_COM)).toString());
        loginOption.setText(nativeManager.getLanguageString(DisplayStrings.DS_AM_CHECKING_OUT_THIS_INTEGRATION));
        loginOption.setOnChecked(new SwitchCheckedCallback() {

            final FoursquareActivity this$0;

            public void OnCallback(boolean flag)
            {
                onOptionLogin(flag);
            }

            
            {
                this$0 = FoursquareActivity.this;
                super();
            }
        });
        badgeOption.setText(nativeManager.getLanguageString(DisplayStrings.DS_HAVE_UNLOCKED_THE_ROADWARRIOR_BADGE));
        badgeOption.setOnChecked(new SwitchCheckedCallback() {

            final FoursquareActivity this$0;

            public void OnCallback(boolean flag)
            {
                onOptionBadge(flag);
            }

            
            {
                this$0 = FoursquareActivity.this;
                super();
            }
        });
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            com.waze.mywaze.MyWazeNativeManager.FoursquareSettings foursquaresettings = (com.waze.mywaze.MyWazeNativeManager.FoursquareSettings)bundle1.getSerializable("com.waze.mywaze.foursquaresettings");
            connected = foursquaresettings.loggedIn;
            loginOption.setValue(foursquaresettings.enableTweetLogin);
            badgeOption.setValue(foursquaresettings.enableTweetBadge);
            beforeCheckIn = foursquaresettings.checkInAfterLogin;
        }
        updateStatus();
    }

    protected void onDestroy()
    {
        activeInstance = null;
        super.onDestroy();
    }




}
