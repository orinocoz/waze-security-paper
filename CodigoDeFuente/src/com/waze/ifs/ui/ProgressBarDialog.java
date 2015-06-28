// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.app.Dialog;
import android.content.Context;
import android.view.Window;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.WazeApplication;
import com.waze.view.map.ProgressAnimation;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

public class ProgressBarDialog extends Dialog
{

    ProgressAnimation mAnimation;
    private Context mContext;
    ImageView mImage;
    private String mImageName;
    boolean mShowing;
    private String mText;
    TextView mTextView;

    public ProgressBarDialog(Context context)
    {
        super(context, 0x7f060057);
        mText = null;
        mImageName = null;
        mShowing = false;
        init(context, null, null);
    }

    public ProgressBarDialog(Context context, String s, String s1)
    {
        super(context, 0x7f060057);
        mText = null;
        mImageName = null;
        mShowing = false;
        init(context, s, s1);
    }

    private void _dismiss()
    {
        Runnable runnable = new Runnable() {

            final ProgressBarDialog this$0;

            public void run()
            {
                if (mShowing)
                {
                    mShowing = false;
                    if (mImageName == null)
                    {
                        mAnimation.stop();
                    }
                    if (mContext != null && (mContext instanceof ActivityBase) && ((ActivityBase)mContext).isAlive())
                    {
                        dismiss();
                    }
                }
            }

            
            {
                this$0 = ProgressBarDialog.this;
                super();
            }
        };
        if (WazeApplication.isUIThread())
        {
            runnable.run();
        } else
        if (mContext != null && (mContext instanceof ActivityBase))
        {
            ((ActivityBase)mContext).runOnUiThread(runnable);
            return;
        }
    }

    private void init(Context context, String s, String s1)
    {
        if (s != null)
        {
            mText = NativeManager.getInstance().getLanguageString(s);
        } else
        {
            mText = null;
        }
        setContentView(0x7f0300bd);
        mTextView = (TextView)findViewById(0x7f09055e);
        mAnimation = (ProgressAnimation)findViewById(0x7f09055c);
        mImage = (ImageView)findViewById(0x7f09055d);
        if (s1 != null)
        {
            mImageName = s1;
        } else
        {
            mImageName = null;
        }
        if (mText != null)
        {
            mTextView.setText(mText);
        } else
        {
            mImage.setVisibility(8);
            mAnimation.setVisibility(0);
            mAnimation.setGravity(17);
        }
        mContext = context;
        getWindow().addFlags(32);
    }

    public void cancel()
    {
        _dismiss();
    }

    public void dismiss()
    {
        _dismiss();
    }

    public void show()
    {
        super.show();
        if (mImageName != null)
        {
            mImage.setVisibility(0);
            mAnimation.setVisibility(8);
            int i = ResManager.GetDrawableId(mImageName);
            mImage.setImageResource(i);
        } else
        {
            mImage.setVisibility(8);
            mAnimation.setVisibility(0);
            mAnimation.start();
        }
        mShowing = true;
    }



}
