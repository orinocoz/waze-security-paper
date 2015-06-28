// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.install.InstallFacebookPrivacyActivity;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.social.facebook.FacebookWrapper;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.profile:
//            FoursquareConnectActivity, TwitterConnectActivity, WelcomeDoneActivity

public class WelcomeSocialActivity extends ActivityBase
{

    public WelcomeSocialActivity()
    {
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(0x7f030138);
        ((Button)findViewById(0x7f0907da)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT));
        ((Button)findViewById(0x7f0907dc)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT));
        ((Button)findViewById(0x7f0907db)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT));
        ((Button)findViewById(0x7f0907da)).setOnClickListener(new android.view.View.OnClickListener() {

            final WelcomeSocialActivity this$0;

            public void onClick(View view)
            {
                FacebookWrapper.getInstance().authorize(WelcomeSocialActivity.this, null, false);
            }

            
            {
                this$0 = WelcomeSocialActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0907dc)).setOnClickListener(new android.view.View.OnClickListener() {

            final WelcomeSocialActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(WelcomeSocialActivity.this, com/waze/profile/FoursquareConnectActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = WelcomeSocialActivity.this;
                super();
            }
        });
        ((Button)findViewById(0x7f0907db)).setOnClickListener(new android.view.View.OnClickListener() {

            final WelcomeSocialActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(WelcomeSocialActivity.this, com/waze/profile/TwitterConnectActivity);
                startActivityForResult(intent, 0);
            }

            
            {
                this$0 = WelcomeSocialActivity.this;
                super();
            }
        });
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final WelcomeSocialActivity this$0;

            public void onClick(View view)
            {
                if (MyWazeNativeManager.getInstance().getFacebookLoggedInNTV())
                {
                    Intent intent = new Intent(WelcomeSocialActivity.this, com/waze/install/InstallFacebookPrivacyActivity);
                    startActivityForResult(intent, 0);
                } else
                {
                    Intent intent1 = new Intent(WelcomeSocialActivity.this, com/waze/profile/WelcomeDoneActivity);
                    startActivityForResult(intent1, 0);
                }
                setResult(-1);
                finish();
            }

            
            {
                this$0 = WelcomeSocialActivity.this;
                super();
            }
        };
        ((TitleBar)findViewById(0x7f090058)).setOnClickCloseListener(onclicklistener);
        ((TitleBar)findViewById(0x7f090058)).init(this, NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WELCOME), NativeManager.getInstance().getLanguageString(DisplayStrings.DS_NEXT));
        ((TitleBar)findViewById(0x7f090058)).setUpButtonDisabled();
        ((TextView)findViewById(0x7f0907d8)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CONNECT_TO_SOCIAL_NETWORKS));
        ((TextView)findViewById(0x7f0907d9)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOU_CAN_ALLWAYS));
    }
}
