// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.ConfigItem;

public final class ShareConstants
{

    public static final int CFG_ARRAY_FB_FEATURE_ENABLED_ID = 0;
    public static final int CFG_ARRAY_FB_USER_SHARE_PREFIX_ID = 3;
    public static final int CFG_ARRAY_FOURSQUARE_FEATURE_ENABLED_ID = 2;
    public static final int CFG_ARRAY_TWITTER_FEATURE_ENABLED_ID = 1;
    public static final ConfigItem CFG_ITEM_SHARE_FB_FEATURE_ENABLED = new ConfigItem("Facebook", "Feature enabled", "yes");
    public static final ConfigItem CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX = new ConfigItem("Facebook", "Sharing Url Prefix", "");
    public static final ConfigItem CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED = new ConfigItem("Foursquare", "Feauture enabled", "yes");
    public static final ConfigItem CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED = new ConfigItem("Twitter", "Feature enabled", "yes");
    public static final String CFG_NO = "no";
    public static final String CFG_SHARE_FB_CATEGORY = "Facebook";
    public static final String CFG_SHARE_FB_FEATURE_ENABLED = "Feature enabled";
    public static final String CFG_SHARE_FB_USER_SHARE_PREFIX = "Sharing Url Prefix";
    public static final String CFG_SHARE_FOURSQUARE_CATEGORY = "Foursquare";
    public static final String CFG_SHARE_FOURSQUARE_FEATURE_ENABLED = "Feauture enabled";
    public static final String CFG_SHARE_TWITTER_CATEGORY = "Twitter";
    public static final String CFG_SHARE_TWITTER_FEATURE_ENABLED = "Feature enabled";
    public static final String CFG_YES = "yes";
    public static final String SHARE_EXTRA_ID_FRIENDS_LIST = "Friends list";
    public static final String SHARE_EXTRA_ID_LIKE_URL = "LikeUrl";
    public static final String SHARE_EXTRA_ID_LOCATION_ID = "Position id";
    public static final String SHARE_FB_LIKE_APP_URL_PREFIX = "fb://";
    public static final int SHARE_RC_FB_LOCATION_ACTIVITY_RESULT = 3;
    public static final int SHARE_RC_FB_WITH_ACTIVITY_CLOSED = 2;
    public static final int SHARE_RC_FB_WITH_ACTIVITY_RESULT = 1;
    public static final int SHARE_RQC_FB_LOCATION_ACTIVITY = 3;
    public static final int SHARE_RQC_FB_MAIN_ACTIVITY = 1;
    public static final int SHARE_RQC_FB_WITH_ACTIVITY = 2;
    public static final String SHARE_SOCIAL_NETS_ITEM_FB = "Post to facebook";
    public static final String SHARE_SOCIAL_NETS_ITEM_FSQ = "Check in on Foursquare";
    public static final String SHARE_SOCIAL_NETS_ITEM_TWITTER = "Tweet";

    public ShareConstants()
    {
    }

}
