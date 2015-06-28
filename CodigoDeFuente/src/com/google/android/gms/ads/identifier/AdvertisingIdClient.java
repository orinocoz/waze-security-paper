// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.ads.identifier;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.a;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.t;
import java.io.IOException;

public final class AdvertisingIdClient
{
    public static final class Info
    {

        private final String kx;
        private final boolean ky;

        public String getId()
        {
            return kx;
        }

        public boolean isLimitAdTrackingEnabled()
        {
            return ky;
        }

        public Info(String s, boolean flag)
        {
            kx = s;
            ky = flag;
        }
    }


    public AdvertisingIdClient()
    {
    }

    static Info a(Context context, a a1)
        throws IOException
    {
        Info info;
        t t1 = com.google.android.gms.internal.t.a.b(a1.er());
        info = new Info(t1.getId(), t1.a(true));
        try
        {
            context.unbindService(a1);
        }
        catch (IllegalArgumentException illegalargumentexception1)
        {
            Log.i("AdvertisingIdClient", "getAdvertisingIdInfo unbindService failed.", illegalargumentexception1);
            return info;
        }
        return info;
        RemoteException remoteexception;
        remoteexception;
        Log.i("AdvertisingIdClient", "GMS remote exception ", remoteexception);
        throw new IOException("Remote exception");
        Exception exception;
        exception;
        InterruptedException interruptedexception;
        try
        {
            context.unbindService(a1);
        }
        catch (IllegalArgumentException illegalargumentexception)
        {
            Log.i("AdvertisingIdClient", "getAdvertisingIdInfo unbindService failed.", illegalargumentexception);
        }
        throw exception;
        interruptedexception;
        throw new IOException("Interrupted exception");
    }

    static a g(Context context)
        throws IOException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
    {
        a a1;
        Intent intent;
        try
        {
            context.getPackageManager().getPackageInfo("com.android.vending", 0);
        }
        catch (android.content.pm.PackageManager.NameNotFoundException namenotfoundexception)
        {
            throw new GooglePlayServicesNotAvailableException(9);
        }
        try
        {
            GooglePlayServicesUtil.w(context);
        }
        catch (GooglePlayServicesNotAvailableException googleplayservicesnotavailableexception)
        {
            throw new IOException(googleplayservicesnotavailableexception);
        }
        a1 = new a();
        intent = new Intent("com.google.android.gms.ads.identifier.service.START");
        intent.setPackage("com.google.android.gms");
        if (context.bindService(intent, a1, 1))
        {
            return a1;
        } else
        {
            throw new IOException("Connection failure");
        }
    }

    public static Info getAdvertisingIdInfo(Context context)
        throws IOException, IllegalStateException, GooglePlayServicesNotAvailableException, GooglePlayServicesRepairableException
    {
        hn.az("Calling this from your main thread can lead to deadlock");
        return a(context, g(context));
    }
}
