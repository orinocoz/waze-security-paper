// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.content.Intent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ResManager;
import java.util.ArrayList;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsAlertData, RTAlertsGroupActivity

public class RTAlertsListAdapter extends BaseAdapter
{
    private static class ItemHolder
    {

        TextView alertBy;
        TextView alertDesc;
        TextView alertLoc;
        TextView alertType;
        TextView comments;
        View container;
        TextView distance;
        TextView distanceNote;
        TextView distanceUnit;
        View groupContainer;
        TextView groupDesc;
        ImageView groupIcon;
        ImageView icon;
        TextView thanks;

        private ItemHolder()
        {
        }

        ItemHolder(ItemHolder itemholder)
        {
            this();
        }
    }


    private final Activity mContext;
    private ArrayList mItems;

    public RTAlertsListAdapter(Activity activity)
    {
        mContext = activity;
    }

    public static View getView(final Activity context, View view, final RTAlertsAlertData alertData)
    {
        RTAlertsNativeManager rtalertsnativemanager = RTAlertsNativeManager.getInstance();
        ItemHolder itemholder = (ItemHolder)view.getTag();
        if (itemholder == null)
        {
            itemholder = new ItemHolder(null);
            itemholder.container = view.findViewById(0x7f0905ca);
            itemholder.icon = (ImageView)view.findViewById(0x7f0905d7);
            itemholder.alertType = (TextView)view.findViewById(0x7f0905cd);
            itemholder.alertLoc = (TextView)view.findViewById(0x7f0905ce);
            itemholder.alertBy = (TextView)view.findViewById(0x7f0905d0);
            itemholder.groupIcon = (ImageView)view.findViewById(0x7f0905d2);
            itemholder.groupDesc = (TextView)view.findViewById(0x7f0905d3);
            itemholder.groupContainer = view.findViewById(0x7f0905d1);
            itemholder.comments = (TextView)view.findViewById(0x7f0905d5);
            itemholder.thanks = (TextView)view.findViewById(0x7f0905d6);
            itemholder.alertDesc = (TextView)view.findViewById(0x7f0905cf);
            itemholder.distance = (TextView)view.findViewById(0x7f0905d8);
            itemholder.distanceUnit = (TextView)view.findViewById(0x7f0905d9);
            itemholder.distanceNote = (TextView)view.findViewById(0x7f0905da);
            view.setTag(itemholder);
        }
        int i = ResManager.GetDrawableId(alertData.mIcon.toLowerCase());
        if (i > 0)
        {
            itemholder.icon.setImageResource(i);
        }
        itemholder.container.setPadding(0, 0, 0, 0);
        itemholder.alertType.setText(alertData.mTitle);
        itemholder.alertLoc.setText(alertData.mLocationStr);
        if (alertData.mDescription == null || alertData.mDescription.length() == 0)
        {
            itemholder.alertDesc.setVisibility(8);
        } else
        {
            itemholder.alertDesc.setVisibility(0);
            itemholder.alertDesc.setText(alertData.mDescription);
        }
        itemholder.alertBy.setText((new StringBuilder(String.valueOf(alertData.mReportedBy))).append(" | ").append(alertData.mTimeRelative).toString());
        if (alertData.mGroupName != null)
        {
            itemholder.groupContainer.setVisibility(0);
            itemholder.groupContainer.setOnClickListener(new android.view.View.OnClickListener() {

                private final RTAlertsAlertData val$alertData;
                private final Activity val$context;

                public void onClick(View view1)
                {
                    Intent intent = new Intent(context, com/waze/rtalerts/RTAlertsGroupActivity);
                    intent.putExtra("url", alertData.mGroupUrl);
                    context.startActivityForResult(intent, 32773);
                }

            
            {
                context = activity;
                alertData = rtalertsalertdata;
                super();
            }
            });
            itemholder.groupIcon.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(alertData.mGroupIcon))).append(".bin").toString()));
            itemholder.groupDesc.setText(alertData.mGroupName);
        } else
        {
            itemholder.groupContainer.setVisibility(8);
        }
        itemholder.comments.setText((new StringBuilder(String.valueOf(rtalertsnativemanager.getLangStr(0x7f070187)))).append(": ").append(alertData.mNumComments).toString());
        itemholder.thanks.setText((new StringBuilder(" ")).append(rtalertsnativemanager.getLangStr(0x7f070188)).append(": ").append(alertData.mNumThumbsUp).toString());
        itemholder.distance.setText(alertData.mDistanceStr);
        itemholder.distanceUnit.setText(alertData.mUnit);
        itemholder.distanceNote.setText(rtalertsnativemanager.getLangStr(0x7f070189));
        return view;
    }

    public int getCount()
    {
        if (mItems == null)
        {
            return 0;
        } else
        {
            return mItems.size();
        }
    }

    public Object getItem(int i)
    {
        return mItems.get(i);
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        RTAlertsAlertData rtalertsalertdata = (RTAlertsAlertData)mItems.get(i);
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f0300da, null, true);
        }
        return getView(mContext, view, rtalertsalertdata);
    }

    public void updateList(ArrayList arraylist)
    {
        mItems = arraylist;
    }
}
