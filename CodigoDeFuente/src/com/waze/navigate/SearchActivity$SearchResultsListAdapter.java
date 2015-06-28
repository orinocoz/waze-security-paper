// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.res.Resources;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.waze.NativeManager;
import com.waze.ResManager;
import com.waze.ResourceDownloadType;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.navigate:
//            AddressItem, DriveToNativeManager, SearchActivity

private class isAddressItemSeenAlready extends BaseAdapter
{

    private boolean isAddressItemSeenAlready[];
    private AddressItem searchResultItems[];
    final SearchActivity this$0;

    public int getCount()
    {
        if (searchResultItems == null)
        {
            return 0;
        } else
        {
            return searchResultItems.length;
        }
    }

    public Object getItem(int i)
    {
        return searchResultItems[i];
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        AddressItem addressitem;
        DriveToNativeManager drivetonativemanager;
        addressitem = (AddressItem)getItem(i);
        drivetonativemanager = DriveToNativeManager.getInstance();
        if (view == null)
        {
            view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, viewgroup, false);
        }
        view.setTag(0x7f09002c, addressitem);
        Integer integer = Integer.valueOf(i);
        view.setTag(integer);
        view.findViewById(0x7f0900e2).setVisibility(0);
        view.findViewById(0x7f0900c3).setVisibility(8);
        view.findViewById(0x7f0900be).setVisibility(8);
        if (addressitem == null) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        View view2;
        drivetonativemanager.notifyAddressItemShown(addressitem.index, isAddressItemSeenAlready[i]);
        isAddressItemSeenAlready[i] = true;
        TextView textview = (TextView)view.findViewById(0x7f0900c2);
        String s = addressitem.getTitle();
        if (addressitem.getCategory().intValue() == 4)
        {
            s = SearchActivity.access$0(SearchActivity.this).getLanguageString(addressitem.getTitle());
        }
        TextView textview1;
        android.graphics.drawable.Drawable drawable;
        boolean flag;
        TextView textview2;
        View view1;
        if (s.isEmpty())
        {
            textview.setVisibility(8);
        } else
        {
            textview.setVisibility(0);
            textview.setText(s);
            if (addressitem.getCategory().intValue() != 4)
            {
                ((LinearLayout)view.findViewById(0x7f0900bd)).setGravity(19);
            } else
            {
                ((LinearLayout)view.findViewById(0x7f0900bd)).setGravity(17);
            }
        }
        textview1 = (TextView)view.findViewById(0x7f0900c4);
        if (addressitem.getAddress().equals(""))
        {
            textview1.setVisibility(8);
        } else
        {
            textview1.setVisibility(0);
            textview1.setText(addressitem.getAddress());
        }
        view.findViewById(0x7f0900ba).setVisibility(0);
        drawable = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(addressitem.getIcon()))).append(".bin").toString());
        ((ImageView)view.findViewById(0x7f0900bb)).setImageDrawable(drawable);
        if (addressitem.sponsored)
        {
            view.findViewById(0x7f0900bc).setVisibility(0);
            SearchActivity.access$1(SearchActivity.this, true);
        } else
        {
            view.findViewById(0x7f0900bc).setVisibility(8);
        }
        if (addressitem.dealTitle != null && !addressitem.dealTitle.equals(""))
        {
            flag = true;
            view.findViewById(0x7f0900dc).setVisibility(0);
            view.findViewById(0x7f0900dd).setVisibility(0);
            view.findViewById(0x7f0900db).setVisibility(0);
            ((TextView)view.findViewById(0x7f0900dc)).setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(addressitem.dealTitle));
            ((TextView)view.findViewById(0x7f0900dd)).setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(addressitem.dealText));
            String s1;
            Object aobj[];
            String s2;
            long l1;
            String s4;
            Object aobj1[];
            if (addressitem.dealType == 1)
            {
                ((ImageView)view.findViewById(0x7f0900db)).setImageResource(0x7f020343);
            } else
            {
                ((ImageView)view.findViewById(0x7f0900db)).setImageResource(0x7f020344);
            }
        } else
        {
            view.findViewById(0x7f0900dc).setVisibility(4);
            view.findViewById(0x7f0900dd).setVisibility(4);
            view.findViewById(0x7f0900db).setVisibility(4);
            flag = false;
        }
        if (addressitem.price != 0.0F)
        {
            flag = true;
            view.findViewById(0x7f0900de).setVisibility(0);
            view.findViewById(0x7f0900df).setVisibility(0);
            view.findViewById(0x7f0900e0).setVisibility(0);
            if (addressitem.currency == null)
            {
                addressitem.currency = "";
            }
            ((TextView)view.findViewById(0x7f0900de)).setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(addressitem.currency));
            TextView textview4 = (TextView)view.findViewById(0x7f0900df);
            s1 = SearchActivity.getPriceFormatString(addressitem.price_format);
            aobj = new Object[1];
            aobj[0] = Float.valueOf(addressitem.price);
            s2 = String.format(s1, aobj);
            textview4.setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(s2));
            String s3;
            if (addressitem.range == 1)
            {
                textview4.setTextColor(getResources().getColor(0x7f08004c));
            } else
            if (addressitem.range == 2)
            {
                textview4.setTextColor(getResources().getColor(0x7f08004d));
            } else
            if (addressitem.range == 3)
            {
                textview4.setTextColor(getResources().getColor(0x7f08004e));
            }
            l1 = (System.currentTimeMillis() / 1000L - addressitem.lastUpdated) / 3600L / 24L;
            if (l1 > 0L)
            {
                s4 = SearchActivity.access$0(SearchActivity.this).getLanguageString(DisplayStrings.DS_PD_DAYS_AGO);
                aobj1 = new Object[1];
                aobj1[0] = Integer.valueOf((int)l1);
                s3 = String.format(s4, aobj1);
            } else
            {
                s3 = (new StringBuilder()).append(SearchActivity.access$0(SearchActivity.this).getLanguageString(DisplayStrings.DS_TODAY)).toString();
            }
            ((TextView)view.findViewById(0x7f0900e0)).setText(s3);
        } else
        {
            view.findViewById(0x7f0900de).setVisibility(8);
            view.findViewById(0x7f0900df).setVisibility(8);
            view.findViewById(0x7f0900e0).setVisibility(8);
        }
        if (flag)
        {
            view.findViewById(0x7f0900da).setVisibility(0);
        } else
        {
            view.findViewById(0x7f0900da).setVisibility(8);
        }
        textview2 = (TextView)view.findViewById(0x7f0900c6);
        if (addressitem.getDistance().equals(""))
        {
            textview2.setVisibility(8);
        } else
        if (SearchActivity.access$2(SearchActivity.this).isStopPointSearchNTV() && !SearchActivity.access$3().booleanValue())
        {
            textview2.setVisibility(0);
            textview2.setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(DisplayStrings.DS_CALCULATING_TIME_OFF_ROUTEPPP));
        } else
        {
            textview2.setVisibility(0);
            textview2.setText(addressitem.getDistance());
        }
        view.findViewById(0x7f0900d8).setVisibility(8);
        as = addressitem.getAdditions();
        view1 = view.findViewById(0x7f0900c7);
        if (as.length > 0)
        {
            view1.setVisibility(0);
        } else
        {
            view1.setVisibility(8);
        }
        j = 0;
_L6:
        if (j < 6) goto _L4; else goto _L3
_L3:
        view2 = view.findViewById(0x7f09002c);
        if (addressitem.getCategory().intValue() != 4)
        {
            break; /* Loop/switch isn't completed */
        }
        view2.setBackgroundResource(0);
        view.findViewById(0x7f0900ba).setVisibility(8);
_L2:
        return view;
_L4:
        int k = getResources().getIdentifier((new StringBuilder("addressItemAddition")).append(j + 1).append("Img").toString(), "id", getPackageName());
        ImageView imageview = (ImageView)view.findViewById(k);
        int l = getResources().getIdentifier((new StringBuilder("addressItemAddition")).append(j + 1).append("Text").toString(), "id", getPackageName());
        TextView textview3 = (TextView)view.findViewById(l);
        imageview.setVisibility(8);
        textview3.setVisibility(8);
        if (true && j < as.length)
        {
            if (as[j].startsWith("ls_"))
            {
                android.graphics.drawable.Drawable drawable1 = ResManager.GetSkinDrawable((new StringBuilder(String.valueOf(as[j]))).append(".bin").toString());
                if (drawable1 == null)
                {
                    ResManager.downloadRes(ResourceDownloadType.RES_DOWNLOAD_IMAGE_JAVA.getValue(), as[j], SearchActivity.this);
                } else
                {
                    imageview.setVisibility(0);
                    imageview.setImageDrawable(drawable1);
                }
            } else
            {
                textview3.setVisibility(0);
                textview3.setText(SearchActivity.access$0(SearchActivity.this).getLanguageString(as[j]));
            }
        }
        j++;
        if (true) goto _L6; else goto _L5
_L5:
        if (addressitem.sponsored)
        {
            view2.setBackgroundResource(0x7f08003b);
            view2.setPadding(0, 0, 0, 0);
            return view;
        } else
        {
            view2.setBackgroundResource(0x7f02021f);
            view2.setPadding(0, 0, 0, 0);
            return view;
        }
    }

    public void setItems(AddressItem aaddressitem[])
    {
        searchResultItems = aaddressitem;
        if (aaddressitem != null)
        {
            isAddressItemSeenAlready = new boolean[aaddressitem.length];
        }
        notifyDataSetChanged();
    }

    public ()
    {
        this$0 = SearchActivity.this;
        super();
        searchResultItems = null;
        isAddressItemSeenAlready = null;
    }
}
