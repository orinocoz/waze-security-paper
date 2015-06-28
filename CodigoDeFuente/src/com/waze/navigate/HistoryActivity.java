// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate:
//            DriveToNavigateCallback, AddressItem, DriveToNativeManager, AddressPreviewActivity

public final class HistoryActivity extends ActivityBase
    implements DriveToNativeManager.DriveToGetAddressItemArrayCallback, DriveToNavigateCallback
{
    private class HistoryListAdapter extends BaseAdapter
    {

        private AddressItem historyItems[];
        final HistoryActivity this$0;

        public int getCount()
        {
            return historyItems.length;
        }

        public Object getItem(int i)
        {
            return historyItems[i];
        }

        public long getItemId(int i)
        {
            return (long)i;
        }

        public View getView(int i, View view, ViewGroup viewgroup)
        {
            AddressItem addressitem;
            addressitem = (AddressItem)getItem(i);
            if (view == null)
            {
                view = ((LayoutInflater)getSystemService("layout_inflater")).inflate(0x7f03000e, null);
            }
            view.setTag(0x7f09002c, addressitem);
            view.findViewById(0x7f0900e2).setVisibility(0);
            view.findViewById(0x7f0900c3).setVisibility(8);
            if (addressitem == null) goto _L2; else goto _L1
_L1:
            View view1;
            TextView textview = (TextView)view.findViewById(0x7f0900c2);
            TextView textview1;
            TextView textview2;
            boolean flag;
            byte byte0;
            if (addressitem.getTitle().equals(""))
            {
                textview.setVisibility(8);
            } else
            {
                textview.setVisibility(0);
                textview.setText(addressitem.getTitle());
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
            textview2 = (TextView)view.findViewById(0x7f0900c6);
            if (addressitem.getDistance().equals(""))
            {
                textview2.setVisibility(8);
            } else
            {
                textview2.setVisibility(0);
                textview2.setText(addressitem.getDistance());
            }
            ((RelativeLayout)view.findViewById(0x7f0900d9)).setTag(0x7f09002c, addressitem);
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
            JVM INSTR tableswitch 0 3: default 240
        //                       0 320
        //                       1 330
        //                       2 340
        //                       3 350;
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

        public HistoryListAdapter(Context context, int i, AddressItem aaddressitem[])
        {
            this$0 = HistoryActivity.this;
            super();
            historyItems = aaddressitem;
        }
    }


    private DriveToNativeManager nm;

    public HistoryActivity()
    {
    }

    public void addressItemClicked(View view)
    {
        boolean flag = true;
        AddressItem addressitem = (AddressItem)view.getTag(0x7f09002c);
        if (addressitem.getCategory().intValue() == flag)
        {
            flag = false;
        }
        nm.navigate(addressitem, this, false, flag);
    }

    public void getAddressItemArrayCallback(AddressItem aaddressitem[])
    {
        Log.d("WAZE", (new StringBuilder("got history len=")).append(aaddressitem.length).toString());
        ((ListView)findViewById(0x7f090319)).setAdapter(new HistoryListAdapter(this, 0x7f03000e, aaddressitem));
    }

    public void moreActionClicked(View view)
    {
        AddressItem addressitem = (AddressItem)view.getTag(0x7f09002c);
        Intent intent = new Intent(this, com/waze/navigate/AddressPreviewActivity);
        intent.putExtra("AddressItem", addressitem);
        intent.putExtra("ActionButton", 4);
        intent.putExtra("AdditionalButton", true);
        startActivityForResult(intent, 1);
    }

    public void navigateCallback(int i)
    {
        Log.d("WAZE", (new StringBuilder("navigateCallback:rc=")).append(i).toString());
        setResult(-1);
        finish();
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f030065);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_HISTORY);
        ((ListView)findViewById(0x7f090319)).setOnItemClickListener(new android.widget.AdapterView.OnItemClickListener() {

            final HistoryActivity this$0;

            public void onItemClick(AdapterView adapterview, View view, int i, long l)
            {
                addressItemClicked(view);
            }

            
            {
                this$0 = HistoryActivity.this;
                super();
            }
        });
        nm = DriveToNativeManager.getInstance();
        nm.getHistory(this);
    }
}
