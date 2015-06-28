// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.graphics.Bitmap;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.CheckedTextView;
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.ifs.ui.ActivityBase;
import com.waze.ifs.ui.CheckedRelativeLayout;
import com.waze.utils.ImageRepository;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbFriend

public class ShareFbWithListAdapter extends BaseAdapter
{
    private static class ItemHolder
    {

        ImageView image;
        CheckedTextView name;
        CheckedRelativeLayout root;

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

    public ShareFbWithListAdapter(ActivityBase activitybase)
    {
        mContext = activitybase;
    }

    public static View getView(ActivityBase activitybase, View view, ShareFbFriend sharefbfriend)
    {
        if (view == null)
        {
            return null;
        }
        ItemHolder itemholder = (ItemHolder)view.getTag();
        if (itemholder == null)
        {
            itemholder = new ItemHolder(null);
            itemholder.image = (ImageView)view.findViewById(0x7f0906bf);
            itemholder.name = (CheckedTextView)view.findViewById(0x7f0906c0);
            itemholder.root = (CheckedRelativeLayout)view.findViewById(0x7f0906be);
            view.setTag(itemholder);
        }
        itemholder.name.setText(sharefbfriend.name);
        com.waze.utils.ImageRepository.ImageRepositoryListener imagerepositorylistener = new com.waze.utils.ImageRepository.ImageRepositoryListener() {

            private final ImageView val$imageView;

            public void onImageRetrieved(Bitmap bitmap)
            {
                AppService.Post(bitmap. new Runnable() {

                    final _cls1 this$1;
                    private final Bitmap val$bitmap;
                    private final ImageView val$imageView;

                    public void run()
                    {
                        imageView.setImageBitmap(bitmap);
                    }

            
            {
                this$1 = final__pcls1;
                imageView = imageview;
                bitmap = Bitmap.this;
                super();
            }
                });
            }

            
            {
                imageView = imageview;
                super();
            }
        };
        ImageRepository.instance.getImage(sharefbfriend.imageUrl, imagerepositorylistener);
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
        ShareFbFriend sharefbfriend = (ShareFbFriend)mItems.get(i);
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f030106, viewgroup, false);
        }
        return getView(mContext, view, sharefbfriend);
    }

    public void setChecked(int i, boolean flag)
    {
    }

    public void toggleChecked(int i)
    {
    }

    public void updateList(ArrayList arraylist)
    {
        mItems = arraylist;
        notifyDataSetChanged();
    }
}
