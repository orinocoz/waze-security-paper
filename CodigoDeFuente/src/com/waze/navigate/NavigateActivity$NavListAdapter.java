// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ResManager;
import com.waze.utils.ImageRepository;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity, AddressItem

private class favoriteItems extends BaseAdapter
{

    private AddressItem favoriteItems[];
    final NavigateActivity this$0;

    public int getCount()
    {
        return Math.max(favoriteItems.length, 6);
    }

    public Object getItem(int i)
    {
        if (i < favoriteItems.length)
        {
            return favoriteItems[i];
        } else
        {
            return null;
        }
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        View view1;
        if (view == null)
        {
            view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
        }
        AddressItem addressitem = (AddressItem)getItem(i);
        view.setTag(0x7f09002c, addressitem);
        view.findViewById(0x7f0900e1).setVisibility(0);
        ImageView imageview = (ImageView)view.findViewById(0x7f0900be);
        ImageView imageview1 = (ImageView)view.findViewById(0x7f0900c0);
        FrameLayout framelayout = (FrameLayout)view.findViewById(0x7f0900bf);
        boolean flag;
        byte byte0;
        if (addressitem != null)
        {
            view.findViewById(0x7f0900c2).setVisibility(0);
            ((TextView)view.findViewById(0x7f0900c2)).setText(addressitem.getTitle());
            Integer integer;
            RelativeLayout relativelayout;
            if (addressitem.getSecondaryTitle().equals(""))
            {
                view.findViewById(0x7f0900c3).setVisibility(8);
            } else
            {
                view.findViewById(0x7f0900c3).setVisibility(0);
                if (addressitem.getType() != null && (addressitem.getType().intValue() == 2 || addressitem.getType().intValue() == 4 || addressitem.getType().intValue() == 12 || addressitem.getType().intValue() == 10 || addressitem.getType().intValue() == 9 && !addressitem.getIsValidate().booleanValue()))
                {
                    ((TextView)view.findViewById(0x7f0900c3)).setTextColor(AppService.getAppResources().getColor(0x7f08002d));
                } else
                {
                    ((TextView)view.findViewById(0x7f0900c3)).setTextColor(AppService.getAppResources().getColor(0x7f080032));
                }
                ((TextView)view.findViewById(0x7f0900c3)).setText(addressitem.getSecondaryTitle());
            }
            view.findViewById(0x7f0900c4).setVisibility(8);
            view.findViewById(0x7f0900c6).setVisibility(8);
            imageview.setTag(null);
            imageview1.setTag(null);
            integer = addressitem.getImage();
            framelayout.setVisibility(8);
            if (addressitem.getType().intValue() == 13)
            {
                imageview.setVisibility(8);
                String s = addressitem.mImageURL;
                framelayout.setVisibility(0);
                imageview1.setImageResource(0x7f02011b);
                if (s != null)
                {
                    ImageRepository.instance.getImage(s, true, imageview1, null, NavigateActivity.this);
                }
            } else
            if (addressitem.hasIcon())
            {
                imageview.setImageDrawable(ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(addressitem.getIcon()))).append(".bin").toString()));
                imageview.setVisibility(0);
            } else
            if (integer != null)
            {
                imageview.setImageResource(integer.intValue());
                imageview.setVisibility(0);
            } else
            {
                imageview.setVisibility(8);
            }
            relativelayout = (RelativeLayout)view.findViewById(0x7f0900d9);
            relativelayout.setTag(0x7f09002c, addressitem);
            if (addressitem.getMoreAction().booleanValue())
            {
                relativelayout.setVisibility(0);
            } else
            {
                relativelayout.setVisibility(8);
            }
        } else
        {
            view.findViewById(0x7f0900c2).setVisibility(8);
            view.findViewById(0x7f0900c3).setVisibility(8);
            view.findViewById(0x7f0900c4).setVisibility(8);
            view.findViewById(0x7f0900c6).setVisibility(8);
            imageview.setVisibility(8);
            imageview.setVisibility(8);
            view.findViewById(0x7f0900d9).setVisibility(8);
        }
        view1 = view.findViewById(0x7f09002c);
        if (i == 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        if (i == -1 + getCount())
        {
            byte0 = 2;
        } else
        {
            byte0 = 0;
        }
        flag | byte0;
        JVM INSTR tableswitch 0 3: default 348
    //                   0 690
    //                   1 700
    //                   2 710
    //                   3 720;
           goto _L1 _L2 _L3 _L4 _L5
_L1:
        view1.setPadding(0, 0, 0, 0);
        return view;
_L2:
        view1.setBackgroundResource(0x7f02021f);
        continue; /* Loop/switch isn't completed */
_L3:
        view1.setBackgroundResource(0x7f02021f);
        continue; /* Loop/switch isn't completed */
_L4:
        view1.setBackgroundResource(0x7f02021f);
        continue; /* Loop/switch isn't completed */
_L5:
        view1.setBackgroundResource(0x7f020220);
        if (true) goto _L1; else goto _L6
_L6:
    }

    public (Context context, AddressItem aaddressitem[])
    {
        this$0 = NavigateActivity.this;
        super();
        favoriteItems = aaddressitem;
    }
}
