// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.TextView;
import com.waze.ResManager;
import com.waze.settings.SettingsValue;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

public static class inflater extends BaseAdapter
{

    private LayoutInflater inflater;
    private boolean mBoldLastItem;
    private SettingsValue mSelectedItem;
    private int mSelectedPos;
    private boolean mShowLastItem;
    protected SettingsValue values[];

    public int getCount()
    {
        if (values == null)
        {
            return 0;
        }
        if (mShowLastItem)
        {
            return values.length;
        } else
        {
            return -1 + values.length;
        }
    }

    public Object getItem(int i)
    {
        if (values == null)
        {
            return null;
        } else
        {
            return values[i];
        }
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public SettingsValue getSelectedItem()
    {
        return mSelectedItem;
    }

    public int getSelectedPosition()
    {
        return mSelectedPos;
    }

    public SettingsValue[] getValues()
    {
        return values;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        if (view == null)
        {
            view = inflater.inflate(0x7f03009c, viewgroup, false);
        }
        SettingsValue settingsvalue = values[i];
        int j = -1 + values.length;
        TextView textview = (TextView)view.findViewById(0x7f0904ca);
        TextView textview1 = (TextView)view.findViewById(0x7f0904cb);
        ImageView imageview = (ImageView)view.findViewById(0x7f0904c8);
        ImageView imageview1;
        int k;
        View view1;
        if (imageview != null && settingsvalue != null)
        {
            if (settingsvalue.icon != null)
            {
                imageview.setImageDrawable(settingsvalue.icon);
                imageview.setVisibility(0);
            } else
            if (settingsvalue.iconName != null)
            {
                android.graphics.drawable.Drawable drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(settingsvalue.iconName))).append(".bin").toString());
                if (drawable != null)
                {
                    imageview.setImageDrawable(drawable);
                } else
                {
                    imageview.setVisibility(8);
                }
            } else
            {
                imageview.setVisibility(8);
            }
        }
        textview.setText(settingsvalue.display);
        if (mBoldLastItem && i == j)
        {
            textview.setTypeface(null, 1);
        } else
        {
            textview.setTypeface(null, 0);
        }
        if (settingsvalue.display2 == null || settingsvalue.display2.length() == 0)
        {
            textview1.setVisibility(8);
        } else
        {
            textview1.setText(settingsvalue.display2);
        }
        if (settingsvalue.isSelected)
        {
            mSelectedItem = settingsvalue;
            mSelectedPos = i;
        }
        imageview1 = (ImageView)view.findViewById(0x7f0904cc);
        if (settingsvalue.isSelected)
        {
            k = 0;
        } else
        {
            k = 4;
        }
        imageview1.setVisibility(k);
        if (!mShowLastItem)
        {
            j--;
        }
        view1 = view.findViewById(0x7f0904c7);
        if (i == 0)
        {
            if (i == j)
            {
                view1.setBackgroundResource(0x7f020225);
            } else
            {
                view1.setBackgroundResource(0x7f020226);
            }
        } else
        if (i == j)
        {
            view1.setBackgroundResource(0x7f020223);
        } else
        {
            view1.setBackgroundResource(0x7f020224);
        }
        view1.setPadding(0, 0, 0, 0);
        return view;
    }

    public void setBoldLastItem(boolean flag)
    {
        mBoldLastItem = flag;
    }

    public void setShowLastItem(boolean flag)
    {
        mShowLastItem = flag;
    }

    public void setValues(SettingsValue asettingsvalue[])
    {
        values = asettingsvalue;
        notifyDataSetChanged();
    }

    public (Context context)
    {
        mSelectedItem = null;
        mSelectedPos = -1;
        mShowLastItem = true;
        mBoldLastItem = false;
        inflater = LayoutInflater.from(context);
    }
}
