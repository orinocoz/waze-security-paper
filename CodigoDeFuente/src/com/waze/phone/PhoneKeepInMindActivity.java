// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneNumberSignInActivity

public class PhoneKeepInMindActivity extends ActivityBase
{

    private TextView mBodyText;
    private TextView mFooterText;
    private TextView mHeaderText;
    private LinearLayout mNextButton;
    private TextView mNextText;

    public PhoneKeepInMindActivity()
    {
    }

    private void initFieldsTexts()
    {
        setTextContent();
    }

    private void initLayout()
    {
        setContentView(0x7f0300a1);
        mNextButton = (LinearLayout)findViewById(0x7f0904e3);
        mNextText = (TextView)findViewById(0x7f0904e4);
        mHeaderText = (TextView)findViewById(0x7f0904e0);
        mBodyText = (TextView)findViewById(0x7f0904e1);
        mFooterText = (TextView)findViewById(0x7f0904e2);
    }

    private void setListeners()
    {
        setOnClickListeners();
    }

    private void setOnClickListeners()
    {
        findViewById(0x7f0904e6).setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneKeepInMindActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("SKIP_ANYWAY", null, null, true);
                MainActivity.bReportMapShownAnalytics = true;
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
                this$0 = PhoneKeepInMindActivity.this;
                super();
            }
        });
        mNextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneKeepInMindActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("KEEP_IN_MIND_BACK", null, null, true);
                setResult(0);
                finish();
            }

            
            {
                this$0 = PhoneKeepInMindActivity.this;
                super();
            }
        });
    }

    private void setTextContent()
    {
        ((TextView)findViewById(0x7f0904e6)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SKIP_ANYWAY));
        mHeaderText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ARE_YOU_SURE_Q).toUpperCase());
        mBodyText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BY_SKIPPING_THIS_STEP__YOU_MAY_NOT_BE_ABLE_TO_RECOVER_YOUR_ACCOUNT__ALL_EXISTING_DATA_INCLUDING_YOUR_HISTORY__FAVORITES__POINTS_AND_RANK_WILL_BE_LOST_));
        mFooterText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WE_HIGHLY_RECOMMEND_YOU_TAKE_ANMINUTE_TO_REGISTER_YOUR_MOBILE_NUMBER_));
        mNextText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BACK));
    }

    public void onBackPressed()
    {
        NativeManager.getInstance().SignUplogAnalytics("KEEP_IN_MIND_BACK", null, null, true);
        super.onBackPressed();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        initFieldsTexts();
        setListeners();
        setRequestedOrientation(1);
        NativeManager.getInstance().SignUplogAnalytics("KEEP_IN_MIND_SHOWN", null, null, true);
    }
}
