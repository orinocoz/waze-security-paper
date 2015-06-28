// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.settings;

import com.waze.ConfigItem;
import com.waze.strings.DisplayStrings;

public final class SettingsSoundConstants
{

    public static final int CFG_ARRAY_ROUTE_2_SPEAKER_ID = 0;
    public static final int CFG_ARRAY_SOUND_PROMPTS_VOLUME_ID = 1;
    public static final ConfigItem CFG_ITEM_PROMPTS_VOLUME = new ConfigItem("Sound", "Prompts Volume", "");
    public static final ConfigItem CFG_ITEM_ROUTE_2_SPEAKER = new ConfigItem("Sound", "Route2Speaker", "");
    public static final ConfigItem CFG_ITEM_SOUND_DEVICE = new ConfigItem("Sound", "Device Name", "");
    public static final String CFG_SOUND_DEVICES_CATEGORY = "Sound";
    public static final String CFG_SOUND_DEVICES_NAME = "Device Name";
    public static final String CFG_SOUND_LEVEL_NONE_VALUE = "None";
    public static final String CFG_SOUND_PROMPTS_VOLUME_NAME = "Prompts Volume";
    public static final String CFG_SOUND_ROUTE_2_SPEAKER_NAME = "Route2Speaker";
    public static final DisplayStrings DEVICES[];
    public static final String EXTRA_SELECTED_DEVICE = "SELECTED_DEVICE";

    public SettingsSoundConstants()
    {
    }

    static 
    {
        DisplayStrings adisplaystrings[] = new DisplayStrings[3];
        adisplaystrings[0] = DisplayStrings.DS_SOUND_DEVICE_DEFAULT;
        adisplaystrings[1] = DisplayStrings.DS_SOUND_DEVICE_SPEAKER;
        adisplaystrings[2] = DisplayStrings.DS_SOUND_DEVICE_BT;
        DEVICES = adisplaystrings;
    }
}
