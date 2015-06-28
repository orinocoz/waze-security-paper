// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.util.Log;
import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBarTextButton;
import java.util.List;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

public class EditTextDialogActivity extends ActivityBase
{

    public static final String ARG_CALLBACK = (new StringBuilder(String.valueOf(TAG))).append(".arg.callback").toString();
    public static final String ARG_CONTEXT = (new StringBuilder(String.valueOf(TAG))).append(".arg.context").toString();
    public static final String ARG_EXPLAIN = (new StringBuilder(String.valueOf(TAG))).append(".arg.explain").toString();
    public static final String ARG_HINT_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.hint_ds").toString();
    public static final String ARG_INITIAL = (new StringBuilder(String.valueOf(TAG))).append(".arg.initial").toString();
    public static final String ARG_MIN_LINES = (new StringBuilder(String.valueOf(TAG))).append(".arg.nin_lines").toString();
    public static final String ARG_NATIVE = (new StringBuilder(String.valueOf(TAG))).append(".arg.native").toString();
    public static final String ARG_SINGLE_LINE = (new StringBuilder(String.valueOf(TAG))).append(".arg.single_line").toString();
    public static final String ARG_SPEECH = (new StringBuilder(String.valueOf(TAG))).append(".arg.speech").toString();
    public static final String ARG_SUBTITLE_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.subtitle_ds").toString();
    public static final String ARG_TITLE_DS = (new StringBuilder(String.valueOf(TAG))).append(".arg.title_ds").toString();
    public static final String ARG_TYPE = (new StringBuilder(String.valueOf(TAG))).append(".arg.type").toString();
    public static final String RET_VAL = (new StringBuilder(String.valueOf(TAG))).append(".ret.val").toString();
    private static final String TAG = com/waze/ifs/ui/EditTextDialogActivity.getName();
    private EditText mEditText;
    private boolean mIsNative;
    private long mNativeCallback;
    private long mNativeContext;

    public EditTextDialogActivity()
    {
        mIsNative = false;
    }

    private void doDone()
    {
        ((InputMethodManager)getSystemService("input_method")).hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
        if (mIsNative)
        {
            NativeManager.getInstance().editTextDialogCallback(mEditText.getText().toString(), mNativeCallback, mNativeContext);
            return;
        } else
        {
            Intent intent = new Intent();
            intent.putExtra(RET_VAL, mEditText.getText().toString());
            setResult(-1, intent);
            return;
        }
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("Navigate onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 1234)
        {
            if (j == -1)
            {
                java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
                if (arraylist.size() > 0)
                {
                    mEditText.setText((CharSequence)arraylist.get(0));
                    ((InputMethodManager)getSystemService("input_method")).showSoftInput(mEditText, 2);
                }
            }
        } else
        if (j == -1)
        {
            setResult(-1);
            finish();
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        NativeManager nativemanager;
        int i;
        String s;
        super.onCreate(bundle);
        nativemanager = NativeManager.getInstance();
        requestWindowFeature(1);
        setContentView(0x7f03004a);
        Intent intent = getIntent();
        i = intent.getIntExtra(ARG_TITLE_DS, 0);
        DisplayStrings displaystrings = DisplayStrings.values()[i];
        mIsNative = intent.getBooleanExtra(ARG_NATIVE, false);
        if (mIsNative)
        {
            mNativeCallback = intent.getLongExtra(ARG_CALLBACK, 0L);
            mNativeContext = intent.getLongExtra(ARG_CONTEXT, 0L);
        }
        s = intent.getStringExtra(ARG_EXPLAIN);
        int j = intent.getIntExtra(ARG_TYPE, 1);
        boolean flag = intent.getBooleanExtra(ARG_SPEECH, false);
        String s1 = nativemanager.getLanguageString(displaystrings);
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)findViewById(0x7f090058);
        titlebartextbutton.init(this, s1, nativemanager.getLanguageString(DisplayStrings.DS_DONE));
        android.view.View.OnClickListener onclicklistener = new android.view.View.OnClickListener() {

            final EditTextDialogActivity this$0;

            public void onClick(View view1)
            {
                doDone();
                finish();
            }

            
            {
                this$0 = EditTextDialogActivity.this;
                super();
            }
        };
        titlebartextbutton.setOnClickCloseListener(onclicklistener);
        if (intent.hasExtra(ARG_SUBTITLE_DS))
        {
            int i1 = intent.getIntExtra(ARG_SUBTITLE_DS, 0);
            DisplayStrings displaystrings2 = DisplayStrings.values()[i1];
            SettingsTitleText settingstitletext = (SettingsTitleText)findViewById(0x7f09027f);
            settingstitletext.setText(nativemanager.getLanguageString(displaystrings2));
            settingstitletext.setVisibility(0);
        }
        mEditText = (EditText)findViewById(0x7f090281);
        EditText edittext = mEditText;
        android.widget.TextView.OnEditorActionListener oneditoractionlistener = new android.widget.TextView.OnEditorActionListener() {

            final EditTextDialogActivity this$0;

            public boolean onEditorAction(TextView textview, int j1, KeyEvent keyevent)
            {
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    doDone();
                    finish();
                }
                return true;
            }

            
            {
                this$0 = EditTextDialogActivity.this;
                super();
            }
        };
        edittext.setOnEditorActionListener(oneditoractionlistener);
        mEditText.setInputType(0x20000 | j);
        if (intent.hasExtra(ARG_HINT_DS))
        {
            int l = intent.getIntExtra(ARG_HINT_DS, 0);
            DisplayStrings displaystrings1 = DisplayStrings.values()[l];
            mEditText.setHint(nativemanager.getLanguageString(displaystrings1));
        }
        if (intent.hasExtra(ARG_INITIAL))
        {
            String s2 = intent.getStringExtra(ARG_INITIAL);
            mEditText.setText(s2);
            mEditText.setSelectAllOnFocus(true);
        }
        if (intent.hasExtra(ARG_SINGLE_LINE))
        {
            boolean flag1 = intent.getBooleanExtra(ARG_SINGLE_LINE, false);
            mEditText.setSingleLine(flag1);
        }
        if (intent.hasExtra(ARG_MIN_LINES))
        {
            int k = intent.getIntExtra(ARG_MIN_LINES, 0);
            mEditText.setMinLines(k);
        }
        if (flag)
        {
            View view = findViewById(0x7f090062);
            android.view.View.OnClickListener onclicklistener1 = new android.view.View.OnClickListener() {

                final EditTextDialogActivity this$0;

                public void onClick(View view1)
                {
                    speechRecognitionClicked(view1);
                }

            
            {
                this$0 = EditTextDialogActivity.this;
                super();
            }
            };
            view.setOnClickListener(onclicklistener1);
        } else
        {
            findViewById(0x7f090062).setVisibility(8);
        }
        if (i != DisplayStrings.DS_CHIT_CHAT.ordinal()) goto _L2; else goto _L1
_L1:
        s = nativemanager.getLanguageString(DisplayStrings.DS_CHIT_CHATS_ARE_PUBLIC);
_L4:
        if (s != null)
        {
            ((TextView)findViewById(0x7f090282)).setText(s);
        }
        return;
_L2:
        if (i == DisplayStrings.DS_MESSAGE.ordinal())
        {
            s = nativemanager.getLanguageString(DisplayStrings.DS_MESSAGES_ARE_PRIVATE);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    protected void onResume()
    {
        super.onResume();
        mEditText.requestFocus();
    }

    public void speechRecognitionClicked(View view)
    {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }


}
