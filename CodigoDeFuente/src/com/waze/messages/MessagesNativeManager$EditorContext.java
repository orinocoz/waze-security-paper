// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import com.waze.ifs.ui.ActivityBase;
import com.waze.user.UserData;

// Referenced classes of package com.waze.messages:
//            MessagesNativeManager

public static class mUser
{

    ActivityBase mContext;
    public int mRqCode;
    int mType;
    UserData mUser;

    public (ActivityBase activitybase, int i, UserData userdata)
    {
        mRqCode = 0;
        mContext = activitybase;
        mType = i;
        mUser = userdata;
    }
}
