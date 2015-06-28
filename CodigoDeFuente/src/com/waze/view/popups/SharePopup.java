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
import com.waze.navigate.DriveToNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.user.UserData;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class SharePopup extends PopUp
{

    private static Context mContext = null;
    private static LayoutManager mLayoutManager;
    private boolean mIsShown;
    private String mLocationText;
    private String mMeetingID;
    private int mType;
    private UserData mUser;
    private String mUserImageUrl;

    public SharePopup(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mMeetingID = null;
        mUserImageUrl = null;
        mIsShown = false;
        mType = 0;
        mLocationText = null;
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
        NativeManager nativemanager = AppService.getNativeManager();
        TextView textview = (TextView)findViewById(0x7f0901bd);
        TextView textview1;
        String s;
        if (textview != null)
        {
            if (mUser != null)
            {
                String s1 = nativemanager.getLanguageString(DisplayStrings.DS_SENT_FROM_PS);
                Object aobj[] = new Object[1];
                aobj[0] = mUser.mNickName;
                textview.setText(String.format(s1, aobj));
            } else
            {
                textview.setVisibility(8);
            }
        }
        textview1 = (TextView)findViewById(0x7f09051e);
        if (textview1 != null)
        {
            textview1.setText(mLocationText);
        }
        ((TextView)findViewById(0x7f0901bb)).setVisibility(8);
        if (mType == 2)
        {
            s = nativemanager.getLanguageString(DisplayStrings.DS_IM_ON_MY_WAY);
        } else
        {
            s = nativemanager.getLanguageString(DisplayStrings.DS_NEW_LOCATION);
        }
        setTitle(s);
        setButtonText();
        setButtonActions();
    }

    private void fillPopup()
    {
        fillFrom();
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03010a, this);
    }

    private void onReply()
    {
        Analytics.log("POPUP_CLICK", "VAUE", "SHARED_DRIVE");
        mLayoutManager.callCloseAllPopups(1);
        NativeManager.Post(new Runnable() {

            final SharePopup this$0;

            public void run()
            {
                DriveToNativeManager.getInstance().InitMeeting(mMeetingID);
            }

            
            {
                this$0 = SharePopup.this;
                super();
            }
        });
    }

    private void setButtonActions()
    {
        findViewById(0x7f0901be).setOnClickListener(new android.view.View.OnClickListener() {

            final SharePopup this$0;

            public void onClick(View view)
            {
                onReply();
            }

            
            {
                this$0 = SharePopup.this;
                super();
            }
        });
    }

    private void setButtonText()
    {
        ImageView imageview = (ImageView)findViewById(0x7f090189);
        String s;
        if (mType == 2)
        {
            imageview.setImageResource(0x7f020434);
            s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_VIEW_DRIVE);
        } else
        {
            imageview.setImageResource(0x7f020435);
            s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_VIEW_LOCATION);
        }
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

                final SharePopup this$0;
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
                this$0 = SharePopup.this;
                Userimg = imageview;
                super();
            }
            });
            return;
        }
        findViewById(0x7f09017b).setVisibility(8);
        findViewById(0x7f09017d).setVisibility(8);
        ImageView imageview = (ImageView)findViewById(0x7f090191);
        if (mUser != null)
        {
            imageview.setImageDrawable(getResourceDrawable(mContext, mUser.mMood));
        } else
        {
            findViewById(0x7f09017b).setVisibility(0);
            findViewById(0x7f09017d).setVisibility(0);
        }
        imageview.setVisibility(0);
    }

    public View GetView(UserData userdata, int i, String s, String s1)
    {
        mIsShown = true;
        mUser = userdata;
        DisplayMetrics displaymetrics;
        View view;
        android.widget.LinearLayout.LayoutParams layoutparams;
        if (mUser != null)
        {
            mUserImageUrl = mUser.getImage();
        } else
        {
            mUserImageUrl = null;
        }
        mType = i;
        mMeetingID = s;
        mLocationText = s1;
        setUpforRTL();
        fillPopup();
        displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        view = findViewById(0x7f0901be);
        layoutparams = (android.widget.LinearLayout.LayoutParams)view.getLayoutParams();
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

    public void show(UserData userdata, int i, String s, String s1)
    {
        if (userdata == null)
        {
            return;
        }
        mIsShown = true;
        mUser = userdata;
        mType = i;
        mMeetingID = s;
        mLocationText = s1;
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
