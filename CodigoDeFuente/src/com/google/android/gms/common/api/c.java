// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.FragmentManager;
import android.support.v4.app.FragmentTransaction;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hn;
import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;
import java.util.concurrent.locks.ReentrantLock;

// Referenced classes of package com.google.android.gms.common.api:
//            GoogleApiClient, Api, Status

final class com.google.android.gms.common.api.c
    implements GoogleApiClient
{
    static interface a
    {

        public abstract void b(c c1);
    }

    class b extends Handler
    {

        final com.google.android.gms.common.api.c Eh;

        public void handleMessage(Message message)
        {
            if (message.what != 1)
            {
                break MISSING_BLOCK_LABEL_75;
            }
            com.google.android.gms.common.api.c.a(Eh).lock();
            if (!Eh.isConnected() && !Eh.isConnecting())
            {
                Eh.connect();
            }
            com.google.android.gms.common.api.c.a(Eh).unlock();
            return;
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(Eh).unlock();
            throw exception;
            Log.wtf("GoogleApiClientImpl", "Don't know how to handle this message.");
            return;
        }

        b(Looper looper)
        {
            Eh = com.google.android.gms.common.api.c.this;
            super(looper);
        }
    }

    static interface c
    {

        public abstract void a(a a1);

        public abstract void b(Api.a a1)
            throws DeadObjectException;

        public abstract void cancel();

        public abstract int eB();

        public abstract Api.c ew();

        public abstract void m(Status status);
    }


    private final Looper DC;
    private final Lock DN = new ReentrantLock();
    private final Condition DO;
    private final hd DP;
    private final Fragment DQ;
    final Queue DR = new LinkedList();
    private ConnectionResult DS;
    private int DT;
    private int DU;
    private int DV;
    private boolean DW;
    private int DX;
    private long DY;
    final Handler DZ;
    private final a Dv = new a() {

        final com.google.android.gms.common.api.c Eh;

        public void b(c c1)
        {
            Eh.Ee.remove(c1);
        }

            
            {
                Eh = com.google.android.gms.common.api.c.this;
                super();
            }
    };
    private final Bundle Ea = new Bundle();
    private final Map Eb = new HashMap();
    private final List Ec;
    private boolean Ed;
    final Set Ee = Collections.newSetFromMap(new ConcurrentHashMap());
    final GoogleApiClient.ConnectionCallbacks Ef = new GoogleApiClient.ConnectionCallbacks() {

        final com.google.android.gms.common.api.c Eh;

        public void onConnected(Bundle bundle)
        {
            com.google.android.gms.common.api.c.a(Eh).lock();
            if (com.google.android.gms.common.api.c.b(Eh) != 1)
            {
                break MISSING_BLOCK_LABEL_45;
            }
            if (bundle == null)
            {
                break MISSING_BLOCK_LABEL_38;
            }
            com.google.android.gms.common.api.c.c(Eh).putAll(bundle);
            com.google.android.gms.common.api.c.d(Eh);
            com.google.android.gms.common.api.c.a(Eh).unlock();
            return;
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(Eh).unlock();
            throw exception;
        }

        public void onConnectionSuspended(int j)
        {
            com.google.android.gms.common.api.c.a(Eh).lock();
            com.google.android.gms.common.api.c.a(Eh, j);
            j;
            JVM INSTR tableswitch 1 2: default 44
        //                       1 82
        //                       2 57;
               goto _L1 _L2 _L3
_L1:
            com.google.android.gms.common.api.c.a(Eh).unlock();
            return;
_L3:
            Eh.connect();
              goto _L1
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(Eh).unlock();
            throw exception;
_L2:
            boolean flag = com.google.android.gms.common.api.c.e(Eh);
            if (flag)
            {
                com.google.android.gms.common.api.c.a(Eh).unlock();
                return;
            }
            com.google.android.gms.common.api.c.b(Eh, 2);
            Eh.DZ.sendMessageDelayed(Eh.DZ.obtainMessage(1), com.google.android.gms.common.api.c.f(Eh));
              goto _L1
        }

            
            {
                Eh = com.google.android.gms.common.api.c.this;
                super();
            }
    };
    private final com.google.android.gms.internal.hd.b Eg = new com.google.android.gms.internal.hd.b() {

        final com.google.android.gms.common.api.c Eh;

        public boolean eJ()
        {
            return com.google.android.gms.common.api.c.g(Eh);
        }

        public Bundle ea()
        {
            return null;
        }

        public boolean isConnected()
        {
            return Eh.isConnected();
        }

            
            {
                Eh = com.google.android.gms.common.api.c.this;
                super();
            }
    };

    public com.google.android.gms.common.api.c(Context context, Looper looper, gz gz1, Map map, Fragment fragment, Set set, Set set1)
    {
        DO = DN.newCondition();
        DU = 4;
        DV = 0;
        DW = false;
        DY = 5000L;
        DP = new hd(context, looper, Eg);
        DQ = fragment;
        DC = looper;
        DZ = new b(looper);
        GoogleApiClient.ConnectionCallbacks connectioncallbacks;
        for (Iterator iterator = set.iterator(); iterator.hasNext(); DP.registerConnectionCallbacks(connectioncallbacks))
        {
            connectioncallbacks = (GoogleApiClient.ConnectionCallbacks)iterator.next();
        }

        GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener;
        for (Iterator iterator1 = set1.iterator(); iterator1.hasNext(); DP.registerConnectionFailedListener(onconnectionfailedlistener))
        {
            onconnectionfailedlistener = (GoogleApiClient.OnConnectionFailedListener)iterator1.next();
        }

        Api api;
        Api.b b1;
        Object obj;
        for (Iterator iterator2 = map.keySet().iterator(); iterator2.hasNext(); Eb.put(api.ew(), a(b1, obj, context, looper, gz1, Ef, new GoogleApiClient.OnConnectionFailedListener(b1) {

        final com.google.android.gms.common.api.c Eh;
        final Api.b Ei;

        public void onConnectionFailed(ConnectionResult connectionresult)
        {
            com.google.android.gms.common.api.c.a(Eh).lock();
            if (com.google.android.gms.common.api.c.h(Eh) == null || Ei.getPriority() < com.google.android.gms.common.api.c.i(Eh))
            {
                com.google.android.gms.common.api.c.a(Eh, connectionresult);
                com.google.android.gms.common.api.c.c(Eh, Ei.getPriority());
            }
            com.google.android.gms.common.api.c.d(Eh);
            com.google.android.gms.common.api.c.a(Eh).unlock();
            return;
            Exception exception;
            exception;
            com.google.android.gms.common.api.c.a(Eh).unlock();
            throw exception;
        }

            
            {
                Eh = com.google.android.gms.common.api.c.this;
                Ei = b1;
                super();
            }
    })))
        {
            api = (Api)iterator2.next();
            b1 = api.eu();
            obj = map.get(api);
        }

        Ec = Collections.unmodifiableList(gz1.fg());
    }

    static ConnectionResult a(com.google.android.gms.common.api.c c1, ConnectionResult connectionresult)
    {
        c1.DS = connectionresult;
        return connectionresult;
    }

    private static Api.a a(Api.b b1, Object obj, Context context, Looper looper, gz gz1, GoogleApiClient.ConnectionCallbacks connectioncallbacks, GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        return b1.a(context, looper, gz1, obj, connectioncallbacks, onconnectionfailedlistener);
    }

    static Lock a(com.google.android.gms.common.api.c c1)
    {
        return c1.DN;
    }

    private void a(c c1)
        throws DeadObjectException
    {
        boolean flag;
        flag = true;
        DN.lock();
        Exception exception;
        boolean flag1;
        if (!isConnected() && !eH())
        {
            flag1 = false;
        } else
        {
            flag1 = flag;
        }
        hn.a(flag1, "GoogleApiClient is not connected yet.");
        if (c1.ew() == null)
        {
            flag = false;
        }
        hn.b(flag, "This task can not be executed or enqueued (it's probably a Batch or malformed)");
        Ee.add(c1);
        c1.a(Dv);
        if (!eH())
        {
            break MISSING_BLOCK_LABEL_114;
        }
        c1.m(new Status(8));
        DN.unlock();
        return;
        c1.b(a(c1.ew()));
        DN.unlock();
        return;
        exception;
        DN.unlock();
        throw exception;
    }

    static void a(com.google.android.gms.common.api.c c1, int j)
    {
        c1.aa(j);
    }

    private void aa(int j)
    {
        DN.lock();
        if (DU == 3)
        {
            break MISSING_BLOCK_LABEL_327;
        }
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_190;
        }
        if (isConnecting())
        {
            Iterator iterator2 = DR.iterator();
            do
            {
                if (!iterator2.hasNext())
                {
                    break;
                }
                c c1 = (c)iterator2.next();
                if (c1.eB() != 1)
                {
                    c1.cancel();
                    iterator2.remove();
                }
            } while (true);
            break MISSING_BLOCK_LABEL_111;
        }
        break MISSING_BLOCK_LABEL_102;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
        DR.clear();
        for (Iterator iterator = Ee.iterator(); iterator.hasNext(); ((c)iterator.next()).cancel()) { }
        Ee.clear();
        if (DS != null || DR.isEmpty())
        {
            break MISSING_BLOCK_LABEL_190;
        }
        DW = true;
        DN.unlock();
        return;
        boolean flag;
        boolean flag1;
        flag = isConnecting();
        flag1 = isConnected();
        DU = 3;
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_231;
        }
        if (j != -1)
        {
            break MISSING_BLOCK_LABEL_222;
        }
        DS = null;
        DO.signalAll();
        Ed = false;
        Iterator iterator1 = Eb.values().iterator();
        do
        {
            if (!iterator1.hasNext())
            {
                break;
            }
            Api.a a1 = (Api.a)iterator1.next();
            if (a1.isConnected())
            {
                a1.disconnect();
            }
        } while (true);
        Ed = true;
        DU = 4;
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_327;
        }
        if (j == -1)
        {
            break MISSING_BLOCK_LABEL_322;
        }
        DP.ao(j);
        Ed = false;
        DN.unlock();
        return;
    }

    static int b(com.google.android.gms.common.api.c c1)
    {
        return c1.DU;
    }

    static int b(com.google.android.gms.common.api.c c1, int j)
    {
        c1.DV = j;
        return j;
    }

    static int c(com.google.android.gms.common.api.c c1, int j)
    {
        c1.DT = j;
        return j;
    }

    static Bundle c(com.google.android.gms.common.api.c c1)
    {
        return c1.Ea;
    }

    static void d(com.google.android.gms.common.api.c c1)
    {
        c1.eF();
    }

    static boolean e(com.google.android.gms.common.api.c c1)
    {
        return c1.eH();
    }

    private void eF()
    {
        DN.lock();
        DX = -1 + DX;
        if (DX != 0) goto _L2; else goto _L1
_L1:
        if (DS == null) goto _L4; else goto _L3
_L3:
        DW = false;
        aa(3);
        if (eH())
        {
            DV = -1 + DV;
        }
        if (!eH()) goto _L6; else goto _L5
_L5:
        DZ.sendMessageDelayed(DZ.obtainMessage(1), DY);
_L7:
        Ed = false;
_L2:
        DN.unlock();
        return;
_L6:
        DP.a(DS);
          goto _L7
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
_L4:
label0:
        {
            DU = 2;
            eI();
            DO.signalAll();
            eG();
            if (!DW)
            {
                break label0;
            }
            DW = false;
            aa(-1);
        }
          goto _L2
        if (!Ea.isEmpty())
        {
            break MISSING_BLOCK_LABEL_193;
        }
        Bundle bundle = null;
_L8:
        DP.c(bundle);
          goto _L2
        bundle = Ea;
          goto _L8
    }

    private void eG()
    {
        boolean flag;
        Exception exception;
        boolean flag1;
        DeadObjectException deadobjectexception;
        if (isConnected() || eH())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "GoogleApiClient is not connected yet.");
        DN.lock();
        flag1 = DR.isEmpty();
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_98;
        }
        a((c)DR.remove());
        break MISSING_BLOCK_LABEL_31;
        deadobjectexception;
        Log.w("GoogleApiClientImpl", "Service died while flushing queue", deadobjectexception);
        break MISSING_BLOCK_LABEL_31;
        exception;
        DN.unlock();
        throw exception;
        DN.unlock();
        return;
    }

    private boolean eH()
    {
        DN.lock();
        int j = DV;
        boolean flag;
        if (j != 0)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        DN.unlock();
        return flag;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    private void eI()
    {
        DN.lock();
        DV = 0;
        DZ.removeMessages(1);
        DN.unlock();
        return;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    static long f(com.google.android.gms.common.api.c c1)
    {
        return c1.DY;
    }

    static boolean g(com.google.android.gms.common.api.c c1)
    {
        return c1.Ed;
    }

    static ConnectionResult h(com.google.android.gms.common.api.c c1)
    {
        return c1.DS;
    }

    static int i(com.google.android.gms.common.api.c c1)
    {
        return c1.DT;
    }

    public Api.a a(Api.c c1)
    {
        Api.a a1 = (Api.a)Eb.get(c1);
        hn.b(a1, "Appropriate Api was not requested.");
        return a1;
    }

    public a.b a(a.b b1)
    {
        DN.lock();
        if (!isConnected()) goto _L2; else goto _L1
_L1:
        b(b1);
_L4:
        DN.unlock();
        return b1;
_L2:
        DR.add(b1);
        if (true) goto _L4; else goto _L3
_L3:
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    public a.b b(a.b b1)
    {
        boolean flag;
        if (isConnected() || eH())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "GoogleApiClient is not connected yet.");
        eG();
        try
        {
            a(b1);
        }
        catch (DeadObjectException deadobjectexception)
        {
            aa(1);
            return b1;
        }
        return b1;
    }

    public ConnectionResult blockingConnect()
    {
        boolean flag;
        boolean flag1;
        InterruptedException interruptedexception;
        ConnectionResult connectionresult3;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "blockingConnect must not be called on the UI thread");
        DN.lock();
        connect();
_L1:
        flag1 = isConnecting();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_89;
        }
        DO.await();
          goto _L1
        interruptedexception;
        Thread.currentThread().interrupt();
        connectionresult3 = new ConnectionResult(15, null);
        DN.unlock();
        return connectionresult3;
        ConnectionResult connectionresult2;
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_113;
        }
        connectionresult2 = ConnectionResult.CP;
        DN.unlock();
        return connectionresult2;
        ConnectionResult connectionresult1;
        if (DS == null)
        {
            break MISSING_BLOCK_LABEL_138;
        }
        connectionresult1 = DS;
        DN.unlock();
        return connectionresult1;
        ConnectionResult connectionresult = new ConnectionResult(13, null);
        DN.unlock();
        return connectionresult;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    public ConnectionResult blockingConnect(long l, TimeUnit timeunit)
    {
        boolean flag;
        long l1;
        boolean flag1;
        ConnectionResult connectionresult4;
        if (Looper.myLooper() != Looper.getMainLooper())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "blockingConnect must not be called on the UI thread");
        DN.lock();
        connect();
        l1 = timeunit.toNanos(l);
_L2:
        flag1 = isConnecting();
        if (!flag1)
        {
            break MISSING_BLOCK_LABEL_133;
        }
        l1 = DO.awaitNanos(l1);
        if (l1 > 0L) goto _L2; else goto _L1
_L1:
        connectionresult4 = new ConnectionResult(14, null);
        DN.unlock();
        return connectionresult4;
        InterruptedException interruptedexception;
        interruptedexception;
        ConnectionResult connectionresult3;
        Thread.currentThread().interrupt();
        connectionresult3 = new ConnectionResult(15, null);
        DN.unlock();
        return connectionresult3;
        ConnectionResult connectionresult2;
        if (!isConnected())
        {
            break MISSING_BLOCK_LABEL_157;
        }
        connectionresult2 = ConnectionResult.CP;
        DN.unlock();
        return connectionresult2;
        ConnectionResult connectionresult1;
        if (DS == null)
        {
            break MISSING_BLOCK_LABEL_182;
        }
        connectionresult1 = DS;
        DN.unlock();
        return connectionresult1;
        ConnectionResult connectionresult = new ConnectionResult(13, null);
        DN.unlock();
        return connectionresult;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    public void connect()
    {
        DN.lock();
        boolean flag;
        DW = false;
        if (isConnected())
        {
            break MISSING_BLOCK_LABEL_30;
        }
        flag = isConnecting();
        if (!flag)
        {
            break MISSING_BLOCK_LABEL_40;
        }
        DN.unlock();
        return;
        Ed = true;
        DS = null;
        DU = 1;
        Ea.clear();
        DX = Eb.size();
        for (Iterator iterator = Eb.values().iterator(); iterator.hasNext(); ((Api.a)iterator.next()).connect()) { }
        break MISSING_BLOCK_LABEL_128;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
        DN.unlock();
        return;
    }

    public void disconnect()
    {
        eI();
        aa(-1);
    }

    public Looper getLooper()
    {
        return DC;
    }

    public boolean isConnected()
    {
        DN.lock();
        int j = DU;
        boolean flag;
        if (j == 2)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        DN.unlock();
        return flag;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    public boolean isConnecting()
    {
        boolean flag;
        flag = true;
        DN.lock();
        int j = DU;
        if (j != flag)
        {
            flag = false;
        }
        DN.unlock();
        return flag;
        Exception exception;
        exception;
        DN.unlock();
        throw exception;
    }

    public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        return DP.isConnectionCallbacksRegistered(connectioncallbacks);
    }

    public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        return DP.isConnectionFailedListenerRegistered(onconnectionfailedlistener);
    }

    public void reconnect()
    {
        disconnect();
        connect();
    }

    public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        DP.registerConnectionCallbacks(connectioncallbacks);
    }

    public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        DP.registerConnectionFailedListener(onconnectionfailedlistener);
    }

    public void stopAutoManage()
    {
        boolean flag;
        if (DQ != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.a(flag, "Called stopAutoManage but automatic lifecycle management is not enabled.");
        if (DQ.getActivity() != null)
        {
            DQ.getActivity().getSupportFragmentManager().beginTransaction().remove(DQ).commit();
            disconnect();
        }
    }

    public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks connectioncallbacks)
    {
        DP.unregisterConnectionCallbacks(connectioncallbacks);
    }

    public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
    {
        DP.unregisterConnectionFailedListener(onconnectionfailedlistener);
    }
}
