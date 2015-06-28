// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.rt;

import com.waze.widget.WazeAppWidgetLog;

public class AuthenticateSuccessfulResponse
{

    private String mCookie;
    private String mSessionId;

    public AuthenticateSuccessfulResponse(String s)
    {
        String as[] = s.split("\n");
        String as1[] = as[0].split(",");
        if (as1[1].equalsIgnoreCase("200"))
        {
            WazeAppWidgetLog.d((new StringBuilder("Got AuthenticateSuccessful response [")).append(as[1]).append("]").toString());
            String as2[] = as[1].split(",");
            if (as2[0].equalsIgnoreCase("LoginError"))
            {
                WazeAppWidgetLog.e((new StringBuilder("Authenticate failed status =")).append(as2[1]).toString());
                return;
            } else
            {
                mSessionId = as2[1];
                mCookie = as2[2];
                return;
            }
        } else
        {
            WazeAppWidgetLog.e((new StringBuilder("Authenticate failed status =")).append(as1[1]).append(" details=").append(as1[2]).toString());
            return;
        }
    }

    public String getCookie()
    {
        return mCookie;
    }

    public String getSessionId()
    {
        return mSessionId;
    }
}
