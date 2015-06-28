// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.CheckBox;
import android.widget.RelativeLayout;
import android.widget.TextView;

public class SettingsCheckboxView extends RelativeLayout
{

    private CheckBox checkBox;
    private LayoutInflater inflater;
    private TextView textView;

    public SettingsCheckboxView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        inflater = LayoutInflater.from(context);
        inflater.inflate(0x7f0300e5, this);
        textView = (TextView)findViewById(0x7f090623);
        checkBox = (CheckBox)findViewById(0x7f090622);
        findViewById(0x7f090621).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsCheckboxView this$0;

            public void onClick(View view)
            {
                ((CheckBox)findViewById(0x7f090622)).performClick();
            }

            
            {
                this$0 = SettingsCheckboxView.this;
                super();
            }
        });
    }

    public boolean isChecked()
    {
        return checkBox.isChecked();
    }

    public void setOnCheckedChangeListener(android.widget.CompoundButton.OnCheckedChangeListener oncheckedchangelistener)
    {
        checkBox.setOnCheckedChangeListener(oncheckedchangelistener);
    }

    public void setText(String s)
    {
        textView.setText(s);
    }

    public void setValue(boolean flag)
    {
        checkBox.setChecked(flag);
    }
}
