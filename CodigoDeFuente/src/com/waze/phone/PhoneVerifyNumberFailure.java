// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

public class PhoneVerifyNumberFailure extends ActivityBase
{

    private int mAuthNumberOfRetries;
    private LinearLayout mGotItButton;
    private WazeTextView mGotItText;

    public PhoneVerifyNumberFailure()
    {
        mAuthNumberOfRetries = 0;
    }

    private void initFieldsTexts()
    {
        ((TextView)findViewById(0x7f09050f)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_UHHOHE).toUpperCase());
        ((TextView)findViewById(0x7f090510)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WE_COULDNT_VERIFY_YOUR_PHONE_NUMBER_CONTINUE_TO_MAP));
        mGotItText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SKIP_TO_MAP));
    }

    private void initMembers()
    {
        mGotItText = (WazeTextView)findViewById(0x7f090512);
        mGotItButton = (LinearLayout)findViewById(0x7f090511);
    }

    private void setOnClickListeners()
    {
        mGotItButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyNumberFailure this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("CODE_PROBLEM_SKIP", "VAUE", (new StringBuilder()).append(mAuthNumberOfRetries).toString(), true);
                MainActivity.bSignupSkipped = true;
                if (!PhoneNumberSignInActivity.bIsUpgrade)
                {
                    MyWazeNativeManager.getInstance().skipSignup();
                }
                NativeManager.getInstance().signup_finished();
                setResult(-1);
                finish();
            }

            
            {
                this$0 = PhoneVerifyNumberFailure.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Intent intent = getIntent();
        if (intent != null && intent.hasExtra("AuthNumberOfRetries"))
        {
            mAuthNumberOfRetries = intent.getIntExtra("AuthNumberOfRetries", 0);
        }
        setContentView(0x7f0300a8);
        initMembers();
        setOnClickListeners();
        initFieldsTexts();
    }

}
