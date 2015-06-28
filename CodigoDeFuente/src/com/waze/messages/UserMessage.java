// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.messages;

import com.waze.ifs.ui.ActivityBase;
import com.waze.user.UserData;

// Referenced classes of package com.waze.messages:
//            MessagesNativeManager

public class UserMessage
{

    public UserMessage()
    {
    }

    public static void startPrivate(ActivityBase activitybase, UserData userdata)
    {
        MessagesNativeManager.getInstance().startPrivate(new MessagesNativeManager.EditorContext(activitybase, 1, userdata));
    }

    public static void startPublic(ActivityBase activitybase, UserData userdata)
    {
        MessagesNativeManager.getInstance().startPublic(new MessagesNativeManager.EditorContext(activitybase, 0, userdata));
    }
}
