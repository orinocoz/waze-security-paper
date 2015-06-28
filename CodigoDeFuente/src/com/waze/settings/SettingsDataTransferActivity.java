// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.TextView;
import com.waze.AppService;
import com.waze.ConfigItem;
import com.waze.ConfigManager;
import com.waze.NativeManager;
import com.waze.ifs.ui.ActivityBase;
import com.waze.strings.DisplayStrings;
import com.waze.view.title.TitleBar;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.waze.settings:
//            SettingsCheckboxView, SettingsUtils

public class SettingsDataTransferActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int DOWNLOAD_TRAFFIC_INDEX = 0;
    public static final String screenName = "SettingsDataTransfer";
    private SettingsCheckboxView downloadTrafficInfoView;
    private List mConfigItems;
    private NativeManager mNativeManager;

    public SettingsDataTransferActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    private void onRefresh()
    {
        setResult(-1);
        finish();
        NativeManager.Post(new Runnable() {

            final SettingsDataTransferActivity this$0;

            public void run()
            {
                AppService.getNativeManager().refreshMapNTV();
            }

            
            {
                this$0 = SettingsDataTransferActivity.this;
                super();
            }
        });
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start data transfer activity");
        setContentView(0x7f0300e6);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_DATA_TRANSFER);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Download", "Download traffic jams", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsDataTransfer");
        ((TextView)findViewById(0x7f090624)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_DATA_USED_IN_CURRENT_SESSION));
        ((TextView)findViewById(0x7f090627)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_REFRESH_MAP_OF_MY_AREA));
        ((TextView)findViewById(0x7f090629)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_CHANGES_WONT_AFFECT_ROUTING));
        ((TextView)findViewById(0x7f09062a)).setText(mNativeManager.getLanguageString(DisplayStrings.DS_TRAFFIC_AND_UPDATES_WILL_NOT));
        findViewById(0x7f090626).setOnClickListener(new android.view.View.OnClickListener() {

            final SettingsDataTransferActivity this$0;

            public void onClick(View view)
            {
                onRefresh();
            }

            
            {
                this$0 = SettingsDataTransferActivity.this;
                super();
            }
        });
        String s = (new StringBuilder(String.valueOf(Integer.toString(mNativeManager.netMonCountNTV() / 1024)))).append(" KB").toString();
        ((TextView)findViewById(0x7f090625)).setText(s);
        downloadTrafficInfoView = (SettingsCheckboxView)findViewById(0x7f090628);
        DisplayStrings displaystrings = DisplayStrings.DS_DOWNLOAD_TRAFFIC_INFO;
        SettingsUtils.setCheckboxLanguageString(downloadTrafficInfoView, displaystrings);
    }

    public void updateConfigItems(List list)
    {
        downloadTrafficInfoView.setValue(((ConfigItem)list.get(0)).getValue().equalsIgnoreCase("yes"));
        SettingsUtils.setCheckboxCallback("SettingsDataTransfer", mConfigItems, downloadTrafficInfoView, 0);
    }

}
