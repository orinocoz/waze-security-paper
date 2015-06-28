// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.profile;

import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.mywaze.MyWazeData;
import com.waze.mywaze.MyWazeNativeManager;
import com.waze.strings.DisplayStrings;

public class PasswordRecoveryPopup extends Dialog
{

    private boolean IsValid;
    boolean already_queried;
    Handler h;
    long idle_min;
    long last_text_edit;
    private Context mContext;
    private String mText;
    private String mUserName;
    private MyWazeData mWazeData;
    private NativeManager nativeManager;
    private TextView signButton;
    private EditText userNameView;

    public PasswordRecoveryPopup(Context context)
    {
        super(context, 0x7f06000f);
        mContext = null;
        mWazeData = null;
        idle_min = 500L;
        last_text_edit = 0L;
        h = new Handler();
        mText = null;
        already_queried = false;
        mUserName = null;
        IsValid = false;
        mContext = context;
        nativeManager = AppService.getNativeManager();
    }

    private void initLayout()
    {
        setContentView(0x7f03009e);
        getWindow().setLayout(-1, -1);
        ((TextView)findViewById(0x7f09004f)).setText("");
        ((TextView)findViewById(0x7f0903f5)).setText(nativeManager.getLanguageString(DisplayStrings.DS_YOUR_USER_NAME_IS));
        ((TextView)findViewById(0x7f09044f)).setText(nativeManager.getLanguageString(DisplayStrings.DS_6_CHARACTERS_MINIMUM));
        ((TextView)findViewById(0x7f09044e)).setText(nativeManager.getLanguageString(DisplayStrings.DS_SELECT_YOUR_PASSWORD));
        MainActivity.bToOpenPasswordRecovery = false;
        userNameView = (EditText)findViewById(0x7f09044d);
        signButton = (TextView)findViewById(0x7f090057);
        signButton.setText(nativeManager.getLanguageString(DisplayStrings.DS_CHANGE_PASSWORD));
        signButton.setOnClickListener(new android.view.View.OnClickListener() {

            final PasswordRecoveryPopup this$0;

            public void onClick(View view)
            {
                onContinueClicked();
            }

            
            {
                this$0 = PasswordRecoveryPopup.this;
                super();
            }
        });
        userNameView.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final PasswordRecoveryPopup this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (i == 6)
                {
                    onContinueClicked();
                    return true;
                } else
                {
                    return false;
                }
            }

            
            {
                this$0 = PasswordRecoveryPopup.this;
                super();
            }
        });
        userNameView.addTextChangedListener(new TextWatcher() {

            final PasswordRecoveryPopup this$0;

            public void afterTextChanged(Editable editable)
            {
            }

            public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            public void onTextChanged(CharSequence charsequence, int i, int j, int k)
            {
            }

            
            {
                this$0 = PasswordRecoveryPopup.this;
                super();
            }
        });
    }

    private void onContinueClicked()
    {
        String s = userNameView.getText().toString();
        if (s == null || s.equals(""))
        {
            return;
        }
        String s1 = mWazeData.mFirstName;
        String s2 = mWazeData.mLastName;
        String s3 = mWazeData.mUserName;
        String s4 = userNameView.getText().toString();
        if (s4 == null || s4.equals(""))
        {
            s4 = "";
        }
        NativeManager.getInstance().OpenProgressPopup(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_PLEASE_WAIT___));
        MyWazeNativeManager.getInstance().setNames(s1, s2, s3, s4, "");
    }

    public void OnUpdateResult(boolean flag)
    {
        NativeManager.getInstance().CloseProgressPopup();
        if (flag)
        {
            close();
        }
    }

    public void SetMyWazeData(MyWazeData mywazedata)
    {
        mWazeData = mywazedata;
        ((TextView)findViewById(0x7f09004f)).setText(mywazedata.mUserName);
    }

    protected void close()
    {
        AppService.getMainActivity().EnableOrientation();
        dismiss();
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
    }

    public void onBackPressed()
    {
        close();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
        MyWazeNativeManager.getInstance().getMyWazeData(AppService.getMainActivity());
    }

}
