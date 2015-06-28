// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.button;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Color;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import com.waze.view.text.AutoResizeTextView;

public class AutoResizeTextButton extends RelativeLayout
{

    private AutoResizeTextView textView;

    public AutoResizeTextButton(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.AutoResizeTextButton);
        layoutinflater.inflate(0x7f030021, this);
        float f = typedarray.getDimension(0, 12F);
        String s = typedarray.getString(2);
        int i = typedarray.getColor(3, -1);
        float f1 = typedarray.getDimension(4, 14F);
        float f2 = typedarray.getDimension(5, 0.0F);
        int j = typedarray.getResourceId(1, 0x7f0200b2);
        textView = (AutoResizeTextView)findViewById(0x7f0901b8);
        if (s != null && s.equals("bold"))
        {
            textView.setTypeface(null, 1);
        }
        textView.setTextColor(i);
        textView.setTextSize(0, f1);
        float f3 = context.getResources().getDisplayMetrics().density;
        textView.setPadding((int)(f2 * f3), 0, 0, 0);
        textView.setMinTextSize(f);
        setButtonImageResource(j);
        findViewById(0x7f0901b7).setOnClickListener(new android.view.View.OnClickListener() {

            final AutoResizeTextButton this$0;

            public void onClick(View view)
            {
                performClick();
            }

            
            {
                this$0 = AutoResizeTextButton.this;
                super();
            }
        });
    }

    public void setButtonImageResource(int i)
    {
        if (i == 0)
        {
            ((ImageButton)findViewById(0x7f0901b7)).setImageDrawable(null);
            return;
        } else
        {
            ((ImageButton)findViewById(0x7f0901b7)).setImageResource(i);
            return;
        }
    }

    public void setText(String s)
    {
        textView.setText(s);
        setButtonImageResource(0);
    }

    public void setTextColor(int i, int j, int k)
    {
        textView.setTextColor(Color.rgb(i, j, k));
    }
}
