// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.RemoteException;
import android.os.SystemClock;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            en, cs, cy, eu, 
//            ev, cw, cz, dh, 
//            da, cx

public class ct extends en
    implements ServiceConnection
{

    private final Object lq = new Object();
    private Context mContext;
    private boolean oU;
    private dh oV;
    private cs oW;
    private cy oX;
    private List oY;
    private da oZ;

    public ct(Context context, dh dh, da da)
    {
        oU = false;
        oY = null;
        mContext = context;
        oV = dh;
        oZ = da;
        oW = new cs(context);
        oX = cy.h(mContext);
        oY = oX.d(10L);
    }

    static da a(ct ct1)
    {
        return ct1.oZ;
    }

    private void a(cw cw1, String s, String s1)
    {
        Intent intent = new Intent();
        intent.putExtra("RESPONSE_CODE", 0);
        intent.putExtra("INAPP_PURCHASE_DATA", s);
        intent.putExtra("INAPP_DATA_SIGNATURE", s1);
        eu.ss.post(new Runnable(cw1, intent) {

            final cw pa;
            final Intent pb;
            final ct pc;

            public void run()
            {
                if (ct.a(pc).a(pa.pk, -1, pb))
                {
                    ct.c(pc).a(new cx(ct.b(pc), pa.pl, true, -1, pb, pa));
                    return;
                }
                try
                {
                    ct.c(pc).a(new cx(ct.b(pc), pa.pl, false, -1, pb, pa));
                    return;
                }
                catch (RemoteException remoteexception)
                {
                    ev.D("Fail to verify and dispatch pending transaction");
                }
                return;
            }

            
            {
                pc = ct.this;
                pa = cw1;
                pb = intent;
                super();
            }
        });
    }

    static Context b(ct ct1)
    {
        return ct1.mContext;
    }

    private void b(long l)
    {
        do
        {
            if (!c(l))
            {
                ev.D("Timeout waiting for pending transaction to be processed.");
            }
        } while (!oU);
    }

    private void bd()
    {
        if (!oY.isEmpty()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        HashMap hashmap;
        String s;
        hashmap = new HashMap();
        cw cw2;
        for (Iterator iterator = oY.iterator(); iterator.hasNext(); hashmap.put(cw2.pl, cw2))
        {
            cw2 = (cw)iterator.next();
        }

        s = null;
_L7:
        Bundle bundle = oW.b(mContext.getPackageName(), s);
          goto _L3
_L5:
        Iterator iterator1 = hashmap.keySet().iterator();
        while (iterator1.hasNext()) 
        {
            String s2 = (String)iterator1.next();
            oX.a((cw)hashmap.get(s2));
        }
          goto _L1
_L3:
        if (bundle == null || cz.a(bundle) != 0) goto _L5; else goto _L4
_L4:
        String s1;
        ArrayList arraylist = bundle.getStringArrayList("INAPP_PURCHASE_ITEM_LIST");
        ArrayList arraylist1 = bundle.getStringArrayList("INAPP_PURCHASE_DATA_LIST");
        ArrayList arraylist2 = bundle.getStringArrayList("INAPP_DATA_SIGNATURE_LIST");
        s1 = bundle.getString("INAPP_CONTINUATION_TOKEN");
        for (int i = 0; i < arraylist.size(); i++)
        {
            if (!hashmap.containsKey(arraylist.get(i)))
            {
                continue;
            }
            String s3 = (String)arraylist.get(i);
            String s4 = (String)arraylist1.get(i);
            String s5 = (String)arraylist2.get(i);
            cw cw1 = (cw)hashmap.get(s3);
            String s6 = cz.p(s4);
            if (cw1.pk.equals(s6))
            {
                a(cw1, s4, s5);
                hashmap.remove(s3);
            }
        }

        if (s1 == null || hashmap.isEmpty()) goto _L5; else goto _L6
_L6:
        s = s1;
          goto _L7
    }

    static dh c(ct ct1)
    {
        return ct1.oV;
    }

    private boolean c(long l)
    {
        long l1 = 60000L - (SystemClock.elapsedRealtime() - l);
        if (l1 <= 0L)
        {
            return false;
        }
        try
        {
            lq.wait(l1);
        }
        catch (InterruptedException interruptedexception)
        {
            ev.D("waitWithTimeout_lock interrupted");
        }
        return true;
    }

    public void bc()
    {
        synchronized (lq)
        {
            Context context = mContext;
            Intent intent = new Intent("com.android.vending.billing.InAppBillingService.BIND");
            mContext;
            context.bindService(intent, this, 1);
            b(SystemClock.elapsedRealtime());
            mContext.unbindService(this);
            oW.destroy();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceConnected(ComponentName componentname, IBinder ibinder)
    {
        synchronized (lq)
        {
            oW.o(ibinder);
            bd();
            oU = true;
            lq.notify();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public void onServiceDisconnected(ComponentName componentname)
    {
        ev.B("In-app billing service disconnected.");
        oW.destroy();
    }

    public void onStop()
    {
        synchronized (lq)
        {
            mContext.unbindService(this);
            oW.destroy();
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }
}
