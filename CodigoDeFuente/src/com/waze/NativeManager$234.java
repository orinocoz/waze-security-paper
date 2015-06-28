// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.user.FriendUserData;

// Referenced classes of package com.waze:
//            NativeManager, TooltipType, LayoutManager

class val.intParam
    implements Runnable
{

    final NativeManager this$0;
    private final long val$cb;
    private final int val$intParam;
    private final int val$numUSers;
    private final String val$type;
    private final FriendUserData val$userData;

    public void run()
    {
        LayoutManager layoutmanager = NativeManager.access$120(NativeManager.this);
        if (layoutmanager != null)
        {
            if (val$type.equalsIgnoreCase("tooltiproadclosure"))
            {
                layoutmanager.showToolTip(TooltipType.ROAD_CLOSURE, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipshare"))
            {
                layoutmanager.showToolTip(TooltipType.SHARE, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipmainmenu"))
            {
                layoutmanager.showToolTip(TooltipType.MAIN_MENU, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipNewViewer"))
            {
                layoutmanager.showToolTip(TooltipType.NEW_USER_VIEWING, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipEtaUpdateSent"))
            {
                layoutmanager.showToolTip(TooltipType.ETA_UPDATE_SENT, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipArrivalSent"))
            {
                layoutmanager.showToolTip(TooltipType.ARRIVAL_SENT, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipfriends"))
            {
                layoutmanager.showToolTip(TooltipType.FRIENDS, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
            if (val$type.equalsIgnoreCase("tooltipeta"))
            {
                layoutmanager.showToolTip(TooltipType.ETA, val$numUSers, val$userData, val$cb, val$intParam);
                return;
            }
        }
    }

    a()
    {
        this$0 = final_nativemanager;
        val$type = s;
        val$numUSers = i;
        val$userData = frienduserdata;
        val$cb = l;
        val$intParam = I.this;
        super();
    }
}
