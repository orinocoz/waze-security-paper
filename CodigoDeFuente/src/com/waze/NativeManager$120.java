// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.user.FriendUserData;

// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.bIsCalculating
    implements Runnable
{

    final NativeManager this$0;
    private final String val$Friend1PictureUrl;
    private final String val$Friend2PictureUrl;
    private final int val$FriendsDrivingCount;
    private final FriendUserData val$NotifyFriends[];
    private final int val$OnlineFriends;
    private final String val$UserPictureUrl;
    private final boolean val$bIsCalculating;
    private final boolean val$bIsOffline;
    private final String val$distance;
    private final String val$distanceUnit;
    private final String val$finalTitle;
    private final String val$freeText;
    private final String val$goodMorning;
    private final int val$iRouteLenght;
    private final int val$iTimeOut;
    private final String val$id;
    private final boolean val$isWaypoint;
    private final boolean val$is_trip_srv_rsp;
    private final String val$jConfigImage;
    private final LayoutManager val$layoutMgr;
    private final int val$nId;
    private final String val$note;
    private final boolean val$show_disclaimer;
    private final boolean val$shownAgain;
    private final String val$via;
    private final String val$viaToll;
    private final int val$waypointDelay;
    private final String val$waypointDistance;
    private final String val$waypointDistanceUnit;
    private final int val$waypointLength;
    private final String val$waypointTitle;

    public void run()
    {
        val$layoutMgr.OpenNavResultPopup(val$note, val$goodMorning, val$id, val$distance, val$distanceUnit, val$iRouteLenght, val$via, val$iTimeOut, val$show_disclaimer, val$isWaypoint, val$waypointDistance, val$waypointDistanceUnit, val$waypointLength, val$waypointTitle, val$finalTitle, val$waypointDelay, val$is_trip_srv_rsp, val$nId, val$shownAgain, val$UserPictureUrl, val$Friend1PictureUrl, val$Friend2PictureUrl, val$OnlineFriends, val$FriendsDrivingCount, val$viaToll, val$jConfigImage, val$freeText, val$NotifyFriends, val$bIsOffline, val$bIsCalculating);
    }

    a()
    {
        this$0 = final_nativemanager;
        val$layoutMgr = layoutmanager;
        val$note = s;
        val$goodMorning = s1;
        val$id = s2;
        val$distance = s3;
        val$distanceUnit = s4;
        val$iRouteLenght = i;
        val$via = s5;
        val$iTimeOut = j;
        val$show_disclaimer = flag;
        val$isWaypoint = flag1;
        val$waypointDistance = s6;
        val$waypointDistanceUnit = s7;
        val$waypointLength = k;
        val$waypointTitle = s8;
        val$finalTitle = s9;
        val$waypointDelay = l;
        val$is_trip_srv_rsp = flag2;
        val$nId = i1;
        val$shownAgain = flag3;
        val$UserPictureUrl = s10;
        val$Friend1PictureUrl = s11;
        val$Friend2PictureUrl = s12;
        val$OnlineFriends = j1;
        val$FriendsDrivingCount = k1;
        val$viaToll = s13;
        val$jConfigImage = s14;
        val$freeText = s15;
        val$NotifyFriends = afrienduserdata;
        val$bIsOffline = flag4;
        val$bIsCalculating = Z.this;
        super();
    }
}
