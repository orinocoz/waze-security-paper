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
import com.waze.rtalerts.RTAlertsCommentData;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class CommentPopUP extends PopUp
{

    private RTAlertsCommentData mCommentData;
    private Context mContext;
    private LayoutManager mLayoutManager;
    private String mUserImageUrl;

    public CommentPopUP(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = null;
        mContext = context;
        mLayoutManager = layoutmanager;
    }

    private void fillDescription()
    {
        ((TextView)findViewById(0x7f0901bb)).setVisibility(8);
        ((TextView)findViewById(0x7f09051e)).setText(mCommentData.mDescription);
    }

    private void fillFrom()
    {
        ((TextView)findViewById(0x7f090187)).setText(mCommentData.mReportedBy);
        if (mUserImageUrl != null)
        {
            findViewById(0x7f09017b).setVisibility(0);
            findViewById(0x7f09017d).setVisibility(0);
            final ImageView Userimg = (ImageView)findViewById(0x7f09017b);
            Userimg.setVisibility(0);
            ImageRepository.instance.getImage(mUserImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final CommentPopUP this$0;
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
                this$0 = CommentPopUP.this;
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
            imageview.setImageDrawable(getResourceDrawable(mContext, mCommentData.mMood));
            imageview.setVisibility(0);
            return;
        }
    }

    private void fillOrigAlertDesc()
    {
        ((TextView)findViewById(0x7f090565)).setText(mCommentData.mOrigAlertDescrition.replace(",  ", ","));
    }

    private void fillPopup()
    {
        fillOrigAlertDesc();
        fillDescription();
        fillFrom();
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f0300bf, this);
        setTitle(AppService.getNativeManager().getLanguageString(DisplayStrings.DS_REPLY));
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

            final CommentPopUP this$0;

            public void run()
            {
                AppService.getNativeManager().ReportAbusNTV(mCommentData.mAlertID, mCommentData.mCommentID);
            }

            
            {
                this$0 = CommentPopUP.this;
                super();
            }
        });
    }

    private void onReply()
    {
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final CommentPopUP this$0;

            public void run()
            {
                AppService.getNativeManager().sendCommentNTV(mCommentData.mAlertID);
            }

            
            {
                this$0 = CommentPopUP.this;
                super();
            }
        });
    }

    private void setButtonActions()
    {
        findViewById(0x7f0901be).setOnClickListener(new android.view.View.OnClickListener() {

            final CommentPopUP this$0;

            public void onClick(View view)
            {
                onReply();
            }

            
            {
                this$0 = CommentPopUP.this;
                super();
            }
        });
        findViewById(0x7f090520).setOnClickListener(new android.view.View.OnClickListener() {

            final CommentPopUP this$0;

            public void onClick(View view)
            {
                onFlag();
            }

            
            {
                this$0 = CommentPopUP.this;
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

    public View GetView(RTAlertsCommentData rtalertscommentdata, String s)
    {
        init();
        mUserImageUrl = s;
        mCommentData = rtalertscommentdata;
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

    public void show(RTAlertsCommentData rtalertscommentdata, String s)
    {
        init();
        mUserImageUrl = s;
        mCommentData = rtalertscommentdata;
        fillPopup();
        mLayoutManager.addView(this);
    }



}
