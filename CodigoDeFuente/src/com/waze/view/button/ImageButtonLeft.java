// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class ImageButtonLeft extends RelativeLayout
{

    private RelativeLayout mBackground;
    private ImageView mImageView;
    private RelativeLayout mRoot;
    private TextView mTextView;

    public ImageButtonLeft(Context context)
    {
        super(context);
        init(context, null, 0);
    }

    public ImageButtonLeft(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        init(context, attributeset, 0);
    }

    public ImageButtonLeft(Context context, AttributeSet attributeset, int i)
    {
        super(context, attributeset, i);
        init(context, attributeset, i);
    }

    private void init(Context context, AttributeSet attributeset, int i)
    {
        LayoutInflater.from(context).inflate(0x7f030066, this);
        mTextView = (TextView)findViewById(0x7f09031d);
        mImageView = (ImageView)findViewById(0x7f09031c);
        mRoot = (RelativeLayout)findViewById(0x7f09031a);
        mBackground = (RelativeLayout)findViewById(0x7f09031b);
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.ImageButtonLeft, i, 0);
        int j = typedarray.getResourceId(3, -1);
        int k = typedarray.getResourceId(4, -1);
        String s = typedarray.getString(0);
        int l = typedarray.getColor(1, 0xff000000);
        float f = typedarray.getDimensionPixelSize(2, 14);
        int i1 = typedarray.getDimensionPixelSize(5, 9);
        Log.d("WAZE DEBUG", (new StringBuilder("Font size: ")).append(f).append(". Image Padding: ").append(i1).append(". Text: ").append(s).toString());
        mImageView.setImageResource(j);
        mImageView.setPadding(i1, i1, i1, i1);
        mTextView.setText(s);
        mTextView.setTextColor(l);
        mTextView.setTextSize(0, f);
        mBackground.setBackgroundResource(k);
        typedarray.recycle();
    }

    public void setBackgroundResource(int i)
    {
        mBackground.setBackgroundResource(i);
    }

    public void setImageResource(int i)
    {
        mImageView.setImageResource(i);
    }

    public void setText(CharSequence charsequence)
    {
        mTextView.setText(charsequence);
    }
}
