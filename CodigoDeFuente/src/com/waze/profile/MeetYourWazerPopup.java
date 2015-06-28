// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.phone.PhoneNumberSignInActivity;
import com.waze.strings.DisplayStrings;

public class MeetYourWazerPopup extends Dialog
{

    private boolean IsValid;
    boolean already_queried;
    private Context mContext;
    private String mText;
    private NativeManager nativeManager;
    private TextView signButton;
    private EditText userNameView;

    public MeetYourWazerPopup(Context context)
    {
        super(context, 0x7f06000f);
        mContext = null;
        mText = null;
        already_queried = false;
        IsValid = false;
        mContext = context;
        MainActivity.bToOpenMeetYourWazer = false;
        nativeManager = AppService.getNativeManager();
    }

    private void initLayout()
    {
        setContentView(0x7f030082);
        getWindow().setLayout(-1, -1);
        ((TextView)findViewById(0x7f09004f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_MEET_YOUR_WAZER));
        ((TextView)findViewById(0x7f0903f5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_WAZER_REPRESENTS));
        ((TextView)findViewById(0x7f090050)).setText(nativeManager.getLanguageString(DisplayStrings.DS_ALREADY_A_WAZERQ));
        ((TextView)findViewById(0x7f090050)).setPaintFlags(8);
        ((TextView)findViewById(0x7f0903f7)).setText(nativeManager.getLanguageString(DisplayStrings.DS_REPORT_ON_ROAD_CONDITIONS_TO_COLLECT_POINTS));
        AppService.getMainActivity().DisableOrientation();
        ((TextView)findViewById(0x7f090050)).setOnClickListener(new android.view.View.OnClickListener() {

            final MeetYourWazerPopup this$0;

            public void onClick(View view)
            {
                NativeManager.getInstance().SignUplogAnalytics("MINIMAL_ALREADY_WAZER_CLICKED", null, null, true);
                Intent intent = new Intent(mContext, com/waze/phone/PhoneNumberSignInActivity);
                intent.putExtra("type", 0);
                intent.putExtra("report_start", false);
                intent.putExtra("fon_shon_rea_son", "SIGNUP");
                AppService.getMainActivity().startActivityForResult(intent, 5000);
            }

            
            {
                this$0 = MeetYourWazerPopup.this;
                super();
            }
        });
        signButton = (TextView)findViewById(0x7f090057);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_START_DRIVING));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final MeetYourWazerPopup this$0;

            public void onClick(View view)
            {
                onContinueClicked();
            }

            
            {
                this$0 = MeetYourWazerPopup.this;
                super();
            }
        });
    }

    private void onContinueClicked()
    {
        NativeManager.getInstance().SignUplogAnalytics("MINIMAL_START_DRIVING_CLICKED", null, null, true);
        NativeManager.getInstance().SetPhoneIsFirstTime(false);
        MyWazeNativeManager.getInstance().skipSignup();
        NativeManager.getInstance().signup_finished();
        close();
    }

    protected void close()
    {
        NativeManager.getInstance().SetPhoneIsFirstTime(false);
        AppService.getMainActivity().EnableOrientation();
        dismiss();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        close();
    }

    public void onBackPressed()
    {
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        NativeManager.getInstance().SignUplogAnalytics("START", null, null, true);
        initLayout();
    }


}
