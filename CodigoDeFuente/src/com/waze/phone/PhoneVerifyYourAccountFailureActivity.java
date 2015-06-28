// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.AddressItem;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.phone:
//            PhoneLoginActivity

public class PhoneVerifyYourAccountFailureActivity extends ActivityBase
{

    private static final int SEARCH_ACTIVITY_REQUEST_CODE = 1;
    private LinearLayout mNextButton;
    private TextView mNextText;
    private TextView mVerifyBodyText;
    private TextView mVerifyHeaderText;

    public PhoneVerifyYourAccountFailureActivity()
    {
    }

    private void initFieldsTexts()
    {
        setTextContent();
    }

    private void initLayout()
    {
        setContentView(0x7f0300aa);
        mNextButton = (LinearLayout)findViewById(0x7f0904e3);
        mNextText = (TextView)findViewById(0x7f0904e4);
        mVerifyHeaderText = (TextView)findViewById(0x7f090515);
        mVerifyBodyText = (TextView)findViewById(0x7f090516);
    }

    private void setListeners()
    {
        setOnClickListeners();
    }

    private void setOnClickListeners()
    {
        mNextButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourAccountFailureActivity this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("CREATE_NEW_ACCOUNT", null, null, true);
                MainActivity.bToOpenAccountPopup = true;
                setResult(-1);
                finish();
            }

            
            {
                this$0 = PhoneVerifyYourAccountFailureActivity.this;
                super();
            }
        });
        ((TextView)findViewById(0x7f090517)).setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_ALREADY_A_WAZER_LOGIN));
        ((TextView)findViewById(0x7f090517)).setPaintFlags(8 | ((TextView)findViewById(0x7f090517)).getPaintFlags());
        findViewById(0x7f090517).setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneVerifyYourAccountFailureActivity this$0;

            public void onClick(View view)
            {
                Intent intent = new Intent(PhoneVerifyYourAccountFailureActivity.this, com/waze/phone/PhoneLoginActivity);
                intent.putExtra("verifyMode", 1);
                startActivityForResult(intent, 4321);
            }

            
            {
                this$0 = PhoneVerifyYourAccountFailureActivity.this;
                super();
            }
        });
    }

    private void setTextContent()
    {
        mVerifyHeaderText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_BAD_NEWS_BUCKOE).toUpperCase());
        mVerifyBodyText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_WE_CANST_RECOVER_YOUR_ACCOUNT_NIT_MUST_BE_HANGING_OUT_WITH_SOME_OTHER_LONGOLOAT_FRIENDS_));
        mNextText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CREATE_A_NEW_ACCOUNT));
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("phoneVerifyYourAccount onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 4321 && j == -1)
        {
            MainActivity.bToOpenAccountPopup = true;
            setResult(-1);
            finish();
            return;
        }
        if (j == -1 && i == 1 && intent != null)
        {
            AddressItem _tmp = (AddressItem)intent.getExtras().getSerializable("AddressItem");
        }
        super.onActivityResult(i, j, intent);
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        initFieldsTexts();
        setListeners();
        NativeManager.getInstance().SignUplogAnalytics("CONTACTS_FAILED_SHOWN", null, null, true);
    }

    public void onPinTokenSet()
    {
        NativeManager.getInstance().CloseProgressPopup();
    }
}
