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
import com.waze.analytics.Analytics;
import com.waze.rtalerts.RTAlertsThumbsUpData;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class BeepPopUp extends PopUp
{

    private static Context mContext = null;
    private static LayoutManager mLayoutManager;
    private boolean mIsShown;
    private RTAlertsThumbsUpData mThumbsUpData;
    private String mUserImageUrl;

    public BeepPopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mUserImageUrl = null;
        mIsShown = false;
        mContext = context;
        mLayoutManager = layoutmanager;
        init();
    }

    private void close()
    {
        dismiss();
    }

    private void fillFrom()
    {
        TextView textview = (TextView)findViewById(0x7f0901bd);
        if (textview != null)
        {
            textview.setText(mThumbsUpData.mFrom);
        }
        int i = mThumbsUpData.mTime / 60;
        if (i == 0)
        {
            ((TextView)findViewById(0x7f0901bb)).setText((new StringBuilder(String.valueOf(Integer.toString(mThumbsUpData.mTime)))).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_SECONDS_AGO)).toString());
            return;
        } else
        {
            ((TextView)findViewById(0x7f0901bb)).setText((new StringBuilder(String.valueOf(Integer.toString(i)))).append(" ").append(NativeManager.getInstance().getLanguageString(DisplayStrings.DS_MINUTES_AGO)).toString());
            return;
        }
    }

    private void fillPopup()
    {
        fillFrom();
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030024, this);
        setTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_BEEP_BEEP));
        setButtonText();
        setButtonActions();
    }

    private void onReply()
    {
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final BeepPopUp this$0;

            public void run()
            {
                Analytics.log("BEEP_BACK");
                AppService.getNativeManager().sendBeepBackNTV(mThumbsUpData.mAlertID);
            }

            
            {
                this$0 = BeepPopUp.this;
                super();
            }
        });
    }

    private void setButtonActions()
    {
        findViewById(0x7f0901be).setOnClickListener(new android.view.View.OnClickListener() {

            final BeepPopUp this$0;

            public void onClick(View view)
            {
                onReply();
            }

            
            {
                this$0 = BeepPopUp.this;
                super();
            }
        });
    }

    private void setButtonText()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_BEEP_BACK);
        ((TextView)findViewById(0x7f0901bf)).setText(s);
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(s);
    }

    private void setUpforRTL()
    {
        if (mUserImageUrl != null)
        {
            findViewById(0x7f09017b).setVisibility(0);
            findViewById(0x7f09017d).setVisibility(0);
            final ImageView Userimg = (ImageView)findViewById(0x7f09017b);
            Userimg.setVisibility(0);
            ImageRepository.instance.getImage(mUserImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final BeepPopUp this$0;
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
                this$0 = BeepPopUp.this;
                Userimg = imageview;
                super();
            }
            });
            return;
        } else
        {
            findViewById(0x7f09017b).setVisibility(8);
            findViewById(0x7f09017d).setVisibility(8);
            ImageView imageview = (ImageView)findViewById(0x7f090191);
            imageview.setImageDrawable(getResourceDrawable(mContext, mThumbsUpData.mMood));
            imageview.setVisibility(0);
            return;
        }
    }

    public View GetView(RTAlertsThumbsUpData rtalertsthumbsupdata, String s)
    {
        Analytics.log("BEEP_RECV");
        mIsShown = true;
        mThumbsUpData = rtalertsthumbsupdata;
        mUserImageUrl = s;
        setUpforRTL();
        fillPopup();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        View view = findViewById(0x7f0901be);
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            view.setBackgroundResource(0x7f02003d);
            findViewById(0x7f090181).setVisibility(8);
            findViewById(0x7f090173).setPadding((int)(8.1999999999999993D * (double)displaymetrics.density), 0, (int)(8.1999999999999993D * (double)displaymetrics.density), 0);
            layoutparams.setMargins((int)(1.2D * (double)displaymetrics.density), 0, 0, 0);
        } else
        {
            findViewById(0x7f090181).setVisibility(0);
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            view.setBackgroundResource(0x7f0202c9);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
            layoutparams.setMargins(0, 0, 0, 0);
        }
        view.setLayoutParams(layoutparams);
        return this;
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
        }
        Analytics.log("BEEP_RECV");
        mIsShown = true;
        mThumbsUpData = rtalertsthumbsupdata;
        mUserImageUrl = s;
        setUpforRTL();
        fillPopup();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        View view = findViewById(0x7f0901be);
        android.widget.LinearLayout.LayoutParams layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            findViewById(0x7f0901be).setBackgroundResource(0x7f02003d);
            findViewById(0x7f090181).setVisibility(8);
            findViewById(0x7f090173).setPadding((int)(8.1999999999999993D * (double)displaymetrics.density), 0, (int)(8.1999999999999993D * (double)displaymetrics.density), 0);
            layoutparams.setMargins((int)(1.2D * (double)displaymetrics.density), 0, 0, 0);
            findViewById(0x7f0901be).setLayoutParams(layoutparams);
        } else
        {
            findViewById(0x7f090181).setVisibility(0);
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            findViewById(0x7f0901be).setBackgroundResource(0x7f0202c9);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
            layoutparams.setMargins(0, 0, 0, 0);
        }
        view.setLayoutParams(layoutparams);
        mLayoutManager.addView(this);
    }



}
