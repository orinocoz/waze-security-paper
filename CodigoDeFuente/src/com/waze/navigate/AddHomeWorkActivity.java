// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.content.res.Resources;
import android.os.Bundle;
import android.view.View;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.DrillDownSettingView;
import com.waze.settings.SettingsTitleText;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AutocompleteSearchActivity, AddressItem

public final class AddHomeWorkActivity extends ActivityBase
{

    private static final int RQ_ADD = 1001;
    private DriveToNativeManager mDtnMgr;
    private DrillDownSettingView mHome;
    private NativeManager mNatMgr;
    int mType;
    private DrillDownSettingView mWork;

    public AddHomeWorkActivity()
    {
    }

    private void getHomeAndWork()
    {
        mDtnMgr.getHome(new DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final AddHomeWorkActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                if (aaddressitem == null || aaddressitem.length == 0 || aaddressitem[0].getType() == null || aaddressitem[0].getType().intValue() == 2)
                {
                    mHome.setText(mNatMgr.getLanguageString(DisplayStrings.DS_HOME_WORK_WIZ_ADD_HOME));
                    mHome.setTextColor(getResources().getColor(0x7f080061));
                    return;
                }
                mHome.setTextColor(0xff000000);
                if (!aaddressitem[0].getAddress().isEmpty())
                {
                    mHome.setText(aaddressitem[0].getAddress());
                    return;
                } else
                {
                    mHome.setText(aaddressitem[0].getTitle());
                    return;
                }
            }

            
            {
                this$0 = AddHomeWorkActivity.this;
                super();
            }
        });
        mDtnMgr.getWork(new DriveToNativeManager.DriveToGetAddressItemArrayCallback() {

            final AddHomeWorkActivity this$0;

            public void getAddressItemArrayCallback(AddressItem aaddressitem[])
            {
                if (aaddressitem == null || aaddressitem.length == 0 || aaddressitem[0].getType() == null || aaddressitem[0].getType().intValue() == 4)
                {
                    mWork.setText(mNatMgr.getLanguageString(DisplayStrings.DS_HOME_WORK_WIZ_ADD_WORK));
                    mWork.setTextColor(getResources().getColor(0x7f080061));
                    return;
                }
                mWork.setTextColor(0xff000000);
                if (!aaddressitem[0].getSecondaryTitle().isEmpty())
                {
                    mWork.setText(aaddressitem[0].getSecondaryTitle());
                    return;
                }
                if (!aaddressitem[0].getAddress().isEmpty())
                {
                    mWork.setText(aaddressitem[0].getAddress());
                    return;
                } else
                {
                    mWork.setText(aaddressitem[0].getTitle());
                    return;
                }
            }

            
            {
                this$0 = AddHomeWorkActivity.this;
                super();
            }
        });
    }

    protected void onActivityResult(int i, int j, Intent intent)
    {
        if (i == 1001 && j == -1)
        {
            getHomeAndWork();
            setResult(32783);
            return;
        } else
        {
            super.onActivityResult(i, j, intent);
            return;
        }
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        requestWindowFeature(1);
        setContentView(0x7f03000c);
        mNatMgr = NativeManager.getInstance();
        mDtnMgr = DriveToNativeManager.getInstance();
        mType = getIntent().getExtras().getInt("AddressType");
        getHomeAndWork();
        ((TitleBar)findViewById(0x7f090058)).init(this, mNatMgr.getLanguageString(DisplayStrings.DS_HOME_WORK_WIZ_TITLE));
        mHome = (DrillDownSettingView)findViewById(0x7f0900a2);
        mHome.setText("");
        mHome.setOnClickListener(new android.view.View.OnClickListener() {

            final AddHomeWorkActivity this$0;

            public void onClick(View view)
            {
                searchClicked(3);
            }

            
            {
                this$0 = AddHomeWorkActivity.this;
                super();
            }
        });
        mWork = (DrillDownSettingView)findViewById(0x7f0900a4);
        mWork.setText("");
        mWork.setOnClickListener(new android.view.View.OnClickListener() {

            final AddHomeWorkActivity this$0;

            public void onClick(View view)
            {
                searchClicked(4);
            }

            
            {
                this$0 = AddHomeWorkActivity.this;
                super();
            }
        });
        ((SettingsTitleText)findViewById(0x7f0900a1)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_HOME));
        ((SettingsTitleText)findViewById(0x7f0900a3)).setText(mNatMgr.getLanguageString(DisplayStrings.DS_WORK));
    }

    public void searchClicked(int i)
    {
        Intent intent = new Intent(this, com/waze/navigate/AutocompleteSearchActivity);
        intent.putExtra("SearchMode", i);
        startActivityForResult(intent, 1001);
    }



}
