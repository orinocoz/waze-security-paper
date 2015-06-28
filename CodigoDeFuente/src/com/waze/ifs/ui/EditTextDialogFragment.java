// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Activity;
import android.app.Fragment;
import android.content.Intent;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBarTextButton;
import java.util.List;

public class EditTextDialogFragment extends Fragment
{
    public static interface IEditText
    {

        public abstract void textEdited(String s);
    }


    private static final String TAG = com/waze/ifs/ui/EditTextDialogFragment.getName();
    private EditText mEditText;
    private String mExplanation;
    private DisplayStrings mHintDs;
    private String mInitial;
    private int mInputType;
    private int mMaxLength;
    private int mMinLines;
    private boolean mSingleLine;
    private DisplayStrings mSubtitleDs;
    private DisplayStrings mTitleDs;
    private boolean mUseSpeech;
    private View r;

    public EditTextDialogFragment()
    {
        mTitleDs = null;
        mSubtitleDs = null;
        mHintDs = null;
        mMaxLength = 0;
        mMinLines = 0;
    }

    private void doDone()
    {
        ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
        ((IEditText)getActivity()).textEdited(mEditText.getText().toString());
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        Log.d("WAZE", (new StringBuilder("Navigate onActRes requestCode=")).append(i).append(" resultCode=").append(j).append(" Intent=").append(intent).toString());
        if (i == 1234 && j == -1)
        {
            java.util.ArrayList arraylist = intent.getStringArrayListExtra("android.speech.extra.RESULTS");
            if (arraylist.size() > 0)
            {
                mEditText.setText((CharSequence)arraylist.get(0));
            }
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        NativeManager nativemanager;
        super.onCreateView(layoutinflater, viewgroup, bundle);
        nativemanager = NativeManager.getInstance();
        if (bundle != null)
        {
            if (bundle.containsKey((new StringBuilder(String.valueOf(TAG))).append(".mTitleDs").toString()))
            {
                mTitleDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mTitleDs").toString())];
            }
            if (bundle.containsKey((new StringBuilder(String.valueOf(TAG))).append(".mSubtitleDs").toString()))
            {
                mSubtitleDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mSubtitleDs").toString())];
            }
            if (bundle.containsKey((new StringBuilder(String.valueOf(TAG))).append(".mHintDs").toString()))
            {
                mHintDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mHintDs").toString())];
            }
            mInputType = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mInputType").toString());
            mMaxLength = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mMaxLength").toString());
            mMinLines = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mMinLines").toString());
            mUseSpeech = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mUseSpeech").toString(), mUseSpeech);
            mSingleLine = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSingleLine").toString(), mSingleLine);
            mExplanation = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mExplanation").toString());
            mInitial = bundle.getString((new StringBuilder(String.valueOf(TAG))).append(".mInitial").toString());
        }
        r = layoutinflater.inflate(0x7f03004a, viewgroup, false);
        String s = nativemanager.getLanguageString(mTitleDs);
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)r.findViewById(0x7f090058);
        titlebartextbutton.init(getActivity(), s, nativemanager.getLanguageString(DisplayStrings.DS_DONE));
        titlebartextbutton.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final EditTextDialogFragment this$0;

            public void onClick(View view)
            {
                doDone();
            }

            
            {
                this$0 = EditTextDialogFragment.this;
                super();
            }
        });
        if (mSubtitleDs != null)
        {
            SettingsTitleText settingstitletext = (SettingsTitleText)r.findViewById(0x7f09027f);
            settingstitletext.setText(nativemanager.getLanguageString(mSubtitleDs));
            settingstitletext.setVisibility(0);
        }
        mEditText = (EditText)r.findViewById(0x7f090281);
        mEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

            final EditTextDialogFragment this$0;

            public boolean onEditorAction(TextView textview, int i, KeyEvent keyevent)
            {
                if (keyevent != null && keyevent.getAction() == 1)
                {
                    doDone();
                }
                return true;
            }

            
            {
                this$0 = EditTextDialogFragment.this;
                super();
            }
        });
        mEditText.setInputType(0x20000 | mInputType);
        if (mHintDs != null)
        {
            mEditText.setHint(nativemanager.getLanguageString(mHintDs));
        }
        if (mInitial != null)
        {
            mEditText.setText(mInitial);
            mEditText.setSelectAllOnFocus(true);
        }
        mEditText.setSingleLine(mSingleLine);
        mEditText.setMinLines(mMinLines);
        if (mMaxLength > 0)
        {
            mEditText.addTextChangedListener(new TextWatcher() {

                final EditTextDialogFragment this$0;

                public void afterTextChanged(Editable editable)
                {
                    if (editable.length() > mMaxLength)
                    {
                        editable.delete(300, editable.length());
                    }
                }

                public void beforeTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

                public void onTextChanged(CharSequence charsequence, int i, int j, int k)
                {
                }

            
            {
                this$0 = EditTextDialogFragment.this;
                super();
            }
            });
        }
        if (mUseSpeech)
        {
            r.findViewById(0x7f090062).setOnClickListener(new android.view.View.OnClickListener() {

                final EditTextDialogFragment this$0;

                public void onClick(View view)
                {
                    speechRecognitionClicked(view);
                }

            
            {
                this$0 = EditTextDialogFragment.this;
                super();
            }
            });
        } else
        {
            r.findViewById(0x7f090062).setVisibility(8);
        }
        if (mTitleDs != DisplayStrings.DS_CHIT_CHAT) goto _L2; else goto _L1
_L1:
        mExplanation = nativemanager.getLanguageString(DisplayStrings.DS_CHIT_CHATS_ARE_PUBLIC);
_L4:
        if (mExplanation != null)
        {
            ((TextView)r.findViewById(0x7f090282)).setText(mExplanation);
        }
        return r;
_L2:
        if (mTitleDs == DisplayStrings.DS_MESSAGE)
        {
            mExplanation = nativemanager.getLanguageString(DisplayStrings.DS_MESSAGES_ARE_PRIVATE);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void onResume()
    {
        super.onResume();
        mEditText.requestFocus();
        ((InputMethodManager)getActivity().getSystemService("input_method")).showSoftInput(mEditText, 2);
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        if (mTitleDs != null)
        {
            bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mTitleDs").toString(), mTitleDs.ordinal());
        }
        if (mSubtitleDs != null)
        {
            bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mSubtitleDs").toString(), mSubtitleDs.ordinal());
        }
        if (mHintDs != null)
        {
            bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mHintDs").toString(), mHintDs.ordinal());
        }
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mInputType").toString(), mInputType);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mMaxLength").toString(), mMaxLength);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mMinLines").toString(), mMinLines);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mUseSpeech").toString(), mUseSpeech);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSingleLine").toString(), mSingleLine);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mExplanation").toString(), mExplanation);
        bundle.putString((new StringBuilder(String.valueOf(TAG))).append(".mInitial").toString(), mInitial);
    }

    public void setExplanation(String s)
    {
        mExplanation = s;
    }

    public void setHint(DisplayStrings displaystrings)
    {
        mHintDs = displaystrings;
    }

    public void setInitial(String s)
    {
        mInitial = s;
    }

    public void setInputType(int i)
    {
        mInputType = i;
    }

    public void setMaxLength(int i)
    {
        mMaxLength = i;
    }

    public void setMinLines(int i)
    {
        mMinLines = i;
    }

    public void setSingleLine(boolean flag)
    {
        mSingleLine = flag;
    }

    public void setSpeech(boolean flag)
    {
        mUseSpeech = flag;
    }

    public void setSubtitle(DisplayStrings displaystrings)
    {
        mSubtitleDs = displaystrings;
    }

    public void setTitle(DisplayStrings displaystrings)
    {
        mTitleDs = displaystrings;
    }

    public void speechRecognitionClicked(View view)
    {
        Intent intent = new Intent("android.speech.action.RECOGNIZE_SPEECH");
        intent.putExtra("android.speech.extra.LANGUAGE_MODEL", "free_form");
        startActivityForResult(intent, 1234);
    }



}
