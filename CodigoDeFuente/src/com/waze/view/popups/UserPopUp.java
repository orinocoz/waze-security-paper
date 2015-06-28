// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.MapViewWrapper;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.messages.UserMessage;
import com.waze.share.UserOptionsActivity;
import com.waze.strings.DisplayStrings;
import com.waze.user.UserData;
import com.waze.utils.ImageRepository;
import com.waze.view.anim.AnimationUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;

public class UserPopUp extends RelativeLayout
{

    private static boolean bIsInitialized = false;
    private static Activity mContext = null;
    private static UserData mData;
    private static UserPopUp mInstance;
    private static boolean mIsShown = false;
    private static MapViewWrapper mMapWrapper = null;
    private static int mOffsetX;

    private UserPopUp(Activity activity)
    {
        super(activity);
        mContext = activity;
        init();
    }

    private Drawable ImageOperations(String s, String s1)
    {
        Drawable drawable;
        try
        {
            drawable = Drawable.createFromStream((InputStream)fetch(s), "src");
        }
        catch (MalformedURLException malformedurlexception)
        {
            malformedurlexception.printStackTrace();
            return null;
        }
        catch (IOException ioexception)
        {
            ioexception.printStackTrace();
            return null;
        }
        return drawable;
    }

    private void disablePingButton()
    {
        findViewById(0x7f0907bf).setEnabled(false);
        ((TextView)findViewById(0x7f0907c1)).setEnabled(false);
        ((ImageView)findViewById(0x7f0907c0)).setImageResource(0x7f0200a6);
    }

    private void disablePrvPingButton()
    {
        findViewById(0x7f0907c2).setEnabled(false);
        ((TextView)findViewById(0x7f0907c4)).setEnabled(false);
        ((ImageView)findViewById(0x7f0907c3)).setImageResource(0x7f02025c);
    }

    private void enablePingButton()
    {
        findViewById(0x7f0907bf).setEnabled(true);
        ((TextView)findViewById(0x7f0907c1)).setEnabled(true);
        ((ImageView)findViewById(0x7f0907c0)).setImageResource(0x7f0200a6);
    }

    private void enablePrvPingButton()
    {
        findViewById(0x7f0907c2).setEnabled(true);
        ((TextView)findViewById(0x7f0907c4)).setEnabled(true);
        ((ImageView)findViewById(0x7f0907c3)).setImageResource(0x7f02025c);
    }

    public static UserPopUp getInstance(Activity activity)
    {
        if (mInstance == null)
        {
            mInstance = new UserPopUp(activity);
        }
        return mInstance;
    }

    public static boolean hasInstance()
    {
        return mInstance != null;
    }

    private void init()
    {
        LayoutInflater layoutinflater = (LayoutInflater)getContext().getSystemService("layout_inflater");
        if (AppService.getNativeManager().getLanguageRtl())
        {
            layoutinflater.inflate(0x7f030131, this);
        } else
        {
            layoutinflater.inflate(0x7f030130, this);
        }
        setUpButtonsTxt();
    }

    private void onPing()
    {
        UserMessage.startPublic(AppService.getMainActivity(), mData);
    }

    private void onPrvPing()
    {
        Intent intent = new Intent(mContext, com/waze/share/UserOptionsActivity);
        intent.putExtra("UserData", mData);
        mContext.startActivityForResult(intent, 0);
    }

    private void setBgImage(int i)
    {
        Display display = AppService.getDisplay();
        float f = getResources().getDisplayMetrics().density;
        if ((float)i < 120F * f)
        {
            updateBgImage(0x7f0202e9);
            mOffsetX = (int)(87F * f);
            return;
        }
        if (i > display.getWidth() - (int)(120F * f))
        {
            updateBgImage(0x7f0202eb);
            mOffsetX = (int)(-85F * f);
            return;
        } else
        {
            updateBgImage(0x7f0202e2);
            mOffsetX = (int)(2.0F * f);
            return;
        }
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f0901bc)).setText(s);
    }

    private void updateBgImage(int i)
    {
        View view = findViewById(0x7f090341);
        view.setBackgroundResource(i);
        view.setPadding(0, 0, 0, 0);
    }

    private void updatePosition(int i, int j)
    {
        RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f0907b4);
        android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
        int k = AppService.getDisplay().getWidth();
        relativelayout.getWidth();
        relativelayout.getHeight();
        float f = getResources().getDisplayMetrics().density;
        int l = (int)(250F * f);
        int i1 = (int)(190F * f);
        if (i < k - l / 2)
        {
            layoutparams.setMargins((i - l / 2) + mOffsetX, j - i1, 0, -i1);
        } else
        {
            layoutparams.setMargins((i - l / 2) + mOffsetX, j - i1, (k + l / 2) - mOffsetX, -i1);
        }
        layoutparams.width = l;
        layoutparams.height = i1;
        relativelayout.setLayoutParams(layoutparams);
        setBgImage(i);
    }

    public Object fetch(String s)
        throws MalformedURLException, IOException
    {
        return (new URL(s)).getContent();
    }

    public void fillPopUpData()
    {
        setTitle(mData.mNickName);
        ImageView imageview = (ImageView)findViewById(0x7f0907b6);
        imageview.setImageDrawable(getResourceDrawable(mContext, mData.mMood));
        imageview.setVisibility(0);
        ImageView imageview1 = (ImageView)findViewById(0x7f0907b7);
        final ImageView picture;
        ImageView imageview2;
        TextView textview;
        String s2;
        String s3;
        if (mData.mAddonName != null && mData.mAddonName.length() > 0)
        {
            imageview1.setVisibility(0);
            imageview1.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(mData.mAddonName))).append(".bin").toString()));
        } else
        {
            imageview1.setVisibility(8);
        }
        if (mData.mFaceBookNickName == null || !mData.mShowFacebookPictureOnMap)
        {
            ((TextView)findViewById(0x7f090345)).setVisibility(8);
        } else
        {
            TextView textview1 = (TextView)findViewById(0x7f090345);
            textview1.setText(mData.mFaceBookNickName);
            textview1.setVisibility(0);
        }
        if (mData.mFriend1Url == null)
        {
            ((ImageView)findViewById(0x7f0907ba)).setVisibility(8);
        } else
        {
            final ImageView Friend1picture = (ImageView)findViewById(0x7f0907ba);
            Friend1picture.setVisibility(0);
            ImageRepository imagerepository = ImageRepository.instance;
            String s = mData.mFriend1Url;
            com.waze.utils.ImageRepository.ImageRepositoryListener imagerepositorylistener = new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final UserPopUp this$0;
                private final ImageView val$Friend1picture;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls2 this$1;
                        private final ImageView val$Friend1picture;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            Friend1picture.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls2;
                Friend1picture = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = UserPopUp.this;
                Friend1picture = imageview;
                super();
            }
            };
            imagerepository.getImage(s, imagerepositorylistener);
        }
        if (mData.mFriend2Url == null)
        {
            ((ImageView)findViewById(0x7f0907bb)).setVisibility(8);
        } else
        {
            final ImageView Friend2picture = (ImageView)findViewById(0x7f0907bb);
            Friend2picture.setVisibility(0);
            ImageRepository imagerepository1 = ImageRepository.instance;
            String s1 = mData.mFriend2Url;
            com.waze.utils.ImageRepository.ImageRepositoryListener imagerepositorylistener1 = new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final UserPopUp this$0;
                private final ImageView val$Friend2picture;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls3 this$1;
                        private final ImageView val$Friend2picture;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            Friend2picture.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls3;
                Friend2picture = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = UserPopUp.this;
                Friend2picture = imageview;
                super();
            }
            };
            imagerepository1.getImage(s1, imagerepositorylistener1);
        }
        picture = (ImageView)findViewById(0x7f090343);
        imageview2 = (ImageView)findViewById(0x7f0907b8);
        if (mData.mShowFacebookPicture)
        {
            imageview1.setVisibility(8);
            imageview.setVisibility(8);
            picture.setImageResource(0x7f02011b);
            picture.setVisibility(0);
            imageview2.setVisibility(0);
            ImageRepository imagerepository2 = ImageRepository.instance;
            String s4 = mData.getImage();
            com.waze.utils.ImageRepository.ImageRepositoryListener imagerepositorylistener2 = new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final UserPopUp this$0;
                private final ImageView val$picture;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls4 this$1;
                        private final Bitmap val$bitmap;
                        private final ImageView val$picture;

                        public void run()
                        {
                            picture.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls4;
                picture = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = UserPopUp.this;
                picture = imageview;
                super();
            }
            };
            imagerepository2.getImage(s4, imagerepositorylistener2);
        } else
        {
            picture.setVisibility(8);
            imageview2.setVisibility(8);
        }
        textview = (TextView)findViewById(0x7f0907bc);
        s2 = mData.mPtsStr;
        if (mData.mRank == -1 || mData.mPtsStr == null)
        {
            s3 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_RANK_AND_POINTS_NA);
        } else
        {
            s3 = (new StringBuilder(String.valueOf(s2))).append(" ").append(mData.mRankStr).toString();
        }
        textview.setText(s3);
        ((TextView)findViewById(0x7f090042)).setText(mData.mJoinedStr);
        ((TextView)findViewById(0x7f0907bd)).setText(mData.mSpeedStr);
        if (mData.mAllowPing)
        {
            enablePingButton();
            enablePrvPingButton();
            return;
        } else
        {
            disablePingButton();
            disablePrvPingButton();
            return;
        }
    }

    public Drawable getResourceDrawable(Context context, String s)
    {
        return MoodManager.getMoodDrawable(context, s);
    }

    public void hide()
    {
        if (mIsShown)
        {
            mIsShown = false;
            if (mMapWrapper != null)
            {
                bIsInitialized = false;
                mMapWrapper.removeView(this);
                NativeManager.Post(new Runnable() {

                    final UserPopUp this$0;

                    public void run()
                    {
                        AppService.getNativeManager().wazeUiUserPopupClosedNTV();
                    }

            
            {
                this$0 = UserPopUp.this;
                super();
            }
                });
                return;
            }
        }
    }

    public void setUpButtonsTxt()
    {
        String s = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_MESSAGE);
        ((TextView)findViewById(0x7f0907c4)).setText(s);
        String s1 = AppService.getNativeManager().getLanguageString(DisplayStrings.DS_PING);
        ((TextView)findViewById(0x7f0907c1)).setText(s1);
    }

    public void show(UserData userdata, int i, int j)
    {
        if (mIsShown)
        {
            mInstance.hide();
        }
        mData = userdata;
        mOffsetX = 0;
        fillPopUpData();
        setBgImage(i);
        mMapWrapper = AppService.getActiveMapViewWrapper();
        if (mMapWrapper != null)
        {
            if (bIsInitialized)
            {
                mMapWrapper.removeView(this);
            }
            mMapWrapper.addView(this);
            updatePosition(i, j);
        }
        findViewById(0x7f0907bf).setOnClickListener(new android.view.View.OnClickListener() {

            final UserPopUp this$0;

            public void onClick(View view)
            {
                onPing();
            }

            
            {
                this$0 = UserPopUp.this;
                super();
            }
        });
        findViewById(0x7f0907c2).setOnClickListener(new android.view.View.OnClickListener() {

            final UserPopUp this$0;

            public void onClick(View view)
            {
                onPrvPing();
            }

            
            {
                this$0 = UserPopUp.this;
                super();
            }
        });
        AnimationUtils.openAnimateFromPoint(mInstance, i, j, 100);
        mIsShown = true;
    }

    public void update(int i, int j)
    {
        if (mIsShown)
        {
            updatePosition(i, j);
        }
    }



}
