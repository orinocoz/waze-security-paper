// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.social;

import android.app.Dialog;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver;
import android.view.Window;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnticipateOvershootInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.RotateAnimation;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.user.FriendUserData;
import com.waze.utils.ImageRepository;

public class KeepYourFriendsDialog extends Dialog
{

    private ActivityBase mActivity;
    private CompoundButton mCheckBox;
    private FriendUserData mFud;
    private int mImageResource;
    private NativeManager mNatMgr;
    private android.view.View.OnClickListener mOnGetStarted;
    private boolean mShowAgain;
    private String mText;
    private String mTitle;

    public KeepYourFriendsDialog(ActivityBase activitybase, String s, String s1, int i, FriendUserData frienduserdata, android.view.View.OnClickListener onclicklistener)
    {
        super(activitybase, 0x7f060058);
        mNatMgr = AppService.getNativeManager();
        mActivity = activitybase;
        mTitle = s;
        mText = s1;
        mImageResource = i;
        mOnGetStarted = onclicklistener;
        mFud = frienduserdata;
    }

    public void animate(int i, int j)
    {
        View view = findViewById(0x7f090362);
        View view1 = findViewById(0x7f090361);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(200L);
        view1.startAnimation(alphaanimation);
        AnimationSet animationset = new AnimationSet(false);
        ScaleAnimation scaleanimation = new ScaleAnimation(0.01F, 1.0F, 0.01F, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(300L);
        scaleanimation.setInterpolator(new OvershootInterpolator());
        animationset.addAnimation(scaleanimation);
        RotateAnimation rotateanimation = new RotateAnimation(-3F, 0.0F, 1, 0.5F, 1, 0.5F);
        rotateanimation.setDuration(300L);
        rotateanimation.setInterpolator(new AnticipateOvershootInterpolator());
        animationset.addAnimation(rotateanimation);
        if (i != 0 || j != 0)
        {
            int ai[] = new int[2];
            view.getLocationOnScreen(ai);
            ai[0] = ai[0] + view.getWidth() / 2;
            ai[1] = ai[1] + view.getHeight() / 2;
            TranslateAnimation translateanimation = new TranslateAnimation(0, i - ai[0], 1, 0.0F, 0, j - ai[1], 1, 0.0F);
            translateanimation.setDuration(250L);
            translateanimation.setInterpolator(new DecelerateInterpolator());
            animationset.addAnimation(translateanimation);
        }
        AlphaAnimation alphaanimation1 = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation1.setDuration(100L);
        animationset.addAnimation(alphaanimation1);
        view.startAnimation(animationset);
        View view2 = findViewById(0x7f09036b);
        AlphaAnimation alphaanimation2 = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation2.setDuration(300L);
        alphaanimation2.setStartOffset(500L);
        view2.startAnimation(alphaanimation2);
    }

    public void dismiss()
    {
        View view = findViewById(0x7f090361);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(200L);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final KeepYourFriendsDialog this$0;

            public void onAnimationEnd(Animation animation)
            {
                dismiss();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                super();
            }
        });
        view.startAnimation(alphaanimation);
    }

    public void dismissNow()
    {
        dismiss();
    }

    public void initLayout()
    {
        setContentView(0x7f030070);
        getWindow().setLayout(-1, -1);
        ImageView imageview = (ImageView)findViewById(0x7f090368);
        ((TextView)findViewById(0x7f090366)).setText(mTitle);
        ((TextView)findViewById(0x7f090367)).setText(mText);
        imageview.setImageResource(mImageResource);
        TextView textview = (TextView)findViewById(0x7f090369);
        android.view.View.OnClickListener onclicklistener;
        CompoundButton compoundbutton;
        boolean flag;
        if (mFud == null)
        {
            textview.setText(mNatMgr.getLanguageString(DisplayStrings.DS_GET_STARTED_BUTTON));
        } else
        {
            textview.setText(mNatMgr.getLanguageString(DisplayStrings.DS_SEND_ETA));
        }
        textview.setOnClickListener(new android.view.View.OnClickListener() {

            final KeepYourFriendsDialog this$0;

            public void onClick(View view)
            {
                if (mFud == null)
                {
                    Analytics.log("SHARE_DRIVE_ETA_TIP_CLICK", "ACTION", "GET_STARTED");
                } else
                {
                    Analytics.log("SHARE_LOCATION_BACK_CLICKED", "ACTION", "SEND_ETA");
                }
                mOnGetStarted.onClick(view);
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                super();
            }
        });
        onclicklistener = new android.view.View.OnClickListener() {

            final KeepYourFriendsDialog this$0;

            public void onClick(View view)
            {
                if (mFud == null)
                {
                    Analytics.log("SHARE_DRIVE_ETA_TIP_CLICK", "ACTION", "X");
                } else
                {
                    Analytics.log("SHARE_LOCATION_BACK_CLICKED", "ACTION", "X");
                }
                dismiss();
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                super();
            }
        };
        findViewById(0x7f09036b).setOnClickListener(onclicklistener);
        findViewById(0x7f090361).setOnClickListener(onclicklistener);
        findViewById(0x7f090362).setOnClickListener(new android.view.View.OnClickListener() {

            final KeepYourFriendsDialog this$0;

            public void onClick(View view)
            {
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                super();
            }
        });
        mCheckBox = (CheckBox)findViewById(0x7f09036a);
        mCheckBox.setText(mNatMgr.getLanguageString(DisplayStrings.DS_DONT_SHOW_AGAIN));
        compoundbutton = mCheckBox;
        if (mShowAgain)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        compoundbutton.setChecked(flag);
        mCheckBox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final KeepYourFriendsDialog this$0;

            public void onCheckedChanged(CompoundButton compoundbutton1, boolean flag1)
            {
                KeepYourFriendsDialog keepyourfriendsdialog = KeepYourFriendsDialog.this;
                boolean flag2;
                if (flag1)
                {
                    flag2 = false;
                } else
                {
                    flag2 = true;
                }
                keepyourfriendsdialog.mShowAgain = flag2;
                if (!mShowAgain)
                {
                    if (mFud == null)
                    {
                        Analytics.log("SHARE_DRIVE_ETA_TIP_CLICK", "ACTION", "DONT_SHOW_AGAIN");
                    } else
                    {
                        Analytics.log("SHARE_LOCATION_BACK_CLICKED", "ACTION", "DONT_SHOW_AGAIN");
                    }
                    dismiss();
                }
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                super();
            }
        });
        if (mFud != null)
        {
            findViewById(0x7f090364).setVisibility(0);
            ImageView imageview1 = (ImageView)findViewById(0x7f090365);
            ImageRepository.instance.getImage(mFud.getImage(), true, imageview1, null, mActivity);
            mCheckBox.setVisibility(8);
        }
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        initLayout();
    }

    public void setShowAgain(boolean flag)
    {
        mShowAgain = flag;
        if (mCheckBox != null)
        {
            CompoundButton compoundbutton = mCheckBox;
            boolean flag1;
            if (flag)
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            compoundbutton.setChecked(flag1);
        }
    }

    public boolean shouldShowAgain()
    {
        return mShowAgain;
    }

    public void show(final int x, final int y)
    {
        super.show();
        final View dialog;
        if (mFud == null)
        {
            Analytics.log("SHARE_DRIVE_ETA_TIP_SHOWN");
        } else
        {
            Analytics.log("SHARE_LOCATION_BACK_SHOWN");
        }
        dialog = findViewById(0x7f090362);
        dialog.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final KeepYourFriendsDialog this$0;
            private final View val$dialog;
            private final int val$x;
            private final int val$y;

            public void onGlobalLayout()
            {
                dialog.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                animate(x, y);
            }

            
            {
                this$0 = KeepYourFriendsDialog.this;
                dialog = view;
                x = i;
                y = j;
                super();
            }
        });
    }





}
