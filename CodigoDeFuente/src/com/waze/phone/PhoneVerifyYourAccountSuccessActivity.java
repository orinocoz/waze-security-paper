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

// Referenced classes of package com.waze.phone:
//            AddressBook

public class PhoneVerifyYourAccountSuccessActivity extends ActivityBase
{

    private LinearLayout mNextButton;
    private TextView mNextText;
    private TextView mVerifyBodyText;
    private TextView mVerifyHeaderText;

    public PhoneVerifyYourAccountSuccessActivity()
    {
    }

    private void initFieldsTexts()
    {
        setTextContent();
    }

    private void initLayout()
    {
        setContentView(0x7f0300ab);
        mNextButton = (LinearLayout)findViewById(0x7f0904e3);
        mNextText = (TextView)findViewById(0x7f0904e4);
        mVerifyHeaderText = (TextView)findViewById(0x7f090515);
        mVerifyBodyText = (TextView)findViewById(0x7f090516);
    }

    private void setTextContent()
    {
        mVerifyHeaderText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_HOORAY).toUpperCase());
        mVerifyBodyText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_YOUR_ACCOUNT_HAS_BEEN_VERIFIEDE_YOUR_POINTS_FAVORITES_AND_HISTORY_WILL_BE_RESTORED_));
        mNextText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DONE));
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        initFieldsTexts();
        AddressBook.CreateAccount();
        mNextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourAccountSuccessActivity this$0;

            public void onClick(View view)
            {
                setResult(-1);
                finish();
            }

            
            {
                this$0 = PhoneVerifyYourAccountSuccessActivity.this;
                super();
            }
        });
        NativeManager.getInstance().SignUplogAnalytics("CONGRATS_DONE", null, null, true);
    }

    protected void onDestroy()
    {
        NativeManager.getInstance().signup_finished();
        super.onDestroy();
    }
}
