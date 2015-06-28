// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.app.PendingIntent;
import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesUtil;
import java.util.List;

// Referenced classes of package com.google.android.gms.common.api:
//            GoogleApiClient

public class d extends Fragment
    implements android.content.DialogInterface.OnCancelListener, GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener
{

    private GoogleApiClient.OnConnectionFailedListener DK;
    private GoogleApiClient Eq;
    private ConnectionResult Er;
    private boolean Es;

    public d()
    {
    }

    public void a(GoogleApiClient googleapiclient, GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        Eq = googleapiclient;
        Eq.registerConnectionCallbacks(this);
        DK = onconnectionfailedlistener;
        Eq.registerConnectionCallbacks(this);
        Eq.registerConnectionFailedListener(this);
    }

    public boolean isInitialized()
    {
        return Eq != null;
    }

    public void onActivityResult(int i, int j, Intent intent)
    {
        boolean flag = true;
        i;
        JVM INSTR tableswitch 1 2: default 28
    //                   1 64
    //                   2 51;
           goto _L1 _L2 _L3
_L1:
        flag = false;
_L4:
        if (flag)
        {
            Eq.connect();
            Es = false;
            return;
        } else
        {
            DK.onConnectionFailed(Er);
            return;
        }
_L3:
        if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(getActivity()) != 0) goto _L5; else goto _L4
_L5:
        break; /* Loop/switch isn't completed */
_L2:
        if (j != -1) goto _L1; else goto _L4
    }

    public void onCancel(DialogInterface dialoginterface)
    {
        Es = false;
        DK.onConnectionFailed(Er);
    }

    public void onConnected(Bundle bundle)
    {
        Es = false;
    }

    public void onConnectionFailed(ConnectionResult connectionresult)
    {
        Er = connectionresult;
        if (Es)
        {
            return;
        }
        int i = getActivity().getSupportFragmentManager().getFragments().indexOf(this);
        if (connectionresult.hasResolution())
        {
            int j = 1 + (i + 1 << 16);
            try
            {
                connectionresult.startResolutionForResult(getActivity(), j);
                return;
            }
            catch (android.content.IntentSender.SendIntentException sendintentexception)
            {
                Eq.connect();
            }
            return;
        }
        if (GooglePlayServicesUtil.isUserRecoverableError(connectionresult.getErrorCode()))
        {
            GooglePlayServicesUtil.b(connectionresult.getErrorCode(), getActivity(), this, 2, this);
            return;
        } else
        {
            DK.onConnectionFailed(Er);
            return;
        }
    }

    public void onConnectionSuspended(int i)
    {
    }

    public void onCreate(Bundle bundle)
    {
        super.onCreate(bundle);
        if (bundle != null)
        {
            Es = bundle.getBoolean("resolving_error", false);
            int i = bundle.getInt("connection_result_status");
            if (i != 0)
            {
                Er = new ConnectionResult(i, (PendingIntent)bundle.getParcelable("resolution_pending_intent"));
            }
        }
    }

    public void onSaveInstanceState(Bundle bundle)
    {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean("resolving_error", Es);
        if (Er != null)
        {
            bundle.putInt("connection_result_status", Er.getErrorCode());
            bundle.putParcelable("resolution_pending_intent", Er.getResolution());
        }
    }

    public void onStart()
    {
        super.onStart();
        if (!Es && Eq != null)
        {
            Eq.connect();
        }
    }

    public void onStop()
    {
        super.onStop();
        if (Eq != null)
        {
            Eq.disconnect();
        }
    }
}
