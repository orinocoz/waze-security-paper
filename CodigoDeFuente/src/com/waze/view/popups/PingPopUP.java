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
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.NavBarManager;
import com.waze.navbar.NavBar;
import com.waze.rtalerts.RTAlertsAlertData;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class PingPopUP extends PopUp
{

    private RTAlertsAlertData mAlertData;
    private Context mContext;
    private boolean mIsPrivatePing;
    private LayoutManager mLayoutManager;
    private String mUserImageUrl;

    public PingPopUP(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = null;
        mContext = context;
        mLayoutManager = layoutmanager;
    }

    private void fillDescription()
    {
        ((TextView)findViewById(0x7f09051e)).setText(mAlertData.mDescription);
    }

    private void fillFrom()
    {
        ((TextView)findViewById(0x7f090187)).setText(mAlertData.mReportedBy);
    }

    private void fillPopup()
    {
        fillDescription();
        fillFrom();
        if (mUserImageUrl != null)
        {
            findViewById(0x7f09017b).setVisibility(0);
            findViewById(0x7f09017d).setVisibility(0);
            final ImageView Userimg = (ImageView)findViewById(0x7f09017b);
            Userimg.setVisibility(0);
            ImageRepository.instance.getImage(mUserImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final PingPopUP this$0;
                private final ImageView val$Userimg;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls5 this$1;
                        private final ImageView val$Userimg;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            Userimg.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls5;
                Userimg = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = PingPopUP.this;
                Userimg = imageview;
                super();
            }
            });
        } else
        {
            findViewById(0x7f09017b).setVisibility(8);
            findViewById(0x7f09017d).setVisibility(8);
            ImageView imageview = (ImageView)findViewById(0x7f090191);
            imageview.setImageDrawable(getResourceDrawable(mContext, mAlertData.mMoodName));
            imageview.setVisibility(0);
        }
        ((TextView)findViewById(0x7f0901bb)).setText(mAlertData.mTimeRelative);
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f0300ae, this);
        String s;
        if (mIsPrivatePing)
        {
            s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_INCOMING_MESSAGE___);
        } else
        {
            s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_INCOMING_PING___);
        }
        setTitle(s);
        setButtonText();
        setButtonActions();
    }

    private void onCLose()
    {
        hide();
    }

    private void onFlag()
    {
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final PingPopUP this$0;

            public void run()
            {
                AppService.getNativeManager().ReportAbusNTV(mAlertData.mID, -1);
            }

            
            {
                this$0 = PingPopUP.this;
                super();
            }
        });
    }

    private void onReply()
    {
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final PingPopUP this$0;

            public void run()
            {
                AppService.getNativeManager().sendCommentNTV(mAlertData.mID);
            }

            
            {
                this$0 = PingPopUP.this;
                super();
            }
        });
    }

    private void setButtonActions()
    {
        findViewById(0x7f0901be).setOnClickListener(new android.view.View.OnClickListener() {

            final PingPopUP this$0;

            public void onClick(View view)
            {
                onReply();
            }

            
            {
                this$0 = PingPopUP.this;
                super();
            }
        });
        findViewById(0x7f090520).setOnClickListener(new android.view.View.OnClickListener() {

            final PingPopUP this$0;

            public void onClick(View view)
            {
                onFlag();
            }

            
            {
                this$0 = PingPopUP.this;
                super();
            }
        });
    }

    private void setButtonText()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_REPLY);
        ((TextView)findViewById(0x7f0901bf)).setText(s);
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(s);
    }

    public View GetView(RTAlertsAlertData rtalertsalertdata, boolean flag, String s)
    {
        mIsPrivatePing = flag;
        init();
        mUserImageUrl = s;
        mAlertData = rtalertsalertdata;
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
        mLayoutManager.dismiss(this);
    }

    public Drawable getResourceDrawable(Context context, String s)
    {
        return MoodManager.getMoodDrawable(context, s);
    }

    public void hide()
    {
        dismiss();
    }

    public void onBackPressed()
    {
        mLayoutManager.callCloseAllPopups(1);
    }

    public void show(RTAlertsAlertData rtalertsalertdata, boolean flag, String s)
    {
        mIsPrivatePing = flag;
        init();
        mUserImageUrl = s;
        mAlertData = rtalertsalertdata;
        fillPopup();
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090173);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
        int i = 0;
        if (navbar != null)
        {
            i = navbar.getNavBarHeight();
        }
        layoutparams.setMargins(0, i, 0, 0);
        relativelayout.setLayoutParams(layoutparams);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            findViewById(0x7f090173).setPadding((int)(12F * displaymetrics.density), 0, (int)(12F * displaymetrics.density), 0);
        } else
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
        }
        mLayoutManager.addView(this);
    }



}
