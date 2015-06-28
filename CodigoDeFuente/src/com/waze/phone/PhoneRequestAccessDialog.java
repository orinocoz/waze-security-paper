// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import java.util.Locale;

// Referenced classes of package com.waze.phone:
//            AddressBook

public class PhoneRequestAccessDialog extends Dialog
{
    public static interface PhoneRequestAccessResultListener
    {

        public abstract void onResult(boolean flag);
    }


    private LinearLayout mGotItButton;
    private WazeTextView mGotItText;
    private final PhoneRequestAccessResultListener mListener;
    boolean mbOkClicked;

    public PhoneRequestAccessDialog(Context context, PhoneRequestAccessResultListener phonerequestaccessresultlistener)
    {
        super(context, 0x7f06000f);
        mListener = phonerequestaccessresultlistener;
        mbOkClicked = false;
    }

    private void initFieldsTexts()
    {
        NativeManager nativemanager = NativeManager.getInstance();
        ((TextView)findViewById(0x7f09050f)).setText(nativemanager.getLanguageString(DisplayStrings.DS_ALLOW_ACCESS_TO_CONTACTS).toUpperCase(Locale.US));
        ((TextView)findViewById(0x7f090510)).setText(nativemanager.getLanguageString(DisplayStrings.DS_ALLOW_WAZE_TO_ACCESS_CONTACTS_DESCRIPTION));
        mGotItText.setText(nativemanager.getLanguageString(DisplayStrings.DS_ALLOW_ACCESS));
        TextView textview = (TextView)findViewById(0x7f090513);
        textview.setVisibility(0);
        textview.setText(nativemanager.getLanguageString(DisplayStrings.DS_LEARN_MORE));
        textview.setPaintFlags(8);
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneRequestAccessDialog this$0;

            public void onClick(View view)
            {
                AppService.OpenBrowser(MyWazeNativeManager.getInstance().getLearnMorePrivacyUrlNTV());
            }

            
            {
                this$0 = PhoneRequestAccessDialog.this;
                super();
            }
        });
        findViewById(0x7f090514).setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneRequestAccessDialog this$0;

            public void onClick(View view)
            {
                dismiss();
            }

            
            {
                this$0 = PhoneRequestAccessDialog.this;
                super();
            }
        });
    }

    private void initMembers()
    {
        mGotItText = (WazeTextView)findViewById(0x7f090512);
        mGotItButton = (LinearLayout)findViewById(0x7f090511);
    }

    private void setOnClickListeners()
    {
        mGotItButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PhoneRequestAccessDialog this$0;

            public void onClick(View view)
            {
                Analytics.log("ALLOW_CONTACTS_ACCESS_CONTINUE_CLICK", null, null);
                if (!AddressBook.AccountExist())
                {
                    AddressBook.CreateAccount();
                }
                NativeManager.getInstance().setContactsAccess(true);
                mbOkClicked = true;
                dismiss();
            }

            
            {
                this$0 = PhoneRequestAccessDialog.this;
                super();
            }
        });
    }

    public void dismiss()
    {
        mListener.onResult(mbOkClicked);
        super.dismiss();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f0300a7);
        getWindow().setLayout(-1, -1);
        Analytics.log("ALLOW_CONTACTS_ACCESS_SHOWN", null, null);
        initMembers();
        setOnClickListeners();
        initFieldsTexts();
    }
}
