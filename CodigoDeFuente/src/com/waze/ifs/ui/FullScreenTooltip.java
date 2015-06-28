// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.ComposePathEffect;
import android.graphics.CornerPathEffect;
import android.graphics.DashPathEffect;
import android.graphics.Paint;
import android.graphics.Path;
import android.graphics.PorterDuffXfermode;
import android.graphics.drawable.BitmapDrawable;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.ScaleAnimation;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.PopupWindow;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.strings.DisplayStrings;

public class FullScreenTooltip
{
    public static interface IToolTipClicked
    {

        public abstract void onBackgroundClicked();

        public abstract void onCloseClicked();

        public abstract void onHighLightClicked();
    }


    private float density;
    private ImageView mArrow;
    private Paint mArrowHeadPaint;
    private Paint mArrowLinePaint;
    private CheckBox mCheckBox;
    private ImageView mCircle;
    private Paint mCirclePaint;
    private Paint mClearPaint;
    private ImageButton mClose;
    protected Context mContext;
    private boolean mDismissCalled;
    private int mHeight;
    private ImageView mHole;
    private IToolTipClicked mIToolTipClicked;
    private int mLeft;
    private boolean mOnLeft;
    private boolean mOnTop;
    private boolean mShowAgain;
    private TextView mTextView;
    private TextView mTitleView;
    private int mTop;
    protected View mView;
    private int mWidth;
    protected PopupWindow mWindow;

    public FullScreenTooltip(Context context, String s, String s1)
    {
        mLeft = 0;
        mTop = 0;
        mWidth = 0;
        mHeight = 0;
        mDismissCalled = false;
        mShowAgain = false;
        mContext = context;
        density = mContext.getResources().getDisplayMetrics().density;
        mView = ((LayoutInflater)context.getSystemService("layout_inflater")).inflate(0x7f030063, null);
        mTitleView = (TextView)mView.findViewById(0x7f090307);
        mTextView = (TextView)mView.findViewById(0x7f090308);
        mCircle = (ImageView)mView.findViewById(0x7f090309);
        mHole = (ImageView)mView.findViewById(0x7f090305);
        mArrow = (ImageView)mView.findViewById(0x7f090306);
        mClose = (ImageButton)mView.findViewById(0x7f09030b);
        mCheckBox = (CheckBox)mView.findViewById(0x7f09030a);
        mTitleView.setText(s);
        mTextView.setText(s1);
        PorterDuffXfermode porterduffxfermode = new PorterDuffXfermode(android.graphics.PorterDuff.Mode.MULTIPLY);
        mClearPaint = new Paint();
        mClearPaint.setColor(0xffffff);
        mClearPaint.setAlpha(0);
        mClearPaint.setXfermode(porterduffxfermode);
        mClearPaint.setAntiAlias(true);
        mCirclePaint = new Paint();
        mCirclePaint.setColor(-1);
        mCirclePaint.setAntiAlias(true);
        mCirclePaint.setShadowLayer(2.0F * density, 0.0F, 0.0F, 0xff000000);
        mCirclePaint.setStyle(android.graphics.Paint.Style.STROKE);
        mCirclePaint.setStrokeWidth(1.5F * density);
        mArrowLinePaint = new Paint();
        mArrowLinePaint.setColor(-1);
        mArrowLinePaint.setStrokeWidth(density);
        mArrowLinePaint.setStyle(android.graphics.Paint.Style.STROKE);
        mArrowLinePaint.setStrokeJoin(android.graphics.Paint.Join.ROUND);
        mArrowLinePaint.setStrokeCap(android.graphics.Paint.Cap.ROUND);
        Paint paint = mArrowLinePaint;
        float af[] = new float[2];
        af[0] = 4F * density;
        af[1] = 4F * density;
        paint.setPathEffect(new ComposePathEffect(new DashPathEffect(af, 0.0F), new CornerPathEffect(5F * density)));
        mArrowHeadPaint = new Paint();
        mArrowHeadPaint.setColor(-1);
        mArrowHeadPaint.setAntiAlias(true);
        mArrowHeadPaint.setPathEffect(new CornerPathEffect(2.0F * density));
        mWindow = new PopupWindow(context) {

            final FullScreenTooltip this$0;

            public void dismiss()
            {
                if (mDismissCalled)
                {
                    super.dismiss();
                } else
                if (mIToolTipClicked != null)
                {
                    mIToolTipClicked.onCloseClicked();
                    return;
                }
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super(context);
            }
        };
        mWindow.setContentView(mView);
        mWindow.setWidth(-1);
        mWindow.setHeight(-1);
        mWindow.setTouchable(true);
        mWindow.setFocusable(true);
        mWindow.setOutsideTouchable(true);
        mWindow.setBackgroundDrawable(new BitmapDrawable());
        mWindow.setContentView(mView);
        mClose.setOnClickListener(new android.view.View.OnClickListener() {

            final FullScreenTooltip this$0;

            public void onClick(View view)
            {
                if (mIToolTipClicked != null)
                {
                    mIToolTipClicked.onCloseClicked();
                }
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super();
            }
        });
        mCheckBox.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_DONT_SHOW_AGAIN));
        mCheckBox.setOnCheckedChangeListener(new android.widget.CompoundButton.OnCheckedChangeListener() {

            final FullScreenTooltip this$0;

            public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
            {
                FullScreenTooltip fullscreentooltip = FullScreenTooltip.this;
                boolean flag1;
                if (flag)
                {
                    flag1 = false;
                } else
                {
                    flag1 = true;
                }
                fullscreentooltip.mShowAgain = flag1;
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super();
            }
        });
        mView.setOnClickListener(new android.view.View.OnClickListener() {

            final FullScreenTooltip this$0;

            public void onClick(View view)
            {
                if (mIToolTipClicked != null)
                {
                    mIToolTipClicked.onBackgroundClicked();
                }
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super();
            }
        });
        mCircle.setOnClickListener(new android.view.View.OnClickListener() {

            final FullScreenTooltip this$0;

            public void onClick(View view)
            {
                if (mIToolTipClicked != null)
                {
                    mIToolTipClicked.onHighLightClicked();
                }
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super();
            }
        });
    }

    public void dismissTooltip()
    {
        mDismissCalled = true;
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(100L);
        alphaanimation.setStartOffset(50L);
        alphaanimation.setFillBefore(true);
        alphaanimation.setFillAfter(true);
        mView.startAnimation(alphaanimation);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final FullScreenTooltip this$0;

            public void onAnimationEnd(Animation animation)
            {
                mWindow.dismiss();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = FullScreenTooltip.this;
                super();
            }
        });
    }

    public void initTooltip(View view)
    {
        int ai[] = new int[2];
        view.getLocationInWindow(ai);
        int i = ai[0];
        int j = ai[1];
        int k = view.getWidth();
        int l = view.getHeight();
        int i1;
        View view1;
        android.widget.RelativeLayout.LayoutParams layoutparams;
        View view2;
        android.widget.RelativeLayout.LayoutParams layoutparams1;
        android.widget.RelativeLayout.LayoutParams layoutparams2;
        android.widget.RelativeLayout.LayoutParams layoutparams3;
        float f;
        Bitmap bitmap;
        Bitmap bitmap1;
        boolean flag;
        boolean flag1;
        android.widget.RelativeLayout.LayoutParams layoutparams4;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        Bitmap bitmap2;
        Canvas canvas;
        Path path;
        Path path1;
        byte byte0;
        int l3;
        int i4;
        int j4;
        int k4;
        byte byte1;
        int l4;
        int i5;
        if (k < l)
        {
            mHeight = l + (int)(10F * density);
            mWidth = mHeight;
            mTop = j - (int)(5F * density);
            mLeft = i - (mWidth - k) / 2;
        } else
        {
            mWidth = k + (int)(10F * density);
            mHeight = mWidth;
            mLeft = i - (int)(5F * density);
            mTop = j - (mHeight - l) / 2;
        }
        i1 = mContext.getResources().getDisplayMetrics().widthPixels;
        int _tmp = mContext.getResources().getDisplayMetrics().heightPixels;
        view1 = mView.findViewById(0x7f090303);
        layoutparams = (android.widget.RelativeLayout.LayoutParams)view1.getLayoutParams();
        layoutparams.height = mTop;
        view1.setLayoutParams(layoutparams);
        view2 = mView.findViewById(0x7f090304);
        layoutparams1 = (android.widget.RelativeLayout.LayoutParams)view2.getLayoutParams();
        layoutparams1.width = mLeft;
        view2.setLayoutParams(layoutparams1);
        layoutparams2 = (android.widget.RelativeLayout.LayoutParams)mCircle.getLayoutParams();
        layoutparams2.width = mWidth;
        layoutparams2.height = mHeight;
        mCircle.setLayoutParams(layoutparams2);
        layoutparams3 = (android.widget.RelativeLayout.LayoutParams)mHole.getLayoutParams();
        layoutparams3.width = mWidth;
        layoutparams3.height = mHeight;
        mHole.setLayoutParams(layoutparams3);
        f = (float)mHeight / 2.0F;
        bitmap = Bitmap.createBitmap(mWidth, mHeight, android.graphics.Bitmap.Config.ARGB_8888);
        (new Canvas(bitmap)).drawCircle(f, f, f - 2.0F, mCirclePaint);
        mCircle.setImageBitmap(bitmap);
        bitmap1 = Bitmap.createBitmap(mWidth, mHeight, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap1.eraseColor(mContext.getResources().getColor(0x7f080060));
        (new Canvas(bitmap1)).drawCircle(f, f, f - 2.0F, mClearPaint);
        mHole.setImageBitmap(bitmap1);
        if ((float)mTop > 100F * density)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mOnTop = flag;
        if (mLeft + k / 2 > i1 / 2)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        mOnLeft = flag1;
        layoutparams4 = (android.widget.RelativeLayout.LayoutParams)mArrow.getLayoutParams();
        if (mOnTop)
        {
            j1 = 0x7f090305;
        } else
        {
            j1 = 0;
        }
        layoutparams4.addRule(2, j1);
        if (mOnTop)
        {
            k1 = 0;
        } else
        {
            k1 = 0x7f090305;
        }
        layoutparams4.addRule(3, k1);
        if (mOnLeft)
        {
            l1 = 0;
        } else
        {
            l1 = 0x7f090305;
        }
        layoutparams4.addRule(5, l1);
        if (mOnLeft)
        {
            i2 = 0x7f090305;
        } else
        {
            i2 = 0;
        }
        layoutparams4.addRule(7, i2);
        if (mOnLeft)
        {
            j2 = 0;
        } else
        {
            j2 = (mWidth - layoutparams4.width) / 2;
        }
        layoutparams4.leftMargin = j2;
        if (mOnLeft)
        {
            k2 = (mWidth - layoutparams4.width) / 2;
        } else
        {
            k2 = 0;
        }
        layoutparams4.rightMargin = k2;
        mArrow.setLayoutParams(layoutparams4);
        bitmap2 = Bitmap.createBitmap(layoutparams4.width, layoutparams4.height, android.graphics.Bitmap.Config.ARGB_8888);
        canvas = new Canvas(bitmap2);
        path = new Path();
        if (mOnTop)
        {
            int l5 = (int)(12F * density);
            TextView textview;
            android.widget.RelativeLayout.LayoutParams layoutparams5;
            TextView textview1;
            android.widget.RelativeLayout.LayoutParams layoutparams6;
            int j5;
            int k5;
            int i6;
            if (mOnLeft)
            {
                path.moveTo(4F * density, l5);
            } else
            {
                path.moveTo((float)layoutparams4.width - 4F * density, l5);
            }
            i6 = layoutparams4.width / 2;
            path.lineTo(i6, l5);
            path.lineTo(i6, (float)layoutparams4.height - 5F * density);
        } else
        {
            int l2 = layoutparams4.height - (int)(12F * density);
            int i3;
            if (mOnLeft)
            {
                path.moveTo(4F * density, l2);
            } else
            {
                path.moveTo((float)layoutparams4.width - 4F * density, l2);
            }
            i3 = layoutparams4.width / 2;
            path.lineTo(i3, l2);
            path.lineTo(i3, 5F * density);
        }
        canvas.drawPath(path, mArrowLinePaint);
        path1 = new Path();
        if (mOnTop)
        {
            j5 = (int)((float)layoutparams4.height - 5F * density);
            k5 = layoutparams4.width / 2;
            path1.moveTo(k5, j5);
            path1.lineTo((float)k5 - 4F * density, (float)j5 - 8F * density);
            path1.lineTo((float)k5 + 4F * density, (float)j5 - 8F * density);
            path1.lineTo(k5, j5);
        } else
        {
            int j3 = (int)(5F * density);
            int k3 = layoutparams4.width / 2;
            path1.moveTo(k3, j3);
            path1.lineTo((float)k3 - 4F * density, (float)j3 + 8F * density);
            path1.lineTo((float)k3 + 4F * density, (float)j3 + 8F * density);
            path1.lineTo(k3, j3);
        }
        canvas.drawPath(path1, mArrowHeadPaint);
        mArrow.setImageBitmap(bitmap2);
        textview = mTitleView;
        if (mOnLeft)
        {
            byte0 = 5;
        } else
        {
            byte0 = 3;
        }
        textview.setGravity(byte0);
        layoutparams5 = (android.widget.RelativeLayout.LayoutParams)mTitleView.getLayoutParams();
        if (mOnTop)
        {
            l3 = 0x7f090306;
        } else
        {
            l3 = 0;
        }
        layoutparams5.addRule(6, l3);
        if (mOnTop)
        {
            i4 = 0;
        } else
        {
            i4 = 0x7f090306;
        }
        layoutparams5.addRule(8, i4);
        if (mOnLeft)
        {
            j4 = 0;
        } else
        {
            j4 = 0x7f090306;
        }
        layoutparams5.addRule(1, j4);
        if (mOnLeft)
        {
            k4 = 0x7f090306;
        } else
        {
            k4 = 0;
        }
        layoutparams5.addRule(0, k4);
        mTitleView.setLayoutParams(layoutparams5);
        textview1 = mTextView;
        if (mOnLeft)
        {
            byte1 = 5;
        } else
        {
            byte1 = 3;
        }
        textview1.setGravity(byte1);
        layoutparams6 = (android.widget.RelativeLayout.LayoutParams)mTextView.getLayoutParams();
        if (mOnLeft)
        {
            l4 = 0;
        } else
        {
            l4 = 0x7f090307;
        }
        layoutparams6.addRule(5, l4);
        if (mOnLeft)
        {
            i5 = 0x7f090307;
        } else
        {
            i5 = 0;
        }
        layoutparams6.addRule(7, i5);
        mTextView.setLayoutParams(layoutparams6);
    }

    public boolean isShowing()
    {
        return mWindow.isShowing();
    }

    public void setOnClickListeners(IToolTipClicked itooltipclicked)
    {
        mIToolTipClicked = itooltipclicked;
    }

    public void setShowAgainChecked(boolean flag)
    {
        mShowAgain = flag;
        CheckBox checkbox = mCheckBox;
        boolean flag1;
        if (flag)
        {
            flag1 = false;
        } else
        {
            flag1 = true;
        }
        checkbox.setChecked(flag1);
    }

    public boolean shouldShowAgain()
    {
        return mShowAgain;
    }

    public void show(View view)
    {
        initTooltip(view);
        mDismissCalled = false;
        mWindow.showAtLocation(view, 0, 0, 0);
        AnimationSet animationset = new AnimationSet(true);
        animationset.addAnimation(new ScaleAnimation(2.0F, 1.0F, 2.0F, 1.0F, 1, 0.5F, 1, 0.5F));
        animationset.addAnimation(new AlphaAnimation(0.0F, 1.0F));
        animationset.setInterpolator(new DecelerateInterpolator());
        animationset.setDuration(200L);
        mCircle.startAnimation(animationset);
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setDuration(300L);
        alphaanimation.setInterpolator(new AccelerateInterpolator());
        alphaanimation.setFillBefore(true);
        alphaanimation.setFillAfter(true);
        mView.startAnimation(alphaanimation);
    }



}
