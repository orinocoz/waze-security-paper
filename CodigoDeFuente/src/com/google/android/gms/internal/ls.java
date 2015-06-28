// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.accounts.Account;
import android.app.Activity;
import android.app.PendingIntent;
import android.content.Intent;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.NotifyTransactionStatusRequest;

// Referenced classes of package com.google.android.gms.internal:
//            hc, hj, ln, lj, 
//            hn

public class ls extends hc
{
    private static class a extends lq.a
    {

        public void a(int j, FullWallet fullwallet, Bundle bundle)
        {
        }

        public void a(int j, MaskedWallet maskedwallet, Bundle bundle)
        {
        }

        public void a(int j, boolean flag, Bundle bundle)
        {
        }

        public void a(Status status, lj lj, Bundle bundle)
        {
        }

        public void i(int j, Bundle bundle)
        {
        }

        private a()
        {
        }

    }

    final class b extends a
    {

        private final int FT;
        final ls akJ;

        public void a(int j, FullWallet fullwallet, Bundle bundle)
        {
            PendingIntent pendingintent = null;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionresult = new ConnectionResult(j, pendingintent);
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ls.b(akJ), FT);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Intent intent = new Intent();
            byte byte0;
            PendingIntent pendingintent1;
            if (connectionresult.isSuccess())
            {
                byte0 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET", fullwallet);
            } else
            {
                if (j == 408)
                {
                    byte0 = 0;
                } else
                {
                    byte0 = 1;
                }
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", j);
            }
            pendingintent1 = ls.b(akJ).createPendingResult(FT, intent, 0x40000000);
            if (pendingintent1 == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onFullWalletLoaded");
                return;
            }
            try
            {
                pendingintent1.send(byte0);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void a(int j, MaskedWallet maskedwallet, Bundle bundle)
        {
            PendingIntent pendingintent = null;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT");
            }
            ConnectionResult connectionresult = new ConnectionResult(j, pendingintent);
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ls.b(akJ), FT);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Intent intent = new Intent();
            byte byte0;
            PendingIntent pendingintent1;
            if (connectionresult.isSuccess())
            {
                byte0 = -1;
                intent.putExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET", maskedwallet);
            } else
            {
                if (j == 408)
                {
                    byte0 = 0;
                } else
                {
                    byte0 = 1;
                }
                intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", j);
            }
            pendingintent1 = ls.b(akJ).createPendingResult(FT, intent, 0x40000000);
            if (pendingintent1 == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onMaskedWalletLoaded");
                return;
            }
            try
            {
                pendingintent1.send(byte0);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void a(int j, boolean flag, Bundle bundle)
        {
            Intent intent = new Intent();
            intent.putExtra("com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED", flag);
            PendingIntent pendingintent = ls.b(akJ).createPendingResult(FT, intent, 0x40000000);
            if (pendingintent == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onPreAuthorizationDetermined");
                return;
            }
            try
            {
                pendingintent.send(-1);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public void i(int j, Bundle bundle)
        {
            hn.b(bundle, "Bundle should not be null");
            ConnectionResult connectionresult = new ConnectionResult(j, (PendingIntent)bundle.getParcelable("com.google.android.gms.wallet.EXTRA_PENDING_INTENT"));
            if (connectionresult.hasResolution())
            {
                try
                {
                    connectionresult.startResolutionForResult(ls.b(akJ), FT);
                    return;
                }
                catch (android.content.IntentSender.SendIntentException sendintentexception)
                {
                    Log.w("WalletClientImpl", "Exception starting pending intent", sendintentexception);
                }
                return;
            }
            Log.e("WalletClientImpl", (new StringBuilder()).append("Create Wallet Objects confirmation UI will not be shown connection result: ").append(connectionresult).toString());
            Intent intent = new Intent();
            intent.putExtra("com.google.android.gms.wallet.EXTRA_ERROR_CODE", 413);
            PendingIntent pendingintent = ls.b(akJ).createPendingResult(FT, intent, 0x40000000);
            if (pendingintent == null)
            {
                Log.w("WalletClientImpl", "Null pending result returned for onWalletObjectsCreated");
                return;
            }
            try
            {
                pendingintent.send(1);
                return;
            }
            catch (android.app.PendingIntent.CanceledException canceledexception)
            {
                Log.w("WalletClientImpl", "Exception setting pending result", canceledexception);
            }
        }

        public b(int j)
        {
            akJ = ls.this;
            super();
            FT = j;
        }
    }


    private final int ajY;
    private final int mTheme;
    private final Activity oe;
    private final String yN;

    public ls(Activity activity, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, int i, String s, int j)
    {
        super(activity, looper, connectioncallbacks, onconnectionfailedlistener, new String[0]);
        oe = activity;
        ajY = i;
        yN = s;
        mTheme = j;
    }

    public static Bundle a(int i, String s, String s1, int j)
    {
        Bundle bundle = new Bundle();
        bundle.putInt("com.google.android.gms.wallet.EXTRA_ENVIRONMENT", i);
        bundle.putString("androidPackageName", s);
        if (!TextUtils.isEmpty(s1))
        {
            bundle.putParcelable("com.google.android.gms.wallet.EXTRA_BUYER_ACCOUNT", new Account(s1, "com.google"));
        }
        bundle.putInt("com.google.android.gms.wallet.EXTRA_THEME", j);
        return bundle;
    }

    static Activity b(ls ls1)
    {
        return ls1.oe;
    }

    private Bundle nd()
    {
        return a(ajY, oe.getPackageName(), yN, mTheme);
    }

    protected void a(hj hj1, hc.e e)
        throws RemoteException
    {
        hj1.a(e, 0x4d7808);
    }

    public void a(FullWalletRequest fullwalletrequest, int i)
    {
        b b1 = new b(i);
        Bundle bundle = nd();
        try
        {
            ((ln)fo()).a(fullwalletrequest, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException getting full wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    public void a(MaskedWalletRequest maskedwalletrequest, int i)
    {
        Bundle bundle = nd();
        b b1 = new b(i);
        try
        {
            ((ln)fo()).a(maskedwalletrequest, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException getting masked wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    public void a(NotifyTransactionStatusRequest notifytransactionstatusrequest)
    {
        Bundle bundle = nd();
        try
        {
            ((ln)fo()).a(notifytransactionstatusrequest, bundle);
            return;
        }
        catch (RemoteException remoteexception)
        {
            return;
        }
    }

    protected String bp()
    {
        return "com.google.android.gms.wallet.service.BIND";
    }

    protected String bq()
    {
        return "com.google.android.gms.wallet.internal.IOwService";
    }

    protected ln bu(IBinder ibinder)
    {
        return ln.a.bq(ibinder);
    }

    public void d(String s, String s1, int i)
    {
        Bundle bundle = nd();
        b b1 = new b(i);
        try
        {
            ((ln)fo()).a(s, s1, bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException changing masked wallet", remoteexception);
        }
        b1.a(8, null, Bundle.EMPTY);
    }

    public void dQ(int i)
    {
        Bundle bundle = nd();
        b b1 = new b(i);
        try
        {
            ((ln)fo()).a(bundle, b1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            Log.e("WalletClientImpl", "RemoteException during checkForPreAuthorization", remoteexception);
        }
        b1.a(8, false, Bundle.EMPTY);
    }

    protected IInterface x(IBinder ibinder)
    {
        return bu(ibinder);
    }
}
