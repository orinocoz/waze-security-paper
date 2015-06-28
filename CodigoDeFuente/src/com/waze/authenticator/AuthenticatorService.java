// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.authenticator;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;

// Referenced classes of package com.waze.authenticator:
//            Authenticator

public class AuthenticatorService extends Service
{

    private Authenticator mAuthenticator;

    public AuthenticatorService()
    {
    }

    public IBinder onBind(Intent intent)
    {
        return mAuthenticator.getIBinder();
    }

    public void onCreate()
    {
        mAuthenticator = new Authenticator(this);
    }
}
