// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ResManager;
import java.nio.ByteBuffer;
import java.text.SimpleDateFormat;
import java.util.Calendar;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsCommentData

public class RTAlertsCommentsAdapter extends BaseAdapter
{

    private final Activity mContext;
    private RTAlertsCommentData mItems[];

    public RTAlertsCommentsAdapter(Activity activity)
    {
        mItems = null;
        mContext = activity;
    }

    public int getCount()
    {
        if (mItems == null)
        {
            return 0;
        } else
        {
            return mItems.length;
        }
    }

    public Object getItem(int i)
    {
        if (mItems == null)
        {
            return null;
        } else
        {
            return mItems[i];
        }
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        RTAlertsCommentData rtalertscommentdata;
        View view1;
        ImageView imageview;
        TextView textview;
        TextView textview1;
        TextView textview2;
        if (mItems.length == 0)
        {
            return view;
        }
        rtalertscommentdata = mItems[i];
        view1 = mContext.getLayoutInflater().inflate(0x7f0300d8, null, true);
        imageview = (ImageView)view1.findViewById(0x7f0905c3);
        textview = (TextView)view1.findViewById(0x7f0905c5);
        textview1 = (TextView)view1.findViewById(0x7f0905c4);
        textview2 = (TextView)view1.findViewById(0x7f0905c6);
        view1.setId(rtalertscommentdata.mCommentID);
        if (rtalertscommentdata.mFacebookImage == null) goto _L2; else goto _L1
_L1:
        updateFbImage(view1, rtalertscommentdata.mFacebookImage, rtalertscommentdata.mFacebookImageWidth, rtalertscommentdata.mFacebookImageHeight);
_L4:
        textview.setText(rtalertscommentdata.mDescription);
        textview1.setText(rtalertscommentdata.mPostedBy);
        Calendar calendar = Calendar.getInstance();
        calendar.setTimeInMillis(1000L * rtalertscommentdata.m64Time);
        textview2.setText((new SimpleDateFormat("HH:mm")).format(calendar.getTime()));
        return view1;
_L2:
        if (rtalertscommentdata.mIcon != null)
        {
            imageview.setImageDrawable(ResManager.GetSkinDrawable(rtalertscommentdata.mIcon));
        }
        if (true) goto _L4; else goto _L3
_L3:
    }

    public void update(RTAlertsCommentData artalertscommentdata[])
    {
        mItems = artalertscommentdata;
    }

    public void updateFbImage(View view, byte abyte0[], int i, int j)
    {
        ImageView imageview = (ImageView)view.findViewById(0x7f0905c3);
        Bitmap bitmap = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        bitmap.copyPixelsFromBuffer(ByteBuffer.wrap(abyte0));
        imageview.setImageBitmap(bitmap);
    }
}
