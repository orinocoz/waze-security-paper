// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.waze.AppService;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.messages.UserMessage;
import com.waze.settings.DrillDownSettingView;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.user.UserData;
import com.waze.view.title.TitleBar;

public class UserOptionsActivity extends ActivityBase
{

    private FriendUserData mFriendsData;
    private UserData mUserData;

    public UserOptionsActivity()
    {
    }

    private void showErrorPopup(DisplayStrings displaystrings)
    {
        android.content.DialogInterface.OnClickListener onclicklistener = new android.content.DialogInterface.OnClickListener() {

            final UserOptionsActivity this$0;

            public void onClick(DialogInterface dialoginterface, int i)
            {
                setResult(0);
                finish();
            }

            
            {
                this$0 = UserOptionsActivity.this;
                super();
            }
        };
        MsgBox.openMessageBoxWithCallback(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE), NativeManager.getInstance().getLanguageString(displaystrings), false, onclicklistener);
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        super.onActivityResult(i, j, intent);
        if (j == 3)
        {
            setResult(0);
            finish();
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030108);
        mFriendsData = (FriendUserData)getIntent().getExtras().getSerializable("FriendUserData");
        if (mFriendsData == null)
        {
            mUserData = (UserData)getIntent().getExtras().getSerializable("UserData");
        } else
        {
            mUserData = mFriendsData;
        }
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_OPTIONS);
        ((DrillDownSettingView)findViewById(0x7f0906c4)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MESSAGE));
        ((DrillDownSettingView)findViewById(0x7f0906c3)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BEEP_BEEP));
        ((DrillDownSettingView)findViewById(0x7f0906c5)).setVisibility(8);
        findViewById(0x7f0906c7).setVisibility(8);
        findViewById(0x7f0906c2).setVisibility(8);
        findViewById(0x7f0906c3).setOnClickListener(new android.view.View.OnClickListener() {

            final UserOptionsActivity this$0;

            public void onClick(View view)
            {
                if (!AppService.isNetworkAvailable())
                {
                    showErrorPopup(DisplayStrings.DS_SORRY__YOU_HAVE_NO_NETWORK_CONNECTION_RIGHT_NOW__PLEASE_TRY_LATER);
                    return;
                } else
                {
                    Analytics.log("BEEP_BEEP_CLICK_FROM", "VAUE", "USER_POPUP");
                    NativeManager.getInstance().SendBeepBeep(mUserData.mLongitude, mUserData.mLatitude, mUserData.mAzimuth, mUserData.mID, new com.waze.NativeManager.IResultCode() {

                        final _cls1 this$1;

                        public void onResult(int i)
                        {
                            if (i >= 0)
                            {
                                setResult(-1);
                                finish();
                            }
                        }

            
            {
                this$1 = _cls1.this;
                super();
            }
                    });
                    return;
                }
            }


            
            {
                this$0 = UserOptionsActivity.this;
                super();
            }
        });
        findViewById(0x7f0906c4).setOnClickListener(new android.view.View.OnClickListener() {

            final UserOptionsActivity this$0;

            public void onClick(View view)
            {
                UserMessage.startPrivate(UserOptionsActivity.this, mUserData);
            }

            
            {
                this$0 = UserOptionsActivity.this;
                super();
            }
        });
    }


}
