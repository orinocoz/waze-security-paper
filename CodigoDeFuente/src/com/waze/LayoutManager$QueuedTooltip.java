// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.user.FriendUserData;

// Referenced classes of package com.waze:
//            LayoutManager, TooltipType

class intParam
{

    final long cb;
    final int intParam;
    final int numUsers;
    final LayoutManager this$0;
    final TooltipType type;
    final FriendUserData userData;

    public (TooltipType tooltiptype, int i, FriendUserData frienduserdata, long l, int j)
    {
        this$0 = LayoutManager.this;
        super();
        type = tooltiptype;
        numUsers = i;
        userData = frienduserdata;
        cb = l;
        intParam = j;
    }
}
