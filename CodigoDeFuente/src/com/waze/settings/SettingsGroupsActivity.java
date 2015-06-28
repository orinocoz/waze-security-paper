// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import android.os.Bundle;
import android.util.Log;
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
//            SettingsSelectionView, SettingsUtils

public class SettingsGroupsActivity extends ActivityBase
    implements com.waze.ConfigManager.IConfigUpdater
{

    private static final int GROUPS_ICONS_INDEX = 1;
    public static final String GROUP_ICONS_OPTIONS[] = {
        "All groups", "From all groups I follow", "From my main group"
    };
    public static final String GROUP_ICONS_VALUES[] = {
        "All", "following", "main"
    };
    private static final int POPUP_REPORTS_INDEX = 0;
    public static final String POPUP_REPORTS_OPTIONS[] = {
        "None", "From all groups I follow", "From my main group"
    };
    public static final String POPUP_REPORTS_VALUES[] = {
        "none", "following", "main"
    };
    public static final String screenName = "SettingsGroups";
    private SettingsSelectionView iconsView;
    private List mConfigItems;
    private NativeManager mNativeManager;
    private SettingsSelectionView reportsView;

    public SettingsGroupsActivity()
    {
        mNativeManager = AppService.getNativeManager();
    }

    protected void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        Log.i("waze", "start settings activity");
        setContentView(0x7f0300eb);
        ((TitleBar)findViewById(0x7f090058)).init(this, DisplayStrings.DS_GROUPS);
        mConfigItems = new ArrayList();
        mConfigItems.add(new ConfigItem("Groups", "Pop-up reports", ""));
        mConfigItems.add(new ConfigItem("Groups", "Show wazers", ""));
        ConfigManager.getInstance().getConfig(this, mConfigItems, "SettingsGroups");
        reportsView = (SettingsSelectionView)findViewById(0x7f090637);
        SettingsUtils.createSettingsSelectionView(this, "SettingsGroups", mConfigItems, reportsView, DisplayStrings.DS_POPHUP_REPORTS, POPUP_REPORTS_OPTIONS, POPUP_REPORTS_VALUES, 0);
        iconsView = (SettingsSelectionView)findViewById(0x7f090638);
        SettingsUtils.createSettingsSelectionView(this, "SettingsGroups", mConfigItems, iconsView, DisplayStrings.DS_GROUP_ICONS, GROUP_ICONS_OPTIONS, GROUP_ICONS_VALUES, 1);
    }

    public void updateConfigItems(List list)
    {
        int i = SettingsUtils.findValueIndex(POPUP_REPORTS_VALUES, ((ConfigItem)list.get(0)).getValue());
        reportsView.setValueText(mNativeManager.getLanguageString(POPUP_REPORTS_OPTIONS[i]));
        int j = SettingsUtils.findValueIndex(GROUP_ICONS_VALUES, ((ConfigItem)list.get(1)).getValue());
        iconsView.setValueText(mNativeManager.getLanguageString(GROUP_ICONS_OPTIONS[j]));
    }

}
