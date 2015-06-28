// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.app.Fragment;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import com.waze.view.title.TitleBarTextButton;
import java.io.Serializable;

public class SimpleChoiceFragment extends Fragment
{
    public static interface ISimplyChoose
    {

        public abstract void choiceMade(SimpleChoice simplechoice, String s);
    }

    public static class SimpleChoice
        implements Serializable
    {

        private static final long serialVersionUID = 1L;
        public String display;
        public int value;

        public SimpleChoice(String s, int i)
        {
            display = s;
            value = i;
        }
    }


    private static final String TAG = com/waze/reports/SimpleChoiceFragment.getName();
    private boolean mAllowComment;
    private SimpleChoice mChoice;
    private SimpleChoice mChoices[];
    private EditText mEditText;
    private DisplayStrings mHintDs;
    private LayoutInflater mInflater;
    private int mInputType;
    private View mSelectedView;
    private boolean mSingleLine;
    private DisplayStrings mSubtitleDs;
    private DisplayStrings mTitleDs;
    private View r;

    public SimpleChoiceFragment()
    {
    }

    private View addChoice(ViewGroup viewgroup, final SimpleChoice choice, boolean flag, boolean flag1)
    {
        final View view = mInflater.inflate(0x7f0300f3, null);
        ((WazeTextView)view.findViewById(0x7f09062d)).setText(choice.display);
        View view1 = view.findViewById(0x7f09062b);
        android.view.ViewGroup.LayoutParams layoutparams;
        if (flag1)
        {
            view1.setBackgroundResource(0x7f020223);
        } else
        if (flag)
        {
            view1.setBackgroundResource(0x7f020226);
        } else
        {
            view1.setBackgroundResource(0x7f020224);
        }
        view1.setPadding(0, 0, 0, 0);
        viewgroup.addView(view);
        layoutparams = view1.getLayoutParams();
        layoutparams.height = getResources().getDimensionPixelSize(0x7f0b001f);
        view1.setLayoutParams(layoutparams);
        view.findViewById(0x7f09065d).setVisibility(8);
        view.setOnClickListener(new android.view.View.OnClickListener() {

            final SimpleChoiceFragment this$0;
            private final SimpleChoice val$choice;
            private final View val$view;

            public void onClick(View view2)
            {
                if (mSelectedView == view2)
                {
                    return;
                }
                view.findViewById(0x7f09065d).setVisibility(0);
                if (mSelectedView != null)
                {
                    mSelectedView.findViewById(0x7f09065d).setVisibility(8);
                }
                mSelectedView = view;
                mChoice = choice;
            }

            
            {
                this$0 = SimpleChoiceFragment.this;
                view = view1;
                choice = simplechoice;
                super();
            }
        });
        return view;
    }

    private void doDone()
    {
        if (mChoice == null)
        {
            return;
        } else
        {
            ((InputMethodManager)getActivity().getSystemService("input_method")).hideSoftInputFromWindow(mEditText.getWindowToken(), 0);
            ((ISimplyChoose)getActivity()).choiceMade(mChoice, mEditText.getText().toString());
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        NativeManager nativemanager;
        LinearLayout linearlayout;
        int i;
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mInflater = layoutinflater;
        nativemanager = NativeManager.getInstance();
        if (bundle != null)
        {
            mTitleDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mTitleDs").toString())];
            mSubtitleDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mSubtitleDs").toString())];
            mHintDs = DisplayStrings.values()[bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mHintDs").toString())];
            mChoices = (SimpleChoice[])bundle.getSerializable((new StringBuilder(String.valueOf(TAG))).append(".mChoices").toString());
            mInputType = bundle.getInt((new StringBuilder(String.valueOf(TAG))).append(".mInputType").toString());
            mAllowComment = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mAllowComment").toString(), mAllowComment);
            mSingleLine = bundle.getBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSingleLine").toString(), mSingleLine);
        }
        r = layoutinflater.inflate(0x7f03010c, viewgroup, false);
        String s = nativemanager.getLanguageString(mTitleDs);
        TitleBarTextButton titlebartextbutton = (TitleBarTextButton)r.findViewById(0x7f090058);
        titlebartextbutton.init(getActivity(), s, nativemanager.getLanguageString(DisplayStrings.DS_DONE));
        titlebartextbutton.setOnClickCloseListener(new android.view.View.OnClickListener() {

            final SimpleChoiceFragment this$0;

            public void onClick(View view)
            {
                doDone();
            }

            
            {
                this$0 = SimpleChoiceFragment.this;
                super();
            }
        });
        if (mSubtitleDs != null)
        {
            SettingsTitleText settingstitletext = (SettingsTitleText)r.findViewById(0x7f09027f);
            settingstitletext.setText(nativemanager.getLanguageString(mSubtitleDs));
            settingstitletext.setVisibility(0);
        }
        linearlayout = (LinearLayout)r.findViewById(0x7f0906e8);
        if (mChoices == null || mChoices.length <= 0)
        {
            break MISSING_BLOCK_LABEL_559;
        }
        linearlayout.removeAllViews();
        i = 0;
_L3:
        if (i < mChoices.length) goto _L2; else goto _L1
_L1:
        SimpleChoice simplechoice;
        boolean flag;
        boolean flag1;
        if (mAllowComment)
        {
            mEditText = (EditText)r.findViewById(0x7f090281);
            mEditText.setOnEditorActionListener(new android.widget.TextView.OnEditorActionListener() {

                final SimpleChoiceFragment this$0;

                public boolean onEditorAction(TextView textview, int j, KeyEvent keyevent)
                {
                    if (keyevent != null && keyevent.getAction() == 1)
                    {
                        doDone();
                    }
                    return true;
                }

            
            {
                this$0 = SimpleChoiceFragment.this;
                super();
            }
            });
            mEditText.setInputType(mInputType);
        } else
        {
            r.findViewById(0x7f0906e9).setVisibility(8);
        }
        if (mHintDs != null)
        {
            mEditText.setHint(nativemanager.getLanguageString(mHintDs));
        }
        mEditText.setSingleLine(mSingleLine);
        return r;
_L2:
        simplechoice = mChoices[i];
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == mChoices.length)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        addChoice(linearlayout, simplechoice, flag, flag1);
        i++;
          goto _L3
        linearlayout.removeAllViews();
        linearlayout.setVisibility(8);
          goto _L1
    }

    public void onResume()
    {
        super.onResume();
        mEditText.requestFocus();
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mTitleDs").toString(), mTitleDs.ordinal());
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mSubtitleDs").toString(), mSubtitleDs.ordinal());
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mHintDs").toString(), mHintDs.ordinal());
        bundle.putSerializable((new StringBuilder(String.valueOf(TAG))).append(".mChoices").toString(), mChoices);
        bundle.putInt((new StringBuilder(String.valueOf(TAG))).append(".mInputType").toString(), mInputType);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mAllowComment").toString(), mAllowComment);
        bundle.putBoolean((new StringBuilder(String.valueOf(TAG))).append(".mSingleLine").toString(), mSingleLine);
    }

    public void setAllowComment(boolean flag)
    {
        mAllowComment = flag;
    }

    public void setChoices(SimpleChoice asimplechoice[])
    {
        mChoices = asimplechoice;
    }

    public void setHint(DisplayStrings displaystrings)
    {
        mHintDs = displaystrings;
    }

    public void setInputType(int i)
    {
        mInputType = i;
    }

    public void setSingleLine(boolean flag)
    {
        mSingleLine = flag;
    }

    public void setSubtitle(DisplayStrings displaystrings)
    {
        mSubtitleDs = displaystrings;
    }

    public void setTitle(DisplayStrings displaystrings)
    {
        mTitleDs = displaystrings;
    }





}
