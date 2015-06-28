// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.app.Activity;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;

// Referenced classes of package com.google.android.gms.internal:
//            cy, cr, cx, dh, 
//            ev, cz, da, dc, 
//            cs, cw

public class cv extends de.a
    implements ServiceConnection
{

    private dh oV;
    private cs oW;
    private final cy oX;
    private da oZ;
    private final Activity oe;
    private Context pf;
    private dc pg;
    private cw ph;
    private String pi;

    public cv(Activity activity)
    {
        pi = null;
        oe = activity;
        oX = cy.h(oe.getApplicationContext());
    }

    public static void a(Context context, boolean flag, cr cr1)
    {
        Intent intent = new Intent();
        intent.setClassName(context, "com.google.android.gms.ads.purchase.InAppPurchaseActivity");
        intent.putExtra("com.google.android.gms.ads.internal.purchase.useClientJar", flag);
        cr.a(intent, cr1);
        context.startActivity(intent);
    }

    private void a(String s, boolean flag, int i, Intent intent)
    {
        try
        {
            oV.a(new cx(pf, s, flag, i, intent, ph));
            return;
        }
        catch (RemoteException remoteexception)
        {
            ev.D("Fail to invoke PlayStorePurchaseListener.");
        }
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        if (i != 1001) goto _L2; else goto _L1
_L1:
        int k = cz.c(intent);
        if (j != -1 || k != 0)
        {
            break MISSING_BLOCK_LABEL_118;
        }
        if (!oZ.a(pi, j, intent)) goto _L4; else goto _L3
_L3:
        a(pg.getProductId(), true, j, intent);
_L5:
        pg.recordPlayBillingResolution(k);
        pi = null;
        oe.finish();
_L2:
        return;
_L4:
        a(pg.getProductId(), false, j, intent);
          goto _L5
        RemoteException remoteexception;
        remoteexception;
        ev.D("Fail to process purchase result.");
        pi = null;
        oe.finish();
        return;
        oX.a(ph);
        a(pg.getProductId(), false, j, intent);
          goto _L5
        Exception exception;
        exception;
        pi = null;
        oe.finish();
        throw exception;
    }

    public void onCreate()
    {
        cr cr1 = cr.b(oe.getIntent());
        oV = cr1.kV;
        oZ = cr1.kX;
        pg = cr1.oR;
        oW = new cs(oe.getApplicationContext());
        pf = cr1.oS;
        Activity activity = oe;
        Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
        oe.getApplicationContext();
        activity.bindService(intent, this, 1);
    }

    public void onDestroy()
    {
        oe.unbindService(this);
        oW.destroy();
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        oW.o(ibinder);
        Bundle bundle;
        PendingIntent pendingintent;
        pi = oZ.bh();
        bundle = oW.a(oe.getPackageName(), pg.getProductId(), pi);
        pendingintent = (PendingIntent)bundle.getParcelable("BUY_INTENT");
        if (pendingintent != null)
        {
            break MISSING_BLOCK_LABEL_108;
        }
        int i = cz.a(bundle);
        pg.recordPlayBillingResolution(i);
        a(pg.getProductId(), false, i, null);
        oe.finish();
        return;
        ph = new cw(pg.getProductId(), pi);
        oX.b(ph);
        oe.startIntentSenderForResult(pendingintent.getIntentSender(), 1001, new Intent(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue(), Integer.valueOf(0).intValue());
        return;
        Object obj;
        obj;
_L2:
        ev.c("Error when connecting in-app billing service", ((Throwable) (obj)));
        oe.finish();
        return;
        obj;
        if (true) goto _L2; else goto _L1
_L1:
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        ev.B("In-app billing service disconnected.");
        oW.destroy();
    }
}
