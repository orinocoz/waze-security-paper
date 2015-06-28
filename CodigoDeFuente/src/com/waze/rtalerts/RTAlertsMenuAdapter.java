// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ResManager;
import java.util.ArrayList;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsMenuData

public class RTAlertsMenuAdapter extends BaseAdapter
{
    public static final class RowData
    {

        public int mCounter;
        public int mIconResId;
        public int mId;
        public String mLabel;

        public RowData(int i, String s, String s1, int j)
        {
            mId = i;
            mIconResId = ResManager.GetDrawableId(s.toLowerCase());
            mLabel = s1;
            mCounter = j;
        }
    }

    private static class RowHolder
    {

        RelativeLayout container;
        TextView counter;
        ImageView icon;
        TextView label;

        private RowHolder()
        {
        }

        RowHolder(RowHolder rowholder)
        {
            this();
        }
    }


    private final Activity mContext;
    private final ArrayList mRows = new ArrayList();

    public RTAlertsMenuAdapter(Activity activity)
    {
        mContext = activity;
    }

    public int getCount()
    {
        return mRows.size();
    }

    public Object getItem(int i)
    {
        return mRows.get(i);
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (mRows.size() == 0)
        {
            return view;
        }
        RowData rowdata = (RowData)mRows.get(i);
        RowHolder rowholder;
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f0300dc, null, true);
            rowholder = new RowHolder(null);
            rowholder.container = (RelativeLayout)view.findViewById(0x7f0905e0);
            rowholder.icon = (ImageView)view.findViewById(0x7f0905e1);
            rowholder.label = (TextView)view.findViewById(0x7f0905e2);
            rowholder.counter = (TextView)view.findViewById(0x7f0905e3);
            view.setTag(rowholder);
        } else
        {
            rowholder = (RowHolder)view.getTag();
        }
        rowholder.icon.setImageResource(rowdata.mIconResId);
        rowholder.label.setText(rowdata.mLabel);
        rowholder.counter.setText(Integer.toString(rowdata.mCounter));
        if (mRows.size() == 1)
        {
            rowholder.container.setBackgroundResource(0x7f020225);
        } else
        if (i == 0)
        {
            rowholder.container.setBackgroundResource(0x7f020226);
        } else
        if (i == -1 + mRows.size())
        {
            rowholder.container.setBackgroundResource(0x7f020224);
        } else
        {
            rowholder.container.setBackgroundResource(0x7f020224);
        }
        rowholder.container.setPadding(0, 0, 0, 0);
        return view;
    }

    public void updateList(RTAlertsMenuData artalertsmenudata[])
    {
        mRows.clear();
        int i = 0;
        do
        {
            if (i >= artalertsmenudata.length)
            {
                return;
            }
            if (NativeManager.getInstance().isEnforcementPoliceEnabledNTV() != 1)
            {
                if (2 != artalertsmenudata[i].mId)
                {
                    RowData rowdata1 = new RowData(artalertsmenudata[i].mId, artalertsmenudata[i].mIcon, artalertsmenudata[i].mLabel, artalertsmenudata[i].mCounter);
                    mRows.add(rowdata1);
                }
            } else
            {
                RowData rowdata = new RowData(artalertsmenudata[i].mId, artalertsmenudata[i].mIcon, artalertsmenudata[i].mLabel, artalertsmenudata[i].mCounter);
                mRows.add(rowdata);
            }
            i++;
        } while (true);
    }
}
