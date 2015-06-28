// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.title;

import android.app.Activity;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.button.AutoResizeTextButton;

public class TitleBar extends RelativeLayout
{

    public static final int TITLE_BAR_BUTTON_TYPE_DEFAULT = 0;
    public static final int TITLE_BAR_BUTTON_TYPE_TEXT = 1;
    private Activity activity;
    private AutoResizeTextButton closeButton;
    private AutoResizeTextButton closeButtonText;
    private int closeButtonType;
    private View closeDivider;
    private boolean closeEnabled;
    private android.view.View.OnClickListener closeListener;
    private int closedResultCode;
    private ActivityBase mActivity;
    private String textPlaceholder;
    private TextView textView;
    private AutoResizeTextButton upButton;

    public TitleBar(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        closeListener = null;
        closedResultCode = -1;
        closeEnabled = true;
        closeButtonType = 0;
        LayoutInflater layoutinflater = (LayoutInflater)context.getSystemService("layout_inflater");
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, com.waze.R.styleable.TitleBar);
        layoutinflater.inflate(0x7f03011f, this);
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
        closeButtonText = (AutoResizeTextButton)findViewById(0x7f09073c);
        upButton = (AutoResizeTextButton)findViewById(0x7f09073e);
        closeDivider = findViewById(0x7f09073d);
        upButton.setButtonImageResource(0x7f020429);
        closeButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleBar this$0;

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
                this$0 = TitleBar.this;
                super();
            }
        });
        closeButtonText.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleBar this$0;

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
                this$0 = TitleBar.this;
                super();
            }
        });
        upButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TitleBar this$0;

            public void onClick(View view)
            {
                if (mActivity != null)
                {
                    mActivity.onBackPressed();
                }
            }

            
            {
                this$0 = TitleBar.this;
                super();
            }
        });
        applyCloseButtonType();
    }

    private void applyCloseButtonType()
    {
        closeButtonType;
        JVM INSTR tableswitch 0 1: default 28
    //                   0 45
    //                   1 92;
           goto _L1 _L2 _L3
_L1:
        Log.e("WAZE", "Undefined TitleBar type");
_L5:
        setPadding(0, 0, 0, 0);
        return;
_L2:
        closeButton.setVisibility(0);
        closeButtonText.setVisibility(8);
        if (closeButton.getVisibility() == 0)
        {
            closeButton.setText(null);
        }
        closeButton.setButtonImageResource(0x7f02024b);
        continue; /* Loop/switch isn't completed */
_L3:
        closeButton.setVisibility(8);
        closeButtonText.setVisibility(0);
        if (closeButtonText.getVisibility() == 0)
        {
            closeButton.setButtonImageResource(0);
        }
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void init(Activity activity1, DisplayStrings displaystrings)
    {
        init(activity1, NativeManager.getInstance().getLanguageString(displaystrings));
    }

    public void init(Activity activity1, DisplayStrings displaystrings, DisplayStrings displaystrings1)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        init(activity1, nativemanager.getLanguageString(displaystrings), nativemanager.getLanguageString(displaystrings1));
    }

    public void init(Activity activity1, DisplayStrings displaystrings, boolean flag)
    {
        init(activity1, NativeManager.getInstance().getLanguageString(displaystrings), flag);
    }

    public void init(Activity activity1, String s)
    {
        init(activity1, s, ((String) (null)));
    }

    public void init(Activity activity1, String s, int i)
    {
        init(activity1, s, getResources().getString(i));
    }

    public void init(Activity activity1, String s, String s1)
    {
        NativeManager nativemanager = NativeManager.getInstance();
        activity = activity1;
        if (textView != null)
        {
            textView.setText(nativemanager.getLanguageString(s));
        }
        if (closeButton.getVisibility() == 0 && s1 != null && s1.length() > 0)
        {
            setCloseText(nativemanager.getLanguageString(s1));
        }
    }

    public void init(Activity activity1, String s, boolean flag)
    {
        setCloseVisibility(flag);
        init(activity1, s);
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

    public void setCloseEnabled(boolean flag)
    {
        closeEnabled = flag;
    }

    public void setCloseImageResource(int i)
    {
        closeButton.setVisibility(0);
        closeDivider.setVisibility(0);
        closeButtonText.setVisibility(8);
        if (i == 0)
        {
            closeButton.setButtonImageResource(0x7f0200b2);
            return;
        } else
        {
            closeButton.setButtonImageResource(i);
            return;
        }
    }

    public void setCloseResultCode(int i)
    {
        closedResultCode = i;
    }

    public void setCloseText(String s)
    {
        if (s != null)
        {
            closeButtonType = 1;
            applyCloseButtonType();
            closeButtonText.setText(s);
            return;
        } else
        {
            closeButtonType = 0;
            applyCloseButtonType();
            return;
        }
    }

    public void setCloseTextColor(int i, int j, int k)
    {
        closeButtonText.setTextColor(i, j, k);
    }

    public void setCloseVisibility(boolean flag)
    {
        if (flag)
        {
            closeButton.setVisibility(0);
            closeButtonText.setVisibility(0);
            closeDivider.setVisibility(0);
            return;
        } else
        {
            closeButton.setVisibility(4);
            closeButtonText.setVisibility(4);
            closeDivider.setVisibility(4);
            return;
        }
    }

    public void setOnClickCloseListener(android.view.View.OnClickListener onclicklistener)
    {
        closeListener = onclicklistener;
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
