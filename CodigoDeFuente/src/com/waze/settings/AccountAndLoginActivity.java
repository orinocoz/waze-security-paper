// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.mywaze.social.FacebookActivity;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.profile.MyProfileActivity;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

public class AccountAndLoginActivity extends ActivityBase
    implements com.waze.mywaze.MyWazeNativeManager.FacebookCallback
{

    private MyWazeNativeManager mywazeManager;
    private NativeManager nativeManager;

    public AccountAndLoginActivity()
    {
        nativeManager = AppService.getNativeManager();
        mywazeManager = MyWazeNativeManager.getInstance();
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        if (mywazeManager.isRandomUserNTV())
        {
            if (!mywazedata.mFaceBookLoggedIn)
            {
                ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_WAZE_USERNAME));
                ((TextView)findViewById(0x7f090042)).setVisibility(8);
            } else
            {
                ((TextView)findViewById(0x7f090041)).setText(nativeManager.getLanguageString(DisplayStrings.DS_TEMPORARY_USER));
                ((TextView)findViewById(0x7f090042)).setVisibility(0);
                ((TextView)findViewById(0x7f090042)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOU_ARE_NOT_CONNECTED_TO_WAZE_ACCOUNT));
            }
        } else
        {
            ((TextView)findViewById(0x7f090041)).setText((new StringBuilder(String.valueOf(nativeManager.getLanguageString(DisplayStrings.DS_USER_NAME)))).append(": ").append(mywazedata.mUserName).toString());
            ((TextView)findViewById(0x7f090042)).setVisibility(0);
            ((TextView)findViewById(0x7f090042)).setText(mywazedata.mJoinedStr);
        }
        if (mywazedata.mFaceBookLoggedIn)
        {
            ((TextView)findViewById(0x7f090046)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CONNECTED_TO_FACEBOOK));
            return;
        } else
        {
            ((TextView)findViewById(0x7f090046)).setText(nativeManager.getLanguageString(DisplayStrings.DS_CONNECT_TO_FACEBOOK));
            return;
        }
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
        requestWindowFeature(1);
        setContentView(0x7f030002);
        mywazeManager.getMyWazeData(this);
        Analytics.log("SETTINGS_CLICK", "VAUE", "ACCOUNT AND LOGIN");
        ((TitleBar)findViewById(0x7f09003f)).init(this, DisplayStrings.DS_ACCOUNT_AND_SETTINGS);
        ((TextView)findViewById(0x7f090040)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_ACCOUNT));
        ((TextView)findViewById(0x7f090049)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_WAZE_ACCOUNT));
        ((TextView)findViewById(0x7f09004a)).setText(nativeManager.getLanguageString(DisplayStrings.DS_AN_ACCOUNT_IS_CREATED));
        ((TextView)findViewById(0x7f090044)).setText(nativeManager.getLanguageString(DisplayStrings.DS_USERNAME_AND_PASSWORD));
        ((TextView)findViewById(0x7f090048)).setText("Disconnect phone");
        ((TextView)findViewById(0x7f09004d)).setText(nativeManager.getLanguageString(DisplayStrings.DS_DELETE_ACCOUNT));
        ((TextView)findViewById(0x7f09004a)).setText(nativeManager.getLanguageString(DisplayStrings.DS_AN_ACCOUNT_IS_CREATED));
        ((TextView)findViewById(0x7f09004b)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_POINTS_RANK));
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final AccountAndLoginActivity this$0;

            public void onClick(View view)
            {
                nativeManager.DeleteAccount();
            }

            
            {
                this$0 = AccountAndLoginActivity.this;
                super();
            }
        };
        findViewById(0x7f090047).setVisibility(8);
        findViewById(0x7f09004c).setOnClickListener(onclicklistener);
        android.view.View.OnClickListener onclicklistener1 = new android.view.View.OnClickListener() {

            final AccountAndLoginActivity this$0;

            public void onClick(View view)
            {
                if (mywazeManager.isRandomUserNTV())
                {
                    Intent intent = new Intent(AccountAndLoginActivity.this, com/waze/phone/PhoneNumberSignInActivity);
                    intent.putExtra("type", 1);
                    intent.putExtra("back", 1);
                    intent.putExtra("fon_shon_rea_son", "SETTINGS");
                    startActivityForResult(intent, 0);
                    return;
                } else
                {
                    Intent intent1 = new Intent(AccountAndLoginActivity.this, com/waze/profile/MyProfileActivity);
                    startActivityForResult(intent1, 0);
                    return;
                }
            }

            
            {
                this$0 = AccountAndLoginActivity.this;
                super();
            }
        };
        android.view.View.OnClickListener onclicklistener2;
        if (MyWazeNativeManager.getInstance().FacebookEnabledNTV())
        {
            findViewById(0x7f090045).setVisibility(0);
        } else
        {
            findViewById(0x7f090045).setVisibility(8);
        }
        findViewById(0x7f090043).setOnClickListener(onclicklistener1);
        onclicklistener2 = new android.view.View.OnClickListener() {

            final AccountAndLoginActivity this$0;

            public void onClick(View view)
            {
                MyWazeNativeManager.getInstance().getFacebookSettings(AccountAndLoginActivity.this);
            }

            
            {
                this$0 = AccountAndLoginActivity.this;
                super();
            }
        };
        findViewById(0x7f090045).setOnClickListener(onclicklistener2);
    }

    protected void onDestroy()
    {
        super.onDestroy();
    }

    public void onFacebookSettings(com.waze.mywaze.MyWazeNativeManager.FacebookSettings facebooksettings)
    {
        Intent intent = new Intent(this, com/waze/mywaze/social/FacebookActivity);
        intent.putExtra("com.waze.mywaze.facebooksettings", facebooksettings);
        startActivityForResult(intent, 0);
    }


}
