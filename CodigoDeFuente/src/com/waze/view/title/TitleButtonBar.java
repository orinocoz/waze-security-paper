// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.title;

import android.app.Activity;
import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.button.AutoResizeTextButton;

public class TitleButtonBar extends RelativeLayout
{

    public static final int TITLE_BAR_BUTTON_TYPE_DEFAULT = 0;
    public static final int TITLE_BAR_BUTTON_TYPE_TEXT = 1;
    private Activity activity;
    private AutoResizeTextButton closeButton;
    private AutoResizeTextButton closeButton2;
    private int closeButtonType;
    private View closeDivider;
    private boolean closeEnabled;
    private android.view.View.OnClickListener closeListener;
    private android.view.View.OnClickListener closeListener2;
    private int closedResultCode;
    private ActivityBase mActivity;
    private String textPlaceholder;
    private TextView textView;
    private AutoResizeTextButton upButton;

    public TitleButtonBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        closeListener = null;
        closeListener2 = null;
        closedResultCode = 3;
        closeEnabled = true;
        closeButtonType = 0;
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.TitleBar);
        layoutinflater.inflate(0x7f030121, this);
        if (context instanceof ActivityBase)
        {
            mActivity = (ActivityBase)context;
        }
        textView = (TextView)findViewById(0x7f090740);
        textPlaceholder = typedarray.getString(0);
        closeButtonType = typedarray.getInt(1, 0);
        if (textPlaceholder != null)
        {
            textView.setText(textPlaceholder);
        }
        closeButton = (AutoResizeTextButton)findViewById(0x7f09073b);
        closeButton2 = (AutoResizeTextButton)findViewById(0x7f090741);
        upButton = (AutoResizeTextButton)findViewById(0x7f09073e);
        closeDivider = findViewById(0x7f09073d);
        upButton.setButtonImageResource(0x7f020429);
        closeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleButtonBar this$0;

            public void onClick(View view)
            {
                if (closeListener != null)
                {
                    closeListener.onClick(view);
                    return;
                } else
                {
                    onCloseClicked();
                    return;
                }
            }

            
            {
                this$0 = TitleButtonBar.this;
                super();
            }
        });
        closeButton2.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleButtonBar this$0;

            public void onClick(View view)
            {
                if (closeListener2 != null)
                {
                    closeListener2.onClick(view);
                    return;
                } else
                {
                    onCloseClicked();
                    return;
                }
            }

            
            {
                this$0 = TitleButtonBar.this;
                super();
            }
        });
        upButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleButtonBar this$0;

            public void onClick(View view)
            {
                if (mActivity != null)
                {
                    mActivity.onBackPressed();
                }
            }

            
            {
                this$0 = TitleButtonBar.this;
                super();
            }
        });
    }

    public void init(Activity activity1, String s, int i, int j)
    {
        NativeManager.getInstance();
        activity = activity1;
        setCloseImageResource(i, j);
        setTitle(s);
    }

    public void onCloseClicked()
    {
        while (!closeEnabled || activity == null) 
        {
            return;
        }
        activity.setResult(closedResultCode);
        activity.finish();
    }

    public void setButtonOneListener(android.view.View.OnClickListener onclicklistener)
    {
        closeListener = onclicklistener;
    }

    public void setButtonTwoListener(android.view.View.OnClickListener onclicklistener)
    {
        closeListener2 = onclicklistener;
    }

    public void setCloseEnabled(boolean flag)
    {
        closeEnabled = flag;
    }

    public void setCloseImageResource(int i, int j)
    {
        closeButton2.setVisibility(0);
        if (i == 0)
        {
            closeButton.setVisibility(8);
        } else
        {
            closeButton.setVisibility(0);
            closeButton.setButtonImageResource(i);
        }
        if (j == 0)
        {
            closeButton2.setButtonImageResource(0x7f0200b2);
            return;
        } else
        {
            closeButton2.setButtonImageResource(j);
            return;
        }
    }

    public void setCloseResultCode(int i)
    {
        closedResultCode = i;
    }

    public void setCloseVisibility(boolean flag)
    {
        if (flag)
        {
            closeButton.setVisibility(0);
            closeButton2.setVisibility(0);
            closeDivider.setVisibility(0);
            return;
        } else
        {
            closeButton.setVisibility(4);
            closeButton2.setVisibility(4);
            closeDivider.setVisibility(4);
            return;
        }
    }

    public void setNumberVisible(boolean flag, String s)
    {
        if (flag)
        {
            findViewById(0x7f090715).setVisibility(0);
            ((TextView)findViewById(0x7f090716)).setText(s);
            return;
        } else
        {
            findViewById(0x7f090715).setVisibility(8);
            return;
        }
    }

    public void setTitle(String s)
    {
        if (textView != null)
        {
            textView.setText(s);
        }
    }

    public void setUpButtonDisabled()
    {
        upButton.setVisibility(8);
        setPadding(0, 0, 0, 0);
    }



}
