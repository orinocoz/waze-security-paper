// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import com.waze.AppService;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.settings.DrillDownSettingView;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;

// Referenced classes of package com.waze.navigate:
//            DriveToNativeManager, AddressItem, AddFavoriteNameActivity

public class AddressOptionsMoreActivity extends ActivityBase
{

    private AddressItem addressItem;
    private DriveToNativeManager driveToNativeManager;
    private boolean isAddStopPoint;
    private boolean isAdditionalAddToFavorites;
    private boolean isAdditionalRemoveFromHistory;
    private NativeManager nativeManager;

    public AddressOptionsMoreActivity()
    {
        isAddStopPoint = true;
        nativeManager = AppService.getNativeManager();
        driveToNativeManager = DriveToNativeManager.getInstance();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        setContentView(0x7f030010);
        addressItem = (AddressItem)getIntent().getExtras().getSerializable("AddressItem");
        isAdditionalAddToFavorites = getIntent().getExtras().getBoolean("AdditionalButton");
        isAdditionalRemoveFromHistory = getIntent().getExtras().getBoolean("RemoveFromHistoryButton");
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_MORE_OPTIONS);
        DrillDownSettingView drilldownsettingview = (DrillDownSettingView)findViewById(0x7f0900fb);
        DrillDownSettingView drilldownsettingview1 = (DrillDownSettingView)findViewById(0x7f0900fc);
        DrillDownSettingView drilldownsettingview2 = (DrillDownSettingView)findViewById(0x7f0900fd);
        DrillDownSettingView drilldownsettingview3 = (DrillDownSettingView)findViewById(0x7f0900fe);
        drilldownsettingview.setText(nativeManager.getLanguageString(DisplayStrings.DS_ADD_A_STOP_ON_THE_WAY));
        drilldownsettingview1.setText(nativeManager.getLanguageString(DisplayStrings.DS_SET_AS_START_POINT));
        drilldownsettingview2.setText(nativeManager.getLanguageString(DisplayStrings.DS_SHOW_ON_MAP));
        if (!isAdditionalAddToFavorites && isAdditionalRemoveFromHistory)
        {
            drilldownsettingview3.setText(nativeManager.getLanguageString(DisplayStrings.DS_REMOVE_FROM_HISTORY));
        } else
        {
            drilldownsettingview3.setText(nativeManager.getLanguageString(DisplayStrings.DS_ADD_TO_FAVORITES));
        }
        drilldownsettingview.displayMore(false);
        drilldownsettingview1.displayMore(false);
        drilldownsettingview2.displayMore(false);
        drilldownsettingview3.displayMore(false);
        if (isAdditionalAddToFavorites)
        {
            drilldownsettingview3.setVisibility(0);
        } else
        if (isAdditionalRemoveFromHistory)
        {
            drilldownsettingview3.setVisibility(0);
        } else
        {
            drilldownsettingview3.setVisibility(8);
        }
        drilldownsettingview.setOnClickListener(new android.view.View.OnClickListener() {

            final AddressOptionsMoreActivity this$0;

            public void onClick(View view)
            {
                boolean flag = true;
                DriveToNativeManager drivetonativemanager = DriveToNativeManager.getInstance();
                if (addressItem.getCategory().intValue() == flag)
                {
                    flag = false;
                }
                drivetonativemanager.navigate(addressItem, null, false, flag);
                setResult(2);
                finish();
            }

            
            {
                this$0 = AddressOptionsMoreActivity.this;
                super();
            }
        });
        drilldownsettingview1.setOnClickListener(new android.view.View.OnClickListener() {

            final AddressOptionsMoreActivity this$0;

            public void onClick(View view)
            {
                driveToNativeManager.setStartPoint();
                setResult(1);
                finish();
            }

            
            {
                this$0 = AddressOptionsMoreActivity.this;
                super();
            }
        });
        drilldownsettingview2.setOnClickListener(new android.view.View.OnClickListener() {

            final AddressOptionsMoreActivity this$0;

            public void onClick(View view)
            {
                driveToNativeManager.centerMapInAddressOptionsView(addressItem.index, addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue(), false, addressItem.getIcon());
                driveToNativeManager.showOnMap(addressItem.getLocationX().intValue(), addressItem.getLocationY().intValue());
                setResult(3);
                finish();
            }

            
            {
                this$0 = AddressOptionsMoreActivity.this;
                super();
            }
        });
        drilldownsettingview3.setOnClickListener(new android.view.View.OnClickListener() {

            final AddressOptionsMoreActivity this$0;

            public void onClick(View view)
            {
                if (isAdditionalAddToFavorites)
                {
                    Intent intent = new Intent(AddressOptionsMoreActivity.this, com/waze/navigate/AddFavoriteNameActivity);
                    intent.putExtra("AddressItem", addressItem);
                    startActivityForResult(intent, 1);
                    return;
                } else
                {
                    DriveToNativeManager.getInstance().eraseAddressItem(addressItem);
                    setResult(-1);
                    finish();
                    return;
                }
            }

            
            {
                this$0 = AddressOptionsMoreActivity.this;
                super();
            }
        });
    }

    protected void onResume()
    {
        super.onResume();
    }



}
