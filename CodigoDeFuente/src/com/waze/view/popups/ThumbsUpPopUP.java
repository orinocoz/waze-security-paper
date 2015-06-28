// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.WindowManager;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsThumbsUpData;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.timer.TimerView;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class ThumbsUpPopUP extends PopUp
{

    private static Context mContext = null;
    private static ThumbsUpPopUP mInstance;
    private static boolean mIsShown = false;
    private static LayoutManager mLayoutManager;
    private static RTAlertsThumbsUpData mThumbsUpData;
    private String mUserImageUrl;

    private ThumbsUpPopUP(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mUserImageUrl = null;
        mContext = context;
        mLayoutManager = layoutmanager;
    }

    private void close()
    {
        dismiss();
    }

    private void fillFrom()
    {
        TextView textview = (TextView)findViewById(0x7f090187);
        if (textview != null)
        {
            textview.setText(mThumbsUpData.mFrom);
        }
    }

    private void fillOrigAlertDesc()
    {
        TextView textview = (TextView)findViewById(0x7f09017f);
        if (textview != null && mThumbsUpData.mOrigAlertDescrition != null)
        {
            textview.setText(mThumbsUpData.mOrigAlertDescrition);
        }
    }

    private void fillPopup()
    {
        fillOrigAlertDesc();
        fillFrom();
        if (mThumbsUpData.mTime / 60 == 0)
        {
            ((TextView)findViewById(0x7f090175)).setText((new StringBuilder(String.valueOf(Integer.toString(mThumbsUpData.mTime)))).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SECONDS_AGO)).toString());
            return;
        } else
        {
            ((TextView)findViewById(0x7f090175)).setText((new StringBuilder(String.valueOf(Integer.toString(mThumbsUpData.mTime / 60)))).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MINUTES_AGO)).toString());
            return;
        }
    }

    public static ThumbsUpPopUP getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new ThumbsUpPopUP(context, layoutmanager);
            mInstance.init();
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03011b, this);
        setTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_THANKS));
        setButtonText();
        setButtonActions();
    }

    private void onCLose()
    {
        close();
    }

    private void onReply()
    {
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final ThumbsUpPopUP this$0;

            public void run()
            {
                AppService.getNativeManager().sendCommentNTV(ThumbsUpPopUP.mThumbsUpData.mAlertID);
            }

            
            {
                this$0 = ThumbsUpPopUP.this;
                super();
            }
        });
    }

    private void setButtonActions()
    {
        findViewById(0x7f09018b).setOnClickListener(new android.view.View.OnClickListener() {

            final ThumbsUpPopUP this$0;

            public void onClick(View view)
            {
                onReply();
            }

            
            {
                this$0 = ThumbsUpPopUP.this;
                super();
            }
        });
    }

    private void setButtonText()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_REPLY);
        ((TextView)findViewById(0x7f09018d)).setText(s);
    }

    private void setCLoseTimer(int i)
    {
        ((TimerView)findViewById(0x7f09019c)).reset();
        ((TimerView)findViewById(0x7f09019c)).setTime(i);
        ((TimerView)findViewById(0x7f09019c)).setWhiteColor();
        ((TimerView)findViewById(0x7f09019c)).start();
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f09017e)).setText(s);
    }

    private void setUpforRTL()
    {
        ImageView imageview = (ImageView)findViewById(0x7f090184);
        if (imageview != null)
        {
            imageview.setVisibility(8);
        }
        if (mUserImageUrl != null)
        {
            final ImageView Userimg = (ImageView)findViewById(0x7f090184);
            Userimg.setVisibility(0);
            ImageRepository.instance.getImage(mUserImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final ThumbsUpPopUP this$0;
                private final ImageView val$Userimg;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls3 this$1;
                        private final ImageView val$Userimg;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            Userimg.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls3;
                Userimg = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = ThumbsUpPopUP.this;
                Userimg = imageview;
                super();
            }
            });
            return;
        } else
        {
            ((ImageView)findViewById(0x7f090184)).setVisibility(8);
            ImageView imageview1 = (ImageView)findViewById(0x7f090183);
            imageview1.setImageDrawable(getResourceDrawable(mContext, mThumbsUpData.mMood));
            imageview1.setVisibility(0);
            return;
        }
    }

    private void stopCloseTimer()
    {
        ((TimerView)findViewById(0x7f09019c)).stop();
    }

    public View GetView(RTAlertsThumbsUpData rtalertsthumbsupdata, String s)
    {
        mIsShown = true;
        mThumbsUpData = rtalertsthumbsupdata;
        mUserImageUrl = s;
        setUpforRTL();
        fillPopup();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            findViewById(0x7f090173).setPadding((int)(12F * displaymetrics.density), 0, (int)(12F * displaymetrics.density), 0);
            return this;
        } else
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
            return this;
        }
    }

    public void dismiss()
    {
        mIsShown = false;
        mLayoutManager.dismiss(this);
    }

    public Drawable getResourceDrawable(Context context, String s)
    {
        return MoodManager.getMoodDrawable(context, s);
    }

    public void hide()
    {
        if (mIsShown)
        {
            close();
        }
    }

    public void onBackPressed()
    {
        mLayoutManager.callCloseAllPopups(1);
    }

    public void show(RTAlertsThumbsUpData rtalertsthumbsupdata, String s)
    {
        if (rtalertsthumbsupdata == null)
        {
            return;
        } else
        {
            mIsShown = true;
            mThumbsUpData = rtalertsthumbsupdata;
            mUserImageUrl = s;
            setUpforRTL();
            fillPopup();
            mLayoutManager.addView(this);
            setCLoseTimer(7);
            return;
        }
    }



}
