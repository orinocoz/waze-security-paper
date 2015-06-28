// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.Context;
import com.waze.AppUUID;

public class StatsData
{

    public String EventName;
    public String EventValue[];
    public String UUID;
    public String mKey;
    public String mSession;

    public StatsData(Context context, String s, String as[])
    {
        EventName = s;
        EventValue = as;
        UUID = AppUUID.getInstallationUUID(context);
    }

    public String buildCmd()
    {
        String s;
        int j;
        StringBuilder stringbuilder = (new StringBuilder("Stats,")).append(UUID).append(",").append("-1").append(",").append(EventName).append(",");
        int i;
        if (EventValue != null)
        {
            i = EventValue.length;
        } else
        {
            i = 0;
        }
        s = stringbuilder.append(i).toString();
        if (EventValue == null) goto _L2; else goto _L1
_L1:
        j = 0;
_L5:
        if (j < EventValue.length) goto _L3; else goto _L2
_L2:
        return s;
_L3:
        s = (new StringBuilder(String.valueOf(s))).append(",").append(EventValue[j]).toString();
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }
}
