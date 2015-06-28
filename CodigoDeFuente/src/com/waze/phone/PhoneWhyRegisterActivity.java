// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;

public class PhoneWhyRegisterActivity extends ActivityBase
{

    private LinearLayout mGotItButton;
    private WazeTextView mGotItText;

    public PhoneWhyRegisterActivity()
    {
    }

    private void initFieldsTexts()
    {
        ((TextView)findViewById(0x7f09050f)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WHY_REGISTERQ).toUpperCase());
        ((TextView)findViewById(0x7f090510)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_HELP_US_KEEP_YOUR_ACCOUNT_SAFE_BY_ENTERING_YOUR_PHONE_NUMBER__THIS_ALLOWS_YOU_TO_RESTORE_YOUR_ACCOUNT_AT_ANY_TIME__AND_ENJOY_THE_FULL_WAZE_EXPERIENCE_));
        mGotItText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_GOT_IT));
    }

    private void initMembers()
    {
        mGotItText = (WazeTextView)findViewById(0x7f090512);
        mGotItButton = (LinearLayout)findViewById(0x7f090511);
    }

    private void setOnClickListeners()
    {
        mGotItButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneWhyRegisterActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("GOT_IT", null, null, true);
                setResult(0);
                finish();
            }

            
            {
                this$0 = PhoneWhyRegisterActivity.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setRequestedOrientation(1);
        setContentView(0x7f0300ad);
        NativeManager.getInstance().SignUplogAnalytics("WHY_REGISTER_SHOWN", null, null, true);
        initMembers();
        setOnClickListeners();
        initFieldsTexts();
    }
}
