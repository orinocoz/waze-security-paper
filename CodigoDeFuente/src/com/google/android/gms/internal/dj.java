// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.content.Intent;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.dynamic.g;

// Referenced classes of package com.google.android.gms.internal:
//            ev, cv, df, de

public final class dj extends g
{
    private static final class a extends Exception
    {

        public a(String s)
        {
            super(s);
        }
    }


    private static final dj pt = new dj();

    private dj()
    {
        super("com.google.android.gms.ads.InAppPurchaseManagerCreatorImpl");
    }

    private static boolean b(Activity activity)
        throws a
    {
        Intent intent = activity.getIntent();
        if (!intent.hasExtra("com.google.android.gms.ads.internal.purchase.useClientJar"))
        {
            throw new a("InAppPurchaseManager requires the useClientJar flag in intent extras.");
        } else
        {
            return intent.getBooleanExtra("com.google.android.gms.ads.internal.purchase.useClientJar", false);
        }
    }

    public static de d(Activity activity)
    {
        de de;
        try
        {
            if (b(activity))
            {
                ev.z("Using AdOverlay from the client jar.");
                return new cv(activity);
            }
            de = pt.e(activity);
        }
        catch (a a1)
        {
            ev.D(a1.getMessage());
            return null;
        }
        return de;
    }

    private de e(Activity activity)
    {
        de de;
        try
        {
            com.google.android.gms.dynamic.d d1 = com.google.android.gms.dynamic.e.h(activity);
            de = com.google.android.gms.internal.de.a.r(((df)D(activity)).b(d1));
        }
        catch (RemoteException remoteexception)
        {
            ev.c("Could not create remote InAppPurchaseManager.", remoteexception);
            return null;
        }
        catch (com.google.android.gms.dynamic.g.a a1)
        {
            ev.c("Could not create remote InAppPurchaseManager.", a1);
            return null;
        }
        return de;
    }

    protected Object d(IBinder ibinder)
    {
        return v(ibinder);
    }

    protected df v(IBinder ibinder)
    {
        return df.a.s(ibinder);
    }

}
