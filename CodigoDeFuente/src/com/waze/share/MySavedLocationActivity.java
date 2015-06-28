// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ImageView;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.navigate.AddressItem;
import com.waze.navigate.DriveToNativeManager;
import com.waze.navigate.DriveToNavigateCallback;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.share:
//            ShareUtility

public final class MySavedLocationActivity extends ActivityBase
    implements com.waze.navigate.DriveToNativeManager.DriveToGetAddressItemArrayCallback, DriveToNavigateCallback
{
    private class FavListAdapter extends BaseAdapter
    {

        private AddressItem favoriteItems[];
        final MySavedLocationActivity this$0;

        public int getCount()
        {
            return favoriteItems.length;
        }

        public Object getItem(int i)
        {
            return favoriteItems[i];
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            if (view == null)
            {
                view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
            }
            view.setTag(0x7f09002c, favoriteItems[i]);
            view.findViewById(0x7f0900e1).setVisibility(0);
            if (favoriteItems[i] == null) goto _L2; else goto _L1
_L1:
            View view1;
            view.findViewById(0x7f0900c4).setVisibility(8);
            view.findViewById(0x7f0900c6).setVisibility(8);
            view.findViewById(0x7f0900c3).setVisibility(8);
            ((TextView)view.findViewById(0x7f0900c2)).setText(Html.fromHtml(favoriteItems[i].getTitle()));
            Integer integer = favoriteItems[i].getImage();
            RelativeLayout relativelayout;
            boolean flag;
            byte byte0;
            if (integer != null)
            {
                ((ImageView)view.findViewById(0x7f0900be)).setImageResource(integer.intValue());
                view.findViewById(0x7f0900be).setVisibility(0);
            } else
            {
                view.findViewById(0x7f0900be).setVisibility(8);
            }
            relativelayout = (RelativeLayout)view.findViewById(0x7f0900d9);
            relativelayout.setTag(0x7f09002c, favoriteItems[i]);
            relativelayout.setVisibility(4);
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
            JVM INSTR tableswitch 0 3: default 248
        //                       0 285
        //                       1 295
        //                       2 305
        //                       3 315;
               goto _L3 _L4 _L5 _L6 _L7
_L3:
            view1.setPadding(0, 0, 0, 0);
_L2:
            return view;
_L4:
            view1.setBackgroundResource(0x7f020224);
            continue; /* Loop/switch isn't completed */
_L5:
            view1.setBackgroundResource(0x7f020226);
            continue; /* Loop/switch isn't completed */
_L6:
            view1.setBackgroundResource(0x7f020223);
            continue; /* Loop/switch isn't completed */
_L7:
            view1.setBackgroundResource(0x7f020225);
            if (true) goto _L3; else goto _L8
_L8:
        }

        public FavListAdapter(Context context, int i, AddressItem aaddressitem[])
        {
            this$0 = MySavedLocationActivity.this;
            super();
            favoriteItems = aaddressitem;
        }
    }


    private DriveToNativeManager nm;

    public MySavedLocationActivity()
    {
    }

    public void addressItemClicked(View view)
    {
        AddressItem addressitem = (AddressItem)view.getTag(0x7f09002c);
        ShareUtility.OpenShareActivity(ShareUtility.ShareType.ShareType_ShareSelection, null, addressitem, null);
    }

    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
    {
        if (aaddressitem.length > 0)
        {
            ((ListView)findViewById(0x7f0902ae)).setAdapter(new FavListAdapter(this, 0x7f03000e, aaddressitem));
        }
    }

    public void navigateCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("navigateCallback:rc=")).append(i).toString());
        setResult(-1);
        finish();
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (j == -1)
        {
            setResult(-1);
            finish();
        }
        super.onActivityResult(i, j, intent);
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030053);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_FAVORITES);
        ((ListView)findViewById(0x7f0902ae)).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final MySavedLocationActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                addressItemClicked(view);
            }

            
            {
                this$0 = MySavedLocationActivity.this;
                super();
            }
        });
        nm = DriveToNativeManager.getInstance();
        nm.getFavorites(this, false);
    }
}
