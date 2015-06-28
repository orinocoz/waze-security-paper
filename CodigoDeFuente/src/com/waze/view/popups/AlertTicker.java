// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.ImageView;
import com.waze.LayoutManager;
import com.waze.MoodManager;
import com.waze.NativeManager;
import com.waze.rtalerts.RTAlertsThumbsUpData;
import com.waze.user.AlertTickerData;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;

// Referenced classes of package com.waze.view.popups:
//            PopUp

public class AlertTicker extends PopUp
{

    private static AlertTicker mInstance;
    private static LayoutManager mLayoutManager;
    private static RTAlertsThumbsUpData mThumbsUpData;
    private boolean bIsBeep;
    private Context mContext;
    private ArrayList mData;
    private int mIndex;
    private boolean mIsShown;
    private String mMoodName;
    private Runnable mRunnable;
    private String mUserImageUrl;
    private int nCount;

    private AlertTicker(Context context, LayoutManager layoutmanager)
    {
        super(context, layoutmanager);
        mUserImageUrl = null;
        mMoodName = null;
        nCount = 0;
        mData = new ArrayList();
        mContext = null;
        mIsShown = false;
        bIsBeep = false;
        mContext = context;
        mLayoutManager = layoutmanager;
    }

    private void SetImage()
    {
        if (mUserImageUrl != null)
        {
            final ImageView UserSmallImg = (ImageView)findViewById(0x7f090192);
            UserSmallImg.setVisibility(0);
            ImageRepository.instance.getImage(mUserImageUrl, new com.waze.utils.ImageRepository.ImageRepositoryListener() {

                final AlertTicker this$0;
                private final ImageView val$UserSmallImg;

                public void onImageRetrieved(Bitmap bitmap)
                {
                    post(bitmap. new Runnable() {

                        final _cls1 this$1;
                        private final ImageView val$UserSmallImg;
                        private final Bitmap val$bitmap;

                        public void run()
                        {
                            UserSmallImg.setImageBitmap(bitmap);
                        }

            
            {
                this$1 = final__pcls1;
                UserSmallImg = imageview;
                bitmap = Bitmap.this;
                super();
            }
                    });
                }

            
            {
                this$0 = AlertTicker.this;
                UserSmallImg = imageview;
                super();
            }
            });
            return;
        } else
        {
            ((ImageView)findViewById(0x7f090192)).setVisibility(8);
            ImageView imageview = (ImageView)findViewById(0x7f090191);
            imageview.setImageDrawable(getResourceDrawable(mContext, mMoodName));
            imageview.setVisibility(0);
            return;
        }
    }

    private void close()
    {
        dismiss();
    }

    public static AlertTicker getInstance(Context context, LayoutManager layoutmanager)
    {
        if (mInstance == null)
        {
            mInstance = new AlertTicker(context, layoutmanager);
            mInstance.init();
        }
        return mInstance;
    }

    private void init()
    {
        ((LayoutInflater)getContext().getSystemService("layout_inflater")).inflate(0x7f03001a, this);
    }

    public void ChangeImage(boolean flag)
    {
        if (flag)
        {
            findViewById(0x7f09018f).setBackgroundResource(0x7f0203ae);
            findViewById(0x7f09018f).setPadding(0, 0, 0, 0);
            return;
        } else
        {
            findViewById(0x7f09018f).setBackgroundResource(0x7f0203af);
            findViewById(0x7f09018f).setPadding(0, 0, 0, 0);
            return;
        }
    }

    public boolean IsShown()
    {
        return mIsShown;
    }

    public void Refresh()
    {
        if (nCount > 0)
        {
            AlertTickerData alerttickerdata = (AlertTickerData)mData.get(0);
            mUserImageUrl = alerttickerdata.mImage;
            mMoodName = alerttickerdata.mMood;
            int i = alerttickerdata.mType;
            if (i == 0)
            {
                bIsBeep = true;
                ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ab);
            } else
            if (i == 1)
            {
                bIsBeep = false;
                ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ac);
            } else
            if (i == 2)
            {
                bIsBeep = false;
                ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ae);
            } else
            if (i == 3)
            {
                bIsBeep = false;
                ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ae);
            }
            if (nCount == 1)
            {
                findViewById(0x7f09018f).setBackgroundResource(0x7f0203af);
                findViewById(0x7f09018f).setPadding(0, 0, 0, 0);
            } else
            {
                findViewById(0x7f09018f).setBackgroundResource(0x7f0203ae);
                findViewById(0x7f09018f).setPadding(0, 0, 0, 0);
            }
            SetImage();
            return;
        } else
        {
            dismiss();
            return;
        }
    }

    public void RemoveAlertTicker(int i)
    {
        if (i < nCount)
        {
            mData.remove(i);
            nCount = -1 + nCount;
        }
    }

    public void dismiss()
    {
        mIsShown = false;
        mLayoutManager.dismiss(this);
        mData.clear();
        nCount = 0;
        if (bIsBeep)
        {
            NativeManager.getInstance().BeepClosed(mIndex);
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
            close();
        }
    }

    public void onBackPressed()
    {
        close();
    }

    public void show(int i, String s, String s1, int j)
    {
        nCount = 1 + nCount;
        AlertTickerData alerttickerdata = new AlertTickerData();
        alerttickerdata.mType = i;
        alerttickerdata.mImage = s;
        alerttickerdata.mMood = s1;
        alerttickerdata.mIndex = j;
        mData.add(alerttickerdata);
        if (mIsShown)
        {
            return;
        }
        mIsShown = true;
        mUserImageUrl = s;
        mMoodName = s1;
        mIndex = j;
        if (i != 0) goto _L2; else goto _L1
_L1:
        bIsBeep = true;
        ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ab);
_L4:
        SetImage();
        findViewById(0x7f09018f).setBackgroundResource(0x7f0203af);
        findViewById(0x7f09018f).setPadding(0, 0, 0, 0);
        findViewById(0x7f09018f).setOnClickListener(new android.view.View.OnClickListener() {

            final AlertTicker this$0;

            public void onClick(View view)
            {
                int ai[] = new int[nCount];
                int ai1[] = new int[nCount];
                int k = 0;
                do
                {
                    if (k >= nCount)
                    {
                        NativeManager.getInstance().OpenTickersPopups(ai, ai1);
                        return;
                    }
                    AlertTickerData alerttickerdata1 = (AlertTickerData)mData.get(k);
                    ai[k] = alerttickerdata1.mType;
                    ai1[k] = alerttickerdata1.mIndex;
                    k++;
                } while (true);
            }

            
            {
                this$0 = AlertTicker.this;
                super();
            }
        });
        mLayoutManager.addView(this);
        return;
_L2:
        if (i == 1)
        {
            bIsBeep = false;
            ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ac);
        } else
        if (i == 2)
        {
            bIsBeep = false;
            ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ae);
        } else
        if (i == 3)
        {
            bIsBeep = false;
            ((ImageView)findViewById(0x7f090193)).setImageResource(0x7f0200ae);
        }
        if (true) goto _L4; else goto _L3
_L3:
    }


}
