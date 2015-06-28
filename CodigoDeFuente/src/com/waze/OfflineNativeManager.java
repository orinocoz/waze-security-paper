// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.messages.QuestionData;

// Referenced classes of package com.waze:
//            AppService, NativeManager

public final class OfflineNativeManager
{

    private static OfflineNativeManager mInstance = null;

    private OfflineNativeManager()
    {
        if (!AppService.IsAppRunning())
        {
            NativeManager.LoadNativeLib();
            InitOfflineNativeManagerWhileAppIsNotRunningNTV();
        }
        InitOfflineNativeManagerNTV();
    }

    private native QuestionData HandleCommandNTV(String s, int i, int j);

    private native void InitOfflineNativeManagerNTV();

    private native void InitOfflineNativeManagerWhileAppIsNotRunningNTV();

    public static OfflineNativeManager getInstance()
    {
        if (mInstance == null)
        {
            mInstance = new OfflineNativeManager();
        }
        return mInstance;
    }

    public QuestionData HandleCommandForPush(String s, int i, int j)
    {
        return HandleCommandNTV(s, i, j);
    }

}
