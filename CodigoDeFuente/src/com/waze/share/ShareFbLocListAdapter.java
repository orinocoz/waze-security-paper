// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import java.util.ArrayList;
import java.util.Collections;

// Referenced classes of package com.waze.share:
//            ShareFbLocation, ShareNativeManager

public class ShareFbLocListAdapter extends BaseAdapter
{
    private static class ItemHolder
    {

        TextView address;
        TextView distance;
        TextView name;

        private ItemHolder()
        {
        }

        ItemHolder(ItemHolder itemholder)
        {
            this();
        }
    }


    private final ActivityBase mContext;
    private ArrayList mItems;

    public ShareFbLocListAdapter(ActivityBase activitybase)
    {
        mContext = activitybase;
    }

    public static View getView(ActivityBase activitybase, View view, ShareFbLocation sharefblocation)
    {
        if (view == null)
        {
            return null;
        }
        ItemHolder itemholder = (ItemHolder)view.getTag();
        if (itemholder == null)
        {
            itemholder = new ItemHolder(null);
            itemholder.name = (TextView)view.findViewById(0x7f0906b6);
            itemholder.address = (TextView)view.findViewById(0x7f0906b7);
            itemholder.distance = (TextView)view.findViewById(0x7f0906b8);
            view.setTag(itemholder);
        }
        NativeManager nativemanager = NativeManager.getInstance();
        String s = nativemanager.getLanguageString(DisplayStrings.DS_AWAY);
        itemholder.name.setText(sharefblocation.name);
        itemholder.address.setText(sharefblocation.address);
        String s1;
        String s2;
        if (ShareNativeManager.getInstance().isMetricUnits())
        {
            s1 = nativemanager.getLanguageString(DisplayStrings.DS_KM);
        } else
        {
            s1 = nativemanager.getLanguageString(DisplayStrings.DS_MILE);
        }
        s2 = (new StringBuilder(String.valueOf(sharefblocation.distance))).append(" ").append(s1).append(" ").append(s).toString();
        itemholder.distance.setText(s2);
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
        ShareFbLocation sharefblocation = (ShareFbLocation)mItems.get(i);
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f030103, viewgroup, false);
        }
        return getView(mContext, view, sharefblocation);
    }

    public void updateList(ArrayList arraylist, int i)
    {
        mItems = arraylist;
        Collections.sort(mItems);
        int j = i;
        do
        {
            if (j >= mItems.size())
            {
                notifyDataSetChanged();
                return;
            }
            mItems.remove(j);
            j++;
        } while (true);
    }
}
