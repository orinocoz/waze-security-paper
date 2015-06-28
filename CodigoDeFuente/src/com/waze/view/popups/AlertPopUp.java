// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
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
import com.waze.ResManager;
import com.waze.navbar.NavBar;
import com.waze.rtalerts.RTAlertsAlertData;
import com.waze.rtalerts.RTAlertsComments;
import com.waze.rtalerts.RTAlertsNativeManager;
import com.waze.strings.DisplayStrings;
import com.waze.utils.ImageRepository;
import com.waze.view.anim.AnimationUtils;
import java.io.IOException;
import java.io.InputStream;
import java.net.MalformedURLException;
import java.net.URL;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class AlertPopUp extends PopUp
{
    class BitmapDownloaderTask extends AsyncTask
    {

        private final ImageView imageViewReference;
        final AlertPopUp this$0;

        protected transient Bitmap doInBackground(String as[])
        {
            return downloadBitmap(as[0]);
        }

        protected volatile transient Object doInBackground(Object aobj[])
        {
            return doInBackground((String[])aobj);
        }

        Bitmap downloadBitmap(String s)
        {
            AndroidHttpClient androidhttpclient = AndroidHttpClient.newInstance("Android");
            HttpGet httpget = new HttpGet(s);
            HttpResponse httpresponse;
            int i;
            httpresponse = androidhttpclient.execute(httpget);
            i = httpresponse.getStatusLine().getStatusCode();
            if (i != 200)
            {
                if (androidhttpclient != null)
                {
                    androidhttpclient.close();
                }
                return null;
            }
            HttpEntity httpentity = httpresponse.getEntity();
            if (httpentity == null) goto _L2; else goto _L1
_L1:
            InputStream inputstream = null;
            Bitmap bitmap;
            inputstream = httpentity.getContent();
            bitmap = BitmapFactory.decodeStream(inputstream);
            if (inputstream == null)
            {
                break MISSING_BLOCK_LABEL_97;
            }
            inputstream.close();
            httpentity.consumeContent();
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
            return bitmap;
            Exception exception2;
            exception2;
            if (inputstream == null)
            {
                break MISSING_BLOCK_LABEL_127;
            }
            inputstream.close();
            httpentity.consumeContent();
            throw exception2;
            Exception exception1;
            exception1;
            HttpGet httpget1 = httpget;
_L6:
            if (httpget1 == null)
            {
                break MISSING_BLOCK_LABEL_152;
            }
            httpget1.abort();
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
_L3:
            return null;
            Exception exception;
            exception;
_L4:
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
            throw exception;
_L2:
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
              goto _L3
            exception;
              goto _L4
            Exception exception3;
            exception3;
            httpget1 = null;
            if (true) goto _L6; else goto _L5
_L5:
        }

        protected void onPostExecute(Bitmap bitmap)
        {
            if (isCancelled())
            {
                bitmap = null;
            }
            if (imageViewReference != null)
            {
                imageViewReference.setImageBitmap(bitmap);
                mDrawableImage = new BitmapDrawable(bitmap);
            }
        }

        protected volatile void onPostExecute(Object obj)
        {
            onPostExecute((Bitmap)obj);
        }

        public BitmapDownloaderTask(ImageView imageview)
        {
            this$0 = AlertPopUp.this;
            super();
            imageViewReference = imageview;
        }
    }


    private RTAlertsAlertData mAlertData;
    private Context mContext;
    private Drawable mDrawableImage;
    private boolean mIsShown;
    private LayoutManager mLayoutManager;
    private int mX;
    private int mY;
    private String sImageUrl;

    public AlertPopUp(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mContext = null;
        mIsShown = false;
        mContext = context;
        mLayoutManager = layoutmanager;
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
            return null;
        }
        catch (IOException ioexception)
        {
            return null;
        }
        return drawable;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f030019, this);
    }

    static void onComment()
    {
    }

    static void onThumbsUp()
    {
    }

    private void setAlertInfoStr(String s, String s1)
    {
        ((TextView)findViewById(0x7f090186)).setText(s);
        ((TextView)findViewById(0x7f090187)).setText(s1);
    }

    private void setCommentsButton(int i, boolean flag)
    {
        View view = findViewById(0x7f09018b);
        TextView textview = (TextView)findViewById(0x7f09018d);
        if (!flag)
        {
            view.setEnabled(false);
            ((ImageView)findViewById(0x7f09018c)).setImageResource(0x7f0200ef);
            textview.setEnabled(false);
        } else
        {
            view.setEnabled(true);
            ((ImageView)findViewById(0x7f09018c)).setImageResource(0x7f0200ee);
            textview.setEnabled(true);
        }
        textview.setText(Integer.toString(i));
    }

    private void setDescription(String s)
    {
        TextView textview = (TextView)findViewById(0x7f09017f);
        if (s.length() == 0)
        {
            textview.setVisibility(8);
            return;
        } else
        {
            textview.setVisibility(0);
            textview.setText(s);
            return;
        }
    }

    private void setGroup(String s)
    {
        Drawable drawable;
        if (s != null)
        {
            drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(s))).append(".bin").toString());
            if (drawable == null)
            {
                drawable = ResManager.GetSkinDrawable("groups_default_icons.bin");
            }
        } else
        {
            drawable = ResManager.GetSkinDrawable("groups_default_icons.bin");
        }
        ((ImageView)findViewById(0x7f090185)).setImageDrawable(drawable);
    }

    private void setIcon(String s)
    {
        ((ImageView)findViewById(0x7f090179)).setImageResource(getResourceId(mContext, s));
    }

    private void setImage(String s, String s1, String s2, String s3)
    {
        View view = findViewById(0x7f09017a);
        if (s == null)
        {
            s = "";
        }
        if (s1 == null)
        {
            s1 = "";
        }
        if (s.length() == 0 && s1.length() == 0)
        {
            view.setVisibility(8);
            return;
        }
        view.setVisibility(0);
        findViewById(0x7f09017a).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertPopUp this$0;

            public void onClick(View view1)
            {
                onImagePresses();
            }

            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
        ((ImageView)findViewById(0x7f09017d)).setImageResource(getResourceId(mContext, s3));
        ImageView imageview = (ImageView)findViewById(0x7f09017c);
        ImageView imageview1;
        if (s1.length() == 0)
        {
            imageview.setVisibility(8);
        } else
        {
            imageview.setVisibility(0);
        }
        imageview1 = (ImageView)findViewById(0x7f09017b);
        if (s.length() == 0)
        {
            imageview1.setVisibility(8);
            return;
        } else
        {
            imageview1.setImageBitmap(null);
            imageview1.setVisibility(0);
            (new BitmapDownloaderTask(imageview1)).execute(new String[] {
                s2
            });
            return;
        }
    }

    private void setLocation(String s)
    {
        ((TextView)findViewById(0x7f090180)).setText(s);
    }

    private void setThumbsUpButton(int i, boolean flag)
    {
        View view = findViewById(0x7f090188);
        TextView textview = (TextView)findViewById(0x7f09018a);
        if (!flag)
        {
            view.setEnabled(false);
            ((ImageView)findViewById(0x7f090189)).setImageResource(0x7f0203ee);
            textview.setEnabled(false);
        } else
        {
            view.setEnabled(true);
            ((ImageView)findViewById(0x7f090189)).setImageResource(0x7f0203ed);
            textview.setEnabled(true);
        }
        textview.setText(Integer.toString(i));
    }

    private void setTitle(String s)
    {
        ((TextView)findViewById(0x7f09017e)).setText(s);
    }

    private void stopCloseTimer()
    {
    }

    public void InitView(RTAlertsAlertData rtalertsalertdata, int i, int j, String s)
    {
        mX = rtalertsalertdata.mScreenX;
        mY = rtalertsalertdata.mScreenY;
        mAlertData = rtalertsalertdata;
        sImageUrl = s;
        findViewById(0x7f090188).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertPopUp this$0;

            public void onClick(View view)
            {
                RTAlertsAlertData rtalertsalertdata1 = mAlertData;
                rtalertsalertdata1.mNumThumbsUp = 1 + rtalertsalertdata1.mNumThumbsUp;
                setThumbsUpButton(mAlertData.mNumThumbsUp, false);
                NativeManager.Post(new Runnable() {

                    final _cls7 this$1;

                    public void run()
                    {
                        AppService.getNativeManager().sendThumbsUpNTV(mAlertData.mID);
                    }

            
            {
                this$1 = _cls7.this;
                super();
            }
                });
            }


            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
        findViewById(0x7f09018b).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertPopUp this$0;

            public void onClick(View view)
            {
                if (mAlertData.mNumComments > 0)
                {
                    RTAlertsComments.show(AppService.getMainActivity(), mAlertData);
                    return;
                } else
                {
                    RTAlertsNativeManager.getInstance().postCommentValidate(AppService.getMainActivity(), mAlertData.mID);
                    return;
                }
            }

            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            findViewById(0x7f090173).setPadding((int)(12F * displaymetrics.density), 0, (int)(12F * displaymetrics.density), 0);
        } else
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
        }
        mIsShown = true;
        fillPopUpData(rtalertsalertdata);
    }

    public void dismiss()
    {
        mIsShown = false;
        mLayoutManager.dismiss(this);
        NativeManager.Post(new Runnable() {

            final AlertPopUp this$0;

            public void run()
            {
                AppService.getNativeManager().AlertPopUpClosedNTV();
            }

            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
    }

    public Object fetch(String s)
        throws MalformedURLException, IOException
    {
        return (new URL(s)).getContent();
    }

    public void fillPopUpData(RTAlertsAlertData rtalertsalertdata)
    {
        boolean flag;
        boolean flag1;
        if (rtalertsalertdata.mIsAutoJam)
        {
            flag = false;
        } else
        {
            flag = true;
        }
        if (!rtalertsalertdata.mIsAlertByMe && !rtalertsalertdata.mIsThumbsUpByMe)
        {
            flag1 = true;
        } else
        {
            flag1 = false;
        }
        ((ImageView)findViewById(0x7f090184)).setVisibility(0);
        if (sImageUrl != null)
        {
            final ImageView Userimg = (ImageView)findViewById(0x7f090184);
            ImageRepository.instance.getImage(sImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final AlertPopUp this$0;
                private final ImageView val$Userimg;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls4 this$1;
                        private final ImageView val$Userimg;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            Userimg.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls4;
                Userimg = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = AlertPopUp.this;
                Userimg = imageview;
                super();
            }
            });
        } else
        {
            ((ImageView)findViewById(0x7f090184)).setVisibility(8);
            ImageView imageview = (ImageView)findViewById(0x7f090183);
            imageview.setImageDrawable(getResourceDrawable(mContext, rtalertsalertdata.mMoodName));
            imageview.setVisibility(0);
        }
        if (rtalertsalertdata.mTimeOnRoute != null && !rtalertsalertdata.mTimeOnRoute.equals(""))
        {
            ((TextView)findViewById(0x7f090175)).setVisibility(0);
            ((TextView)findViewById(0x7f090175)).setText(rtalertsalertdata.mTimeOnRoute);
        } else
        {
            ((TextView)findViewById(0x7f090175)).setVisibility(8);
        }
        setTitle(rtalertsalertdata.mTitle);
        setIcon(rtalertsalertdata.mIcon);
        setLocation(rtalertsalertdata.mLocationStr);
        AppService.getNativeManager().getLanguageString(DisplayStrings.DS_CLOSE);
        setImage(rtalertsalertdata.mImageId, rtalertsalertdata.mVoiceId, rtalertsalertdata.mImageURL, rtalertsalertdata.mIcon);
        setDescription(rtalertsalertdata.mDescription);
        setAlertInfoStr(rtalertsalertdata.mReportedBy, rtalertsalertdata.mTimeRelative);
        setGroup(rtalertsalertdata.mGroupIcon);
        setCommentsButton(rtalertsalertdata.mNumComments, flag);
        setThumbsUpButton(rtalertsalertdata.mNumThumbsUp, flag1);
    }

    public Drawable getResourceDrawable(Context context, String s)
    {
        return MoodManager.getMoodDrawable(context, s);
    }

    public int getResourceId(Context context, String s)
    {
        String s1 = (new StringBuilder("drawable/")).append(s.replace("-", "_").toLowerCase()).toString();
        return context.getResources().getIdentifier(s1, null, context.getPackageName());
    }

    public void hide()
    {
        dismiss();
    }

    public boolean isShown()
    {
        return mIsShown;
    }

    public void onBackPressed()
    {
        mLayoutManager.callCloseAllPopups(1);
    }

    public void onImagePresses()
    {
        String s = mAlertData.mImageId;
        String s1 = mAlertData.mVoiceId;
        if (s != null && s.length() != 0 && mDrawableImage != null)
        {
            mLayoutManager.OpenImageView(mDrawableImage);
        }
        if (s1 != null && s1.length() != 0)
        {
            NativeManager.Post(new Runnable() {

                final AlertPopUp this$0;

                public void run()
                {
                    AppService.getNativeManager().DownloadAlertVoiceNTV(mAlertData.mID);
                }

            
            {
                this$0 = AlertPopUp.this;
                super();
            }
            });
        }
    }

    public void setCloseTimer(int i)
    {
    }

    public void show(RTAlertsAlertData rtalertsalertdata, int i, int j, String s)
    {
        if (mIsShown)
        {
            dismiss();
        }
        mX = rtalertsalertdata.mScreenX;
        mY = rtalertsalertdata.mScreenY;
        mAlertData = rtalertsalertdata;
        sImageUrl = s;
        findViewById(0x7f090188).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertPopUp this$0;

            public void onClick(View view)
            {
                RTAlertsAlertData rtalertsalertdata1 = mAlertData;
                rtalertsalertdata1.mNumThumbsUp = 1 + rtalertsalertdata1.mNumThumbsUp;
                setThumbsUpButton(mAlertData.mNumThumbsUp, false);
                NativeManager.Post(new Runnable() {

                    final _cls5 this$1;

                    public void run()
                    {
                        AppService.getNativeManager().sendThumbsUpNTV(mAlertData.mID);
                    }

            
            {
                this$1 = _cls5.this;
                super();
            }
                });
            }


            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
        findViewById(0x7f09018b).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertPopUp this$0;

            public void onClick(View view)
            {
                if (mAlertData.mNumComments > 0)
                {
                    RTAlertsComments.show(AppService.getMainActivity(), mAlertData);
                    return;
                } else
                {
                    RTAlertsNativeManager.getInstance().postCommentValidate(AppService.getMainActivity(), mAlertData.mID);
                    return;
                }
            }

            
            {
                this$0 = AlertPopUp.this;
                super();
            }
        });
        DisplayMetrics displaymetrics = new DisplayMetrics();
        ((WindowManager)mContext.getSystemService("window")).getDefaultDisplay().getMetrics(displaymetrics);
        if (displaymetrics.widthPixels > 680)
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020038);
            findViewById(0x7f090173).setPadding((int)(12F * displaymetrics.density), 0, (int)(12F * displaymetrics.density), 0);
        } else
        {
            findViewById(0x7f090173).setBackgroundResource(0x7f020035);
            findViewById(0x7f090173).setPadding(0, 0, 0, 0);
        }
        if (mContext.getResources().getConfiguration().orientation == 1 && NativeManager.getInstance().isNavigatingNTV())
        {
            RelativeLayout relativelayout = (RelativeLayout)findViewById(0x7f090173);
            android.widget.RelativeLayout.LayoutParams layoutparams = (android.widget.RelativeLayout.LayoutParams)relativelayout.getLayoutParams();
            NavBar navbar = NativeManager.getInstance().getNavBarManager().getNavBar();
            int k = 0;
            if (navbar != null)
            {
                k = navbar.getNavBarHeight();
            }
            layoutparams.setMargins(0, k, 0, 0);
            relativelayout.setLayoutParams(layoutparams);
        }
        mIsShown = true;
        fillPopUpData(rtalertsalertdata);
        mLayoutManager.addView(this);
        AnimationUtils.openAnimateFromPoint(this, mX, mY, PopUp.ANIMATION_DURATION);
    }



}
