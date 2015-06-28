// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget.rt;


// Referenced classes of package com.waze.widget.rt:
//            RealTimeManager

public class AuthenticateRequest
{

    private String mPassword;
    private String mUserName;

    AuthenticateRequest(String s, String s1)
    {
        mUserName = s;
        mPassword = s1;
    }

    String buildCmd()
    {
        return (new StringBuilder("Authenticate,")).append(RealTimeManager.getProtocol()).append(",").append(mUserName).append(",").append(mPassword).toString();
    }
}
