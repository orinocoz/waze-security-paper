// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.content.Context;
import android.content.res.Resources;
import android.text.Editable;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.widget.EditText;
import android.widget.LinearLayout;
import com.waze.ResManager;
import com.waze.view.text.WazeTextView;

public class PhoneLoginFillInField extends LinearLayout
{

    private Context mContext;
    private LinearLayout mFieldLinearLayout;
    private EditText mInputText;
    private WazeTextView mLabaleText;
    private android.view.View.OnClickListener mListener;

    public PhoneLoginFillInField(Context context)
    {
        super(context);
        Init(context);
    }

    public PhoneLoginFillInField(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        Init(context);
    }

    private void Init(Context context)
    {
        View.inflate(context, 0x7f0300a4, this);
        mContext = context;
        initMembers();
        initLayout();
        setFont();
    }

    private static float convertDpToPixels(float f, Context context)
    {
        return f * context.getResources().getDisplayMetrics().density;
    }

    private void initLayout()
    {
        mInputText.setImeOptions(6);
    }

    private void initMembers()
    {
        mLabaleText = (WazeTextView)findViewById(0x7f0904fa);
        mInputText = (EditText)findViewById(0x7f0904fb);
        mFieldLinearLayout = (LinearLayout)findViewById(0x7f0904f9);
    }

    private void setFont()
    {
        if (!isInEditMode())
        {
            mInputText.setTypeface(ResManager.getRobotoLight(mContext));
        }
    }

    public String getText()
    {
        return mInputText.getText().toString();
    }

    public void setEditTextDpMarginBottom(float f)
    {
        int i = (int)convertDpToPixels(f, mContext);
        int j = mFieldLinearLayout.getPaddingRight();
        int k = mFieldLinearLayout.getPaddingLeft();
        int l = mFieldLinearLayout.getPaddingTop();
        mFieldLinearLayout.setPadding(k, l, j, i);
    }

    public void setEditTextDpMarginTop(float f)
    {
        int i = (int)convertDpToPixels(f, mContext);
        int j = mFieldLinearLayout.getPaddingRight();
        int k = mFieldLinearLayout.getPaddingLeft();
        int l = mFieldLinearLayout.getPaddingBottom();
        mFieldLinearLayout.setPadding(k, i, j, l);
    }

    public void setImeOptions(int i)
    {
        mInputText.setImeOptions(i);
    }

    public void setInputHintText(String s)
    {
        mInputText.setHint(s);
    }

    public void setInputTextOnTouchListener(android.view.View.OnTouchListener ontouchlistener)
    {
        mInputText.setOnTouchListener(ontouchlistener);
    }

    public void setLabaleText(String s)
    {
        mLabaleText.setText(s);
    }

    public void setPasswordTextType()
    {
        mInputText.setInputType(129);
        mInputText.setTypeface(ResManager.getRobotoLight(mContext));
    }

    public void setTextGravity(int i)
    {
        mInputText.setGravity(i);
    }
}
