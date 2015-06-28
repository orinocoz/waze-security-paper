// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.list;

import android.app.Activity;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ResManager;
import java.util.List;

public class ListMenuAdapter extends BaseAdapter
{
    public static class RowData
    {

        private Drawable mArrowImage;
        private String mLabel;
        private int mLabelFontSize;
        private Drawable mLeftImage;
        private Drawable mRightImage;
        private int mRowHeight;
        private Object mValue;

        public String getLabel()
        {
            return mLabel;
        }

        public int getLabelFontSize()
        {
            return mLabelFontSize;
        }

        public int getRowHeight()
        {
            return mRowHeight;
        }

        public Object getValue()
        {
            return mValue;
        }

        public void setArrowImage(String s)
        {
            mArrowImage = ResManager.GetSkinDrawable(s);
        }

        public void setLabel(String s)
        {
            mLabel = s;
        }

        public void setLabelFontSize(int i)
        {
            mLabelFontSize = i;
        }

        public void setLeftImage(String s)
        {
            mLeftImage = ResManager.GetSkinDrawable(s);
        }

        public void setRightImage(String s)
        {
            mRightImage = ResManager.GetSkinDrawable(s);
        }

        public void setRowHeight(int i)
        {
            mRowHeight = i;
        }

        public void setValue(Object obj)
        {
            mValue = obj;
        }




        public RowData(String s, Object obj, String s1, String s2, String s3)
        {
            setLabel(s);
            setValue(obj);
            setLeftImage(s1);
            setRightImage(s2);
            setArrowImage(s3);
        }
    }

    protected static class RowHolder
    {

        ImageView arrow;
        TextView label;
        ImageView leftImage;
        ImageView rightImage;

        protected RowHolder()
        {
        }
    }


    public static final int LIST_MENU_ADAPTER_LABEL_FONT_SIZE_DEFAULT;
    public static final int LIST_MENU_ADAPTER_ROW_HEIGHT_DEFAULT;
    private final Activity mContext;
    private int mCount;
    private List mRowData;

    public ListMenuAdapter(Activity activity, List list)
        throws IllegalArgumentException
    {
        mRowData = null;
        if (activity == null)
        {
            throw new IllegalArgumentException("ListMenuAdapter cannot be created without context");
        } else
        {
            mCount = list.size();
            mRowData = list;
            mContext = activity;
            return;
        }
    }

    public int getCount()
    {
        return mCount;
    }

    public Object getItem(int i)
    {
        return mRowData.get(i);
    }

    public long getItemId(int i)
    {
        return 0L;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        RowData rowdata = (RowData)mRowData.get(i);
        RowHolder rowholder;
        if (view == null)
        {
            view = mContext.getLayoutInflater().inflate(0x7f030078, null, true);
            rowholder = new RowHolder();
            rowholder.leftImage = (ImageView)view.findViewById(0x7f090378);
            rowholder.label = (TextView)view.findViewById(0x7f090379);
            rowholder.rightImage = (ImageView)view.findViewById(0x7f09037a);
            rowholder.arrow = (ImageView)view.findViewById(0x7f09037b);
            view.setTag(rowholder);
        } else
        {
            rowholder = (RowHolder)view.getTag();
        }
        rowholder.label.setText(rowdata.getLabel());
        if (rowdata.mLeftImage != null)
        {
            rowholder.leftImage.setImageDrawable(rowdata.mLeftImage);
            rowholder.leftImage.setVisibility(0);
        } else
        {
            rowholder.leftImage.setVisibility(8);
        }
        if (rowdata.mRightImage != null)
        {
            rowholder.rightImage.setImageDrawable(rowdata.mRightImage);
            rowholder.rightImage.setVisibility(0);
        } else
        {
            rowholder.rightImage.setVisibility(8);
        }
        if (rowdata.mArrowImage != null)
        {
            rowholder.arrow.setImageDrawable(rowdata.mArrowImage);
            rowholder.arrow.setVisibility(0);
        } else
        {
            rowholder.arrow.setVisibility(8);
        }
        rowdata.getRowHeight();
        if (rowdata.getLabelFontSize() != 0)
        {
            rowholder.label.setTextSize(1, rowdata.getLabelFontSize());
        }
        return view;
    }

    public void updateRowData(List list)
    {
        mCount = list.size();
        mRowData = list;
    }
}
