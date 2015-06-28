// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.app.Activity;
import android.app.Fragment;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.WindowManager;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnticipateInterpolator;
import android.view.animation.OvershootInterpolator;
import android.view.animation.ScaleAnimation;
import android.view.animation.TranslateAnimation;
import android.widget.ImageButton;
import com.waze.MsgBox;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.CameraPreview;
import com.waze.strings.DisplayStrings;
import com.waze.view.text.WazeTextView;
import java.io.File;
import java.io.FilenameFilter;

public class TakePhotoFragment extends Fragment
    implements com.waze.ifs.ui.CameraPreview.CameraCallbacks
{
    public static interface ITakePhoto
    {

        public abstract void photoTaken(Uri uri, String s);
    }


    private static final int ANIMATION_DURATION = 550;
    private static final float CAPTURE_HEIGHT = 1200F;
    private static final float CAPTURE_WIDTH = 1600F;
    private static final String IMAGE_FILE_NAME = "newPlaceImage.jpg";
    private Bundle mCameraButtonLocation;
    private View mClearView;
    private boolean mDoAnimation;
    private ImageButton mDoneButton;
    private String mFileName;
    private ImageButton mFlashButton;
    private com.waze.ifs.ui.CameraPreview.FlashMode mFlashMode;
    private boolean mIsPortrait;
    private NativeManager mNm;
    private ImageButton mOkButton;
    private CameraPreview mPreview;
    private ImageButton mRetakeButton;
    private String mSavedFile;
    private WazeTextView mText;
    private int mWindowHeight;
    private int mWindowWidth;
    private View r;

    public TakePhotoFragment()
    {
        mFlashMode = com.waze.ifs.ui.CameraPreview.FlashMode.Off;
        mIsPortrait = true;
        mDoAnimation = false;
        mFileName = "newPlaceImage.jpg";
    }

    public TakePhotoFragment(String s)
    {
        mFlashMode = com.waze.ifs.ui.CameraPreview.FlashMode.Off;
        mIsPortrait = true;
        mDoAnimation = false;
        mFileName = s;
    }

    private void animateBlackFlashEnd()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setInterpolator(new AccelerateInterpolator(2.0F));
        alphaanimation.setDuration(200L);
        final View flash = r.findViewById(0x7f0901e5);
        flash.setBackgroundColor(0xff000000);
        flash.setVisibility(0);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TakePhotoFragment this$0;
            private final View val$flash;

            public void onAnimationEnd(Animation animation)
            {
                flash.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = TakePhotoFragment.this;
                flash = view;
                super();
            }
        });
        flash.startAnimation(alphaanimation);
    }

    private void animateBlackFlashStart()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setInterpolator(new AccelerateInterpolator(2.0F));
        alphaanimation.setDuration(200L);
        final View flash = r.findViewById(0x7f0901e5);
        flash.setBackgroundColor(0xff000000);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TakePhotoFragment this$0;
            private final View val$flash;

            public void onAnimationEnd(Animation animation)
            {
                mPreview.reset();
                setUpFragment();
                animateBlackFlashEnd();
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                flash.setVisibility(0);
            }

            
            {
                this$0 = TakePhotoFragment.this;
                flash = view;
                super();
            }
        });
        flash.startAnimation(alphaanimation);
    }

    private void animateDoneButton()
    {
        View view = r.findViewById(0x7f0901e1);
        ScaleAnimation scaleanimation = new ScaleAnimation(1.0F, 0.8F, 1.0F, 0.8F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(200L);
        scaleanimation.setRepeatMode(2);
        scaleanimation.setRepeatCount(1);
        scaleanimation.setInterpolator(new AnticipateInterpolator());
        view.startAnimation(scaleanimation);
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TakePhotoFragment this$0;

            public void onAnimationEnd(Animation animation)
            {
                mOkButton.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
                mDoneButton.setVisibility(0);
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        });
        alphaanimation.setDuration(100L);
        mOkButton.startAnimation(alphaanimation);
    }

    private void animateFlash()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(0.0F, 1.0F);
        alphaanimation.setRepeatMode(2);
        alphaanimation.setRepeatCount(1);
        alphaanimation.setInterpolator(new AccelerateInterpolator(2.0F));
        alphaanimation.setDuration(200L);
        final View flash = r.findViewById(0x7f0901e5);
        flash.setBackgroundColor(-1);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            final TakePhotoFragment this$0;
            private final View val$flash;

            public void onAnimationEnd(Animation animation)
            {
                flash.setVisibility(8);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                this$0 = TakePhotoFragment.this;
                flash = view;
                super();
            }
        });
        flash.setVisibility(0);
        flash.startAnimation(alphaanimation);
    }

    private void animateIn()
    {
        int i = mCameraButtonLocation.getInt("left");
        int j = mCameraButtonLocation.getInt("top");
        int k = mCameraButtonLocation.getInt("width");
        int l = mCameraButtonLocation.getInt("height");
        int ai[] = new int[2];
        mOkButton.getLocationInWindow(ai);
        AnimationSet animationset = new AnimationSet(false);
        int i1 = mOkButton.getWidth();
        int j1 = mOkButton.getHeight();
        ScaleAnimation scaleanimation = new ScaleAnimation((float)k / (float)i1, 1.0F, (float)l / (float)j1, 1.0F, 1, 0.5F, 1, 0.5F);
        scaleanimation.setDuration(825L);
        scaleanimation.setInterpolator(new OvershootInterpolator(2.0F));
        animationset.addAnimation(scaleanimation);
        TranslateAnimation translateanimation = new TranslateAnimation(0, (i + k / 2) - (ai[0] + i1 / 2), 1, 0.0F, 0, (j + l / 2) - (ai[1] + j1 / 2), 1, 0.0F);
        translateanimation.setDuration(550L);
        translateanimation.setInterpolator(new AnticipateInterpolator(0.875F));
        animationset.addAnimation(translateanimation);
        mOkButton.startAnimation(animationset);
        View view = r.findViewById(0x7f0901de);
        View view1 = r.findViewById(0x7f0901dd);
        int k1;
        float f;
        int l1;
        ScaleAnimation scaleanimation1;
        int i2;
        float f1;
        int j2;
        ScaleAnimation scaleanimation2;
        if (mIsPortrait)
        {
            k1 = 1;
        } else
        {
            k1 = 0;
        }
        f = k1;
        if (mIsPortrait)
        {
            l1 = 0;
        } else
        {
            l1 = 1;
        }
        scaleanimation1 = new ScaleAnimation(f, 1.0F, l1, 1.0F, 1, 0.0F, 1, 0.0F);
        if (mIsPortrait)
        {
            i2 = 1;
        } else
        {
            i2 = 0;
        }
        f1 = i2;
        if (mIsPortrait)
        {
            j2 = 0;
        } else
        {
            j2 = 1;
        }
        scaleanimation2 = new ScaleAnimation(f1, 1.0F, j2, 1.0F, 1, 1.0F, 1, 1.0F);
        scaleanimation1.setDuration(550L);
        scaleanimation1.setStartOffset(275L);
        scaleanimation1.setFillBefore(true);
        scaleanimation2.setDuration(550L);
        scaleanimation2.setStartOffset(275L);
        scaleanimation2.setFillBefore(true);
        view.startAnimation(scaleanimation1);
        view1.startAnimation(scaleanimation2);
    }

    private void buttonAlphaAnim(View view, float f, float f1)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(f, f1);
        alphaanimation.setInterpolator(new AccelerateInterpolator(2.0F));
        alphaanimation.setDuration(200L);
        alphaanimation.setFillAfter(true);
        view.startAnimation(alphaanimation);
    }

    public static void cleanUpFiles(String s)
    {
        if (s == null)
        {
            s = "newPlaceImage.jpg";
        }
        final String prefix = s;
        File afile[] = (new File(ResManager.mAppDir)).listFiles(new FilenameFilter() {

            private final String val$prefix;

            public boolean accept(File file, String s1)
            {
                return s1.startsWith(prefix);
            }

            
            {
                prefix = s;
                super();
            }
        });
        int i = afile.length;
        int j = 0;
        do
        {
            if (j >= i)
            {
                return;
            }
            afile[j].delete();
            j++;
        } while (true);
    }

    private void dimOkButton()
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.8F);
        alphaanimation.setDuration(300L);
        alphaanimation.setRepeatMode(2);
        alphaanimation.setRepeatCount(100);
        alphaanimation.setInterpolator(new AccelerateDecelerateInterpolator());
        mOkButton.startAnimation(alphaanimation);
    }

    private int getScreenOrientation()
    {
        int i = getActivity().getWindowManager().getDefaultDisplay().getRotation();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        getActivity().getWindowManager().getDefaultDisplay().getMetrics(displaymetrics);
        int j = displaymetrics.widthPixels;
        int k = displaymetrics.heightPixels;
        if ((i == 0 || i == 2) && k > j || (i == 1 || i == 3) && j > k)
        {
            switch (i)
            {
            default:
                return 1;

            case 0: // '\0'
                return 1;

            case 1: // '\001'
                return 0;

            case 2: // '\002'
                return 9;

            case 3: // '\003'
                return 8;
            }
        }
        switch (i)
        {
        default:
            return 0;

        case 0: // '\0'
            return 0;

        case 1: // '\001'
            return 1;

        case 2: // '\002'
            return 8;

        case 3: // '\003'
            return 9;
        }
    }

    private void lockOrientation()
    {
        getActivity().setRequestedOrientation(getScreenOrientation());
    }

    private void nextFlashMode()
    {
        if (mFlashMode != com.waze.ifs.ui.CameraPreview.FlashMode.Off) goto _L2; else goto _L1
_L1:
        mFlashMode = com.waze.ifs.ui.CameraPreview.FlashMode.On;
_L4:
        setFlashMode();
        return;
_L2:
        if (mFlashMode == com.waze.ifs.ui.CameraPreview.FlashMode.On)
        {
            mFlashMode = com.waze.ifs.ui.CameraPreview.FlashMode.Auto;
        } else
        if (mFlashMode == com.waze.ifs.ui.CameraPreview.FlashMode.Auto)
        {
            mFlashMode = com.waze.ifs.ui.CameraPreview.FlashMode.Off;
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setCaptureRect()
    {
        ((ActivityBase)getActivity()).postDelayed(new Runnable() {

            final TakePhotoFragment this$0;

            public void run()
            {
                float f = (float)mClearView.getTop() / (float)mPreview.getHeight();
                float f1 = (float)mClearView.getHeight() / (float)mPreview.getHeight();
                float f2 = (float)mClearView.getLeft() / (float)mPreview.getWidth();
                float f3 = (float)mClearView.getWidth() / (float)mPreview.getWidth();
                mPreview.setCaptureRect(Float.valueOf(f2), Float.valueOf(f), Float.valueOf(f3), Float.valueOf(f1));
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        }, 10L);
    }

    private void setClearViewLayout()
    {
        android.view.ViewGroup.LayoutParams layoutparams = mClearView.getLayoutParams();
        if (mWindowHeight > mWindowWidth)
        {
            layoutparams.height = (int)(1200F * ((float)mWindowWidth / 1600F));
        } else
        {
            mIsPortrait = false;
            layoutparams.width = (int)(1600F * ((float)mWindowHeight / 1200F));
        }
        mClearView.setLayoutParams(layoutparams);
    }

    private void setFlashMode()
    {
        if (mFlashMode != com.waze.ifs.ui.CameraPreview.FlashMode.Off) goto _L2; else goto _L1
_L1:
        mFlashButton.setImageResource(0x7f0203e0);
_L4:
        mPreview.setFlash(mFlashMode);
        return;
_L2:
        if (mFlashMode == com.waze.ifs.ui.CameraPreview.FlashMode.On)
        {
            mFlashButton.setImageResource(0x7f0203df);
        } else
        if (mFlashMode == com.waze.ifs.ui.CameraPreview.FlashMode.Auto)
        {
            mFlashButton.setImageResource(0x7f0203dd);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    private void setUpFragment()
    {
        unlockOrientation();
        mText = (WazeTextView)r.findViewById(0x7f0901df);
        mText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CAMERA_EXPLAIN_TEXT));
        mPreview = (CameraPreview)r.findViewById(0x7f0901da);
        mPreview.setOnTouchListener(new android.view.View.OnTouchListener() {

            final TakePhotoFragment this$0;

            public boolean onTouch(View view, MotionEvent motionevent)
            {
                if (motionevent.getAction() == 0)
                {
                    float f = motionevent.getX() / (float)mPreview.getWidth();
                    float f1 = motionevent.getY() / (float)mPreview.getHeight();
                    mPreview.focus(f, f1);
                }
                return false;
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        });
        mClearView = r.findViewById(0x7f0901dc);
        setClearViewLayout();
        mDoneButton = (ImageButton)r.findViewById(0x7f0901e2);
        mDoneButton.setOnClickListener(null);
        mDoneButton.setVisibility(8);
        mOkButton = (ImageButton)r.findViewById(0x7f0901e3);
        mOkButton.setVisibility(0);
        mOkButton.clearAnimation();
        mOkButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TakePhotoFragment this$0;

            public void onClick(View view)
            {
                lockOrientation();
                mOkButton.setOnClickListener(null);
                dimOkButton();
                mPreview.capture();
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        });
        mRetakeButton = (ImageButton)r.findViewById(0x7f0901e0);
        mRetakeButton.setEnabled(false);
        buttonAlphaAnim(mRetakeButton, 1.0F, 0.5F);
        mFlashButton = (ImageButton)r.findViewById(0x7f0901e4);
        mFlashButton.setEnabled(true);
        mFlashButton.clearAnimation();
        setFlashMode();
        mFlashButton.setOnClickListener(new android.view.View.OnClickListener() {

            final TakePhotoFragment this$0;

            public void onClick(View view)
            {
                nextFlashMode();
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        });
        mPreview.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

            final TakePhotoFragment this$0;

            public void onGlobalLayout()
            {
                setCaptureRect();
                mPreview.getViewTreeObserver().removeGlobalOnLayoutListener(this);
            }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
        });
    }

    private void unlockOrientation()
    {
        getActivity().setRequestedOrientation(4);
    }

    public void onCapture(boolean flag)
    {
        if (flag)
        {
            animateFlash();
            animateDoneButton();
            mText.setText(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_CAMERA_POST_CAPTURE));
            mRetakeButton.setEnabled(true);
            buttonAlphaAnim(mRetakeButton, 0.5F, 1.0F);
            mRetakeButton.setOnClickListener(new android.view.View.OnClickListener() {

                final TakePhotoFragment this$0;

                public void onClick(View view)
                {
                    animateBlackFlashStart();
                }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
            });
            mFlashButton.setEnabled(false);
            buttonAlphaAnim(mFlashButton, 1.0F, 0.5F);
            mDoneButton.setOnClickListener(new android.view.View.OnClickListener() {

                final TakePhotoFragment this$0;

                public void onClick(View view)
                {
                    mPreview.saveToFile();
                    File file = new File(mSavedFile);
                    ((ITakePhoto)getActivity()).photoTaken(Uri.fromFile(file), file.getAbsolutePath());
                    Analytics.log("PLACES_TAKING_PHOTO_APPROVE_CLICKED", null, null);
                }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
            });
            return;
        } else
        {
            animateBlackFlashStart();
            return;
        }
    }

    public View onCreateView(LayoutInflater layoutinflater, ViewGroup viewgroup, Bundle bundle)
    {
        super.onCreateView(layoutinflater, viewgroup, bundle);
        mNm = NativeManager.getInstance();
        mWindowHeight = getResources().getDisplayMetrics().heightPixels;
        mWindowWidth = getResources().getDisplayMetrics().widthPixels;
        File file = new File((new StringBuilder(String.valueOf(ResManager.mAppDir))).append(File.separator).append(mFileName).toString());
        int i = 0;
        do
        {
            if (!file.exists())
            {
                if (i > 0)
                {
                    mFileName = (new StringBuilder(String.valueOf(mFileName))).append(i).toString();
                }
                CameraPreview.CaptureConfig(mWindowWidth, mWindowHeight, true, 90, ResManager.mAppDir, mFileName, this);
                mSavedFile = (new StringBuilder(String.valueOf(ResManager.mAppDir))).append(File.separator).append(mFileName).toString();
                r = layoutinflater.inflate(0x7f030028, viewgroup, false);
                setUpFragment();
                if (mDoAnimation)
                {
                    mDoAnimation = false;
                    mOkButton.getViewTreeObserver().addOnGlobalLayoutListener(new android.view.ViewTreeObserver.OnGlobalLayoutListener() {

                        final TakePhotoFragment this$0;

                        public void onGlobalLayout()
                        {
                            mOkButton.getViewTreeObserver().removeGlobalOnLayoutListener(this);
                            animateIn();
                        }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
                    });
                }
                return r;
            }
            i++;
            file = new File((new StringBuilder(String.valueOf(ResManager.mAppDir))).append(File.separator).append(mFileName).append(i).toString());
        } while (true);
    }

    public void onDestroy()
    {
        unlockOrientation();
        super.onDestroy();
    }

    public void onError()
    {
        if (getActivity() != null && !getActivity().isFinishing())
        {
            MsgBox.openMessageBoxWithCallback(mNm.getLanguageString(DisplayStrings.DS_UHHOHE), mNm.getLanguageString(DisplayStrings.DS_CAMERA_IS_NOT_AVAILABLE), false, new android.content.DialogInterface.OnClickListener() {

                final TakePhotoFragment this$0;

                public void onClick(DialogInterface dialoginterface, int i)
                {
                    getActivity().finish();
                }

            
            {
                this$0 = TakePhotoFragment.this;
                super();
            }
            });
        }
    }

    public void onResume()
    {
        super.onResume();
        mPreview.focus();
    }

    public void onSize(android.hardware.Camera.Size size)
    {
        mWindowHeight = mPreview.getHeight();
        mWindowWidth = mPreview.getWidth();
        setClearViewLayout();
        if (mWindowHeight <= mWindowWidth) goto _L2; else goto _L1
_L1:
        int l;
        int i1;
        int j1;
        final android.view.ViewGroup.LayoutParams p;
        if (size.height > size.width)
        {
            l = size.height;
            i1 = size.width;
        } else
        {
            l = size.width;
            i1 = size.height;
        }
        j1 = (int)(((float)mWindowWidth / (float)i1) * (float)l);
        mWindowWidth;
        p = mPreview.getLayoutParams();
        if (Math.abs(p.height - j1) > 10)
        {
            p.height = j1;
            ((ActivityBase)getActivity()).postDelayed(new Runnable() {

                final TakePhotoFragment this$0;
                private final android.view.ViewGroup.LayoutParams val$p;

                public void run()
                {
                    mPreview.setLayoutParams(p);
                }

            
            {
                this$0 = TakePhotoFragment.this;
                p = layoutparams;
                super();
            }
            }, 0L);
        }
_L4:
        setCaptureRect();
        return;
_L2:
        int i;
        int j;
        int k;
        android.view.ViewGroup.LayoutParams layoutparams;
        if (size.height < size.width)
        {
            i = size.height;
            j = size.width;
        } else
        {
            i = size.width;
            j = size.height;
        }
        k = (int)(((float)mWindowHeight / (float)i) * (float)j);
        mWindowHeight;
        layoutparams = mPreview.getLayoutParams();
        if (Math.abs(layoutparams.width - k) > 10)
        {
            layoutparams.width = k;
            mPreview.setLayoutParams(layoutparams);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void setAnimateButton(Bundle bundle)
    {
        boolean flag;
        if (bundle != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        mDoAnimation = flag;
        mCameraButtonLocation = bundle;
    }













}
