// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.inbox;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.inbox:
//            InboxMessage

public class InboxMsgListAdapter extends BaseAdapter
{
    public static interface IOnCheckedListener
    {

        public abstract void onCheckClicked(int i, boolean flag);
    }

    private static class ItemHolder
    {

        CheckBox chkBox;
        RelativeLayout chkBoxContainer;
        RelativeLayout contentContainer;
        TextView preview;
        ProgressBar progress;
        View root;
        TextView time;
        TextView title;

        private ItemHolder()
        {
        }

        ItemHolder(ItemHolder itemholder)
        {
            this();
        }
    }


    private final int MIN_LIST_COUNT = 7;
    private final android.view.View.OnClickListener mCheckBoxContainerClickListener = new android.view.View.OnClickListener() {

        final InboxMsgListAdapter this$0;

        public void onClick(View view)
        {
            CheckBox checkbox = (CheckBox)view.getTag();
            boolean flag;
            if (checkbox.isChecked())
            {
                flag = false;
            } else
            {
                flag = true;
            }
            checkbox.setChecked(flag);
        }

            
            {
                this$0 = InboxMsgListAdapter.this;
                super();
            }
    };
    private final ArrayList mCheckedIds = new ArrayList();
    private final android.widget.CompoundButton.OnCheckedChangeListener mCheckedListener = new android.widget.CompoundButton.OnCheckedChangeListener() {

        final InboxMsgListAdapter this$0;

        public void onCheckedChanged(CompoundButton compoundbutton, boolean flag)
        {
            Integer integer;
            String s;
            integer = (Integer)compoundbutton.getTag();
            s = ((InboxMessage)mItems.get(integer.intValue())).id;
            if (!flag) goto _L2; else goto _L1
_L1:
            if (!mCheckedIds.contains(s))
            {
                mCheckedIds.add(s);
            }
_L4:
            if (mUserCheckedListener != null)
            {
                mUserCheckedListener.onCheckClicked(integer.intValue(), flag);
            }
            return;
_L2:
            if (mCheckedIds.contains(s))
            {
                mCheckedIds.remove(s);
            }
            if (true) goto _L4; else goto _L3
_L3:
        }

            
            {
                this$0 = InboxMsgListAdapter.this;
                super();
            }
    };
    private final ActivityBase mContext;
    private final ArrayList mItems;
    private boolean mLoading;
    private final IOnCheckedListener mUserCheckedListener;

    public InboxMsgListAdapter(ActivityBase activitybase, ArrayList arraylist, IOnCheckedListener ioncheckedlistener)
    {
        mLoading = false;
        mContext = activitybase;
        mItems = arraylist;
        mUserCheckedListener = ioncheckedlistener;
    }

    private void filterChecked()
    {
        if (mCheckedIds != null)
        {
            Iterator iterator = mCheckedIds.iterator();
            InboxMessage inboxmessage = new InboxMessage();
            while (iterator.hasNext()) 
            {
                inboxmessage.id = (String)iterator.next();
                if (!mItems.contains(inboxmessage))
                {
                    iterator.remove();
                }
            }
        }
    }

    public void checkAll()
    {
        int i = 0;
        clearChecked();
        do
        {
            if (i >= mItems.size())
            {
                refresh();
                return;
            }
            mCheckedIds.add(((InboxMessage)mItems.get(i)).id);
            i++;
        } while (true);
    }

    public void clearChecked()
    {
        mCheckedIds.clear();
        refresh();
    }

    public ArrayList getCheckedIds()
    {
        return mCheckedIds;
    }

    public int getCount()
    {
        ArrayList arraylist = mItems;
        int i = 0;
        if (arraylist != null)
        {
            i = mItems.size();
        }
        if (i > 7)
        {
            return i;
        } else
        {
            return 7;
        }
    }

    public Object getItem(int i)
    {
        if (i < mItems.size())
        {
            return mItems.get(i);
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        boolean flag = true;
        ItemHolder itemholder = null;
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f03006b, viewgroup, false);
        } else
        {
            itemholder = (ItemHolder)view.getTag();
        }
        if (itemholder == null)
        {
            itemholder = new ItemHolder(null);
            itemholder.title = (TextView)view.findViewById(0x7f090334);
            itemholder.preview = (TextView)view.findViewById(0x7f090335);
            itemholder.time = (TextView)view.findViewById(0x7f090331);
            itemholder.root = view.findViewById(0x7f09032e);
            itemholder.contentContainer = (RelativeLayout)view.findViewById(0x7f09032f);
            itemholder.chkBox = (CheckBox)view.findViewById(0x7f090333);
            itemholder.chkBoxContainer = (RelativeLayout)view.findViewById(0x7f090332);
            itemholder.progress = (ProgressBar)view.findViewById(0x7f090336);
            itemholder.progress.setIndeterminate(flag);
            itemholder.chkBoxContainer.setOnClickListener(mCheckBoxContainerClickListener);
            itemholder.chkBox.setOnCheckedChangeListener(mCheckedListener);
            view.setTag(itemholder);
        }
        if (i < mItems.size())
        {
            InboxMessage inboxmessage = (InboxMessage)mItems.get(i);
            itemholder.root.setVisibility(0);
            if (mLoading && i == -1 + mItems.size())
            {
                itemholder.contentContainer.setVisibility(8);
                itemholder.progress.setVisibility(0);
                itemholder.root.setBackgroundResource(0x7f080056);
                return view;
            }
            itemholder.contentContainer.setVisibility(0);
            itemholder.progress.setVisibility(8);
            itemholder.title.setText(inboxmessage.title);
            itemholder.preview.setText(inboxmessage.preview);
            itemholder.time.setText(inboxmessage.sentFString);
            if (inboxmessage.unread)
            {
                itemholder.title.setTextAppearance(mContext, 0x7f06005c);
                itemholder.root.setBackgroundResource(0x7f080022);
            } else
            {
                itemholder.title.setTextAppearance(mContext, 0x7f06005d);
                itemholder.root.setBackgroundResource(0x7f080056);
            }
            itemholder.chkBoxContainer.setTag(itemholder.chkBox);
            itemholder.chkBox.setTag(Integer.valueOf(i));
            if (mCheckedIds == null || !mCheckedIds.contains(inboxmessage.id))
            {
                flag = false;
            }
            itemholder.chkBox.setChecked(flag);
            return view;
        } else
        {
            itemholder.root.setVisibility(4);
            return view;
        }
    }

    public void prepare()
    {
        clearChecked();
    }

    public void refresh()
    {
        notifyDataSetChanged();
    }

    public void setLoading(boolean flag)
    {
        mLoading = flag;
    }



}
