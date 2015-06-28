// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.social;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.navigate.social.AddFromActivity;
import com.waze.settings.SettingsTitleText;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class FacebookActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.FacebookCallback
{

    public static String INTENT_FROM_WHERE = "INTENT_FROM_WHERE";
    private static FacebookActivity activeInstance = null;
    private String buttonTitles[];
    private Button connectButton;
    private boolean connected;
    private boolean modified;
    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;

    public FacebookActivity()
    {
    }

    private void onLogin()
    {
        if (connected)
        {
            mywazeManager.facebookDisconnect();
            FacebookWrapper.getInstance().logout(this, null);
            return;
        } else
        {
            Analytics.log("FACEBOOK_CONNECT_CLICK", "VAUE", "SETTINGS_SCREEN");
            FacebookWrapper.getInstance().authorize(this, null, true);
            return;
        }
    }

    public static void refreshStatus(boolean flag)
    {
        if (activeInstance != null && activeInstance.isRunning())
        {
            activeInstance.connected = flag;
            activeInstance.updateStatus();
        }
        if (activeInstance != null)
        {
            activeInstance.UpdateCheckBox();
        }
    }

    private void updateStatus()
    {
        if (connected)
        {
            connectButton.setText(buttonTitles[1]);
            return;
        } else
        {
            connectButton.setText(buttonTitles[0]);
            return;
        }
    }

    public void UpdateCheckBox()
    {
        MyWazeNativeManager.getInstance().getFacebookSettings(this);
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

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030051);
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
        activeInstance = this;
        modified = false;
        buttonTitles = nativeManager.getLanguageStrings(getResources().getStringArray(0x7f0c0001));
        ((TitleBar)findViewById(0x7f09029d)).init(this, DisplayStrings.DS_FACEBOOK);
        connectButton = (Button)findViewById(0x7f0902a0);
        Bundle bundle1 = getIntent().getExtras();
        if (bundle1 != null)
        {
            connected = ((com.waze.mywaze.MyWazeNativeManager.FacebookSettings)bundle1.getSerializable("com.waze.mywaze.facebooksettings")).loggedIn;
        }
        updateStatus();
        findViewById(0x7f0902a0).setOnClickListener(new android.view.View.OnClickListener() {

            final FacebookActivity this$0;

            public void onClick(View view)
            {
                onLogin();
            }

            
            {
                this$0 = FacebookActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f0902a1)).setVisibility(8);
        ((TextView)findViewById(0x7f0902a2)).setText(nativeManager.getLanguageString(DisplayStrings.DS_NO_ONE_CAN_ACTIVELY));
        ((TextView)findViewById(0x7f09029f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ONE_TAP_NAVIGATION_TO_FACEBOOK_EVENTS_WITH_NO_NEED));
        ((SettingsTitleText)findViewById(0x7f0902a3)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MANAGE));
        ((TextView)findViewById(0x7f0902a5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_BLOCKED_FRIENDS));
        findViewById(0x7f0902a4).setOnClickListener(new android.view.View.OnClickListener() {

            final FacebookActivity this$0;

            public void onClick(View view)
            {
                if (connected)
                {
                    Intent intent = new Intent(FacebookActivity.this, com/waze/navigate/social/AddFromActivity);
                    intent.putExtra(FacebookActivity.INTENT_FROM_WHERE, AddFromActivity.INTENT_FROM_FB);
                    startActivityForResult(intent, 1003);
                }
            }

            
            {
                this$0 = FacebookActivity.this;
                super();
            }
        });
    }

    protected void onDestroy()
    {
        activeInstance = null;
        if (modified)
        {
            mywazeManager.facebookPostConnect();
        }
        super.onDestroy();
    }

    public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
    {
        connected = facebooksettings.loggedIn;
    }



}
