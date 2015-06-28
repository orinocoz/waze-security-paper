// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.data.DataHolder;
import com.google.android.gms.internal.hc;
import com.google.android.gms.internal.hh;
import com.google.android.gms.internal.hj;
import com.google.android.gms.internal.if;
import com.google.android.gms.internal.kq;
import com.google.android.gms.internal.kt;
import com.google.android.gms.plus.model.moments.Moment;
import com.google.android.gms.plus.model.moments.MomentBuffer;
import com.google.android.gms.plus.model.people.Person;
import com.google.android.gms.plus.model.people.PersonBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

// Referenced classes of package com.google.android.gms.plus.internal:
//            h, d, a

public class com.google.android.gms.plus.internal.e extends hc
{
    final class a extends com.google.android.gms.plus.internal.a
    {

        private final com.google.android.gms.common.api.a.d abI;
        final com.google.android.gms.plus.internal.e abJ;

        public void am(Status status)
        {
            abJ.a(abJ. new d(abI, status));
        }

        public a(com.google.android.gms.common.api.a.d d1)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super();
            abI = d1;
        }
    }

    final class b extends com.google.android.gms.plus.internal.a
    {

        private final com.google.android.gms.common.api.a.d abI;
        final com.google.android.gms.plus.internal.e abJ;

        public void a(DataHolder dataholder, String s, String s1)
        {
            PendingIntent pendingintent;
            Status status;
            DataHolder dataholder1;
            if (dataholder.eP() != null)
            {
                pendingintent = (PendingIntent)dataholder.eP().getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            status = new Status(dataholder.getStatusCode(), null, pendingintent);
            if (!status.isSuccess() && dataholder != null)
            {
                if (!dataholder.isClosed())
                {
                    dataholder.close();
                }
                dataholder1 = null;
            } else
            {
                dataholder1 = dataholder;
            }
            abJ.a(abJ. new c(abI, status, dataholder1, s, s1));
        }

        public b(com.google.android.gms.common.api.a.d d1)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super();
            abI = d1;
        }
    }

    final class c extends com.google.android.gms.internal.hc.d
        implements com.google.android.gms.plus.Moments.LoadMomentsResult
    {

        private final String HP;
        final com.google.android.gms.plus.internal.e abJ;
        private final String abK;
        private MomentBuffer abL;
        private final Status yw;

        protected void a(com.google.android.gms.common.api.a.d d1, DataHolder dataholder)
        {
            MomentBuffer momentbuffer;
            if (dataholder != null)
            {
                momentbuffer = new MomentBuffer(dataholder);
            } else
            {
                momentbuffer = null;
            }
            abL = momentbuffer;
            d1.a(this);
        }

        protected volatile void a(Object obj, DataHolder dataholder)
        {
            a((com.google.android.gms.common.api.a.d)obj, dataholder);
        }

        public MomentBuffer getMomentBuffer()
        {
            return abL;
        }

        public String getNextPageToken()
        {
            return HP;
        }

        public Status getStatus()
        {
            return yw;
        }

        public String getUpdated()
        {
            return abK;
        }

        public void release()
        {
            if (abL != null)
            {
                abL.close();
            }
        }

        public c(com.google.android.gms.common.api.a.d d1, Status status, DataHolder dataholder, String s, String s1)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super(com.google.android.gms.plus.internal.e.this, d1, dataholder);
            yw = status;
            HP = s;
            abK = s1;
        }
    }

    final class d extends com.google.android.gms.internal.hc.b
    {

        final com.google.android.gms.plus.internal.e abJ;
        private final Status yw;

        protected void d(Object obj)
        {
            n((com.google.android.gms.common.api.a.d)obj);
        }

        protected void fp()
        {
        }

        protected void n(com.google.android.gms.common.api.a.d d1)
        {
            if (d1 != null)
            {
                d1.a(yw);
            }
        }

        public d(com.google.android.gms.common.api.a.d d1, Status status)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super(com.google.android.gms.plus.internal.e.this, d1);
            yw = status;
        }
    }

    final class e extends com.google.android.gms.plus.internal.a
    {

        private final com.google.android.gms.common.api.a.d abI;
        final com.google.android.gms.plus.internal.e abJ;

        public void a(DataHolder dataholder, String s)
        {
            PendingIntent pendingintent;
            Status status;
            DataHolder dataholder1;
            if (dataholder.eP() != null)
            {
                pendingintent = (PendingIntent)dataholder.eP().getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            status = new Status(dataholder.getStatusCode(), null, pendingintent);
            if (!status.isSuccess() && dataholder != null)
            {
                if (!dataholder.isClosed())
                {
                    dataholder.close();
                }
                dataholder1 = null;
            } else
            {
                dataholder1 = dataholder;
            }
            abJ.a(abJ. new f(abI, status, dataholder1, s));
        }

        public e(com.google.android.gms.common.api.a.d d1)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super();
            abI = d1;
        }
    }

    final class f extends com.google.android.gms.internal.hc.d
        implements com.google.android.gms.plus.People.LoadPeopleResult
    {

        private final String HP;
        final com.google.android.gms.plus.internal.e abJ;
        private PersonBuffer abM;
        private final Status yw;

        protected void a(com.google.android.gms.common.api.a.d d1, DataHolder dataholder)
        {
            PersonBuffer personbuffer;
            if (dataholder != null)
            {
                personbuffer = new PersonBuffer(dataholder);
            } else
            {
                personbuffer = null;
            }
            abM = personbuffer;
            d1.a(this);
        }

        protected volatile void a(Object obj, DataHolder dataholder)
        {
            a((com.google.android.gms.common.api.a.d)obj, dataholder);
        }

        public String getNextPageToken()
        {
            return HP;
        }

        public PersonBuffer getPersonBuffer()
        {
            return abM;
        }

        public Status getStatus()
        {
            return yw;
        }

        public void release()
        {
            if (abM != null)
            {
                abM.close();
            }
        }

        public f(com.google.android.gms.common.api.a.d d1, Status status, DataHolder dataholder, String s)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super(com.google.android.gms.plus.internal.e.this, d1, dataholder);
            yw = status;
            HP = s;
        }
    }

    final class g extends com.google.android.gms.plus.internal.a
    {

        private final com.google.android.gms.common.api.a.d abI;
        final com.google.android.gms.plus.internal.e abJ;

        public void h(int i, Bundle bundle)
        {
            PendingIntent pendingintent;
            Status status;
            if (bundle != null)
            {
                pendingintent = (PendingIntent)bundle.getParcelable("pendingIntent");
            } else
            {
                pendingintent = null;
            }
            status = new Status(i, null, pendingintent);
            abJ.a(abJ. new h(abI, status));
        }

        public g(com.google.android.gms.common.api.a.d d1)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super();
            abI = d1;
        }
    }

    final class h extends com.google.android.gms.internal.hc.b
    {

        final com.google.android.gms.plus.internal.e abJ;
        private final Status yw;

        protected void d(Object obj)
        {
            n((com.google.android.gms.common.api.a.d)obj);
        }

        protected void fp()
        {
        }

        protected void n(com.google.android.gms.common.api.a.d d1)
        {
            abJ.disconnect();
            if (d1 != null)
            {
                d1.a(yw);
            }
        }

        public h(com.google.android.gms.common.api.a.d d1, Status status)
        {
            abJ = com.google.android.gms.plus.internal.e.this;
            super(com.google.android.gms.plus.internal.e.this, d1);
            yw = status;
        }
    }


    private Person abG;
    private final com.google.android.gms.plus.internal.h abH;

    public com.google.android.gms.plus.internal.e(Context context, Looper looper, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener, com.google.android.gms.plus.internal.h h1)
    {
        super(context, looper, connectioncallbacks, onconnectionfailedlistener, h1.jU());
        abH = h1;
    }

    public com.google.android.gms.plus.internal.e(Context context, com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener onconnectionfailedlistener, com.google.android.gms.plus.internal.h h1)
    {
        this(context, context.getMainLooper(), ((com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks) (new com.google.android.gms.internal.hc.c(connectioncallbacks))), ((com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener) (new com.google.android.gms.internal.hc.g(onconnectionfailedlistener))), h1);
    }

    public hh a(com.google.android.gms.common.api.a.d d1, int i, String s)
    {
        ci();
        e e1 = new e(d1);
        hh hh;
        try
        {
            hh = ((com.google.android.gms.plus.internal.d)fo()).a(e1, 1, i, -1, s);
        }
        catch (RemoteException remoteexception)
        {
            e1.a(DataHolder.af(8), null);
            return null;
        }
        return hh;
    }

    protected void a(int i, IBinder ibinder, Bundle bundle)
    {
        if (i == 0 && bundle != null && bundle.containsKey("loaded_person"))
        {
            abG = kt.i(bundle.getByteArray("loaded_person"));
        }
        super.a(i, ibinder, bundle);
    }

    public void a(com.google.android.gms.common.api.a.d d1, int i, String s, Uri uri, String s1, String s2)
    {
        ci();
        b b1;
        if (d1 != null)
        {
            b1 = new b(d1);
        } else
        {
            b1 = null;
        }
        try
        {
            ((com.google.android.gms.plus.internal.d)fo()).a(b1, i, s, uri, s1, s2);
            return;
        }
        catch (RemoteException remoteexception)
        {
            b1.a(DataHolder.af(8), null, null);
        }
    }

    public void a(com.google.android.gms.common.api.a.d d1, Moment moment)
    {
        ci();
        a a1;
        if (d1 != null)
        {
            a1 = new a(d1);
        } else
        {
            a1 = null;
        }
        try
        {
            if if1 = com.google.android.gms.internal.if.a((kq)moment);
            ((com.google.android.gms.plus.internal.d)fo()).a(a1, if1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            if (a1 == null)
            {
                throw new IllegalStateException(remoteexception);
            } else
            {
                a1.am(new Status(8, null, null));
                return;
            }
        }
    }

    public void a(com.google.android.gms.common.api.a.d d1, Collection collection)
    {
        ci();
        e e1 = new e(d1);
        try
        {
            ((com.google.android.gms.plus.internal.d)fo()).a(e1, new ArrayList(collection));
            return;
        }
        catch (RemoteException remoteexception)
        {
            e1.a(DataHolder.af(8), null);
        }
    }

    protected void a(hj hj1, com.google.android.gms.internal.hc.e e1)
        throws RemoteException
    {
        Bundle bundle = abH.kc();
        bundle.putStringArray("request_visible_actions", abH.jV());
        hj1.a(e1, 0x4d7808, abH.jY(), abH.jX(), fn(), abH.getAccountName(), bundle);
    }

    protected com.google.android.gms.plus.internal.d bn(IBinder ibinder)
    {
        return com.google.android.gms.plus.internal.d.a.bm(ibinder);
    }

    protected String bp()
    {
        return "com.google.android.gms.plus.service.START";
    }

    protected String bq()
    {
        return "com.google.android.gms.plus.internal.IPlusService";
    }

    public boolean by(String s)
    {
        return Arrays.asList(fn()).contains(s);
    }

    public void clearDefaultAccount()
    {
        ci();
        try
        {
            abG = null;
            ((com.google.android.gms.plus.internal.d)fo()).clearDefaultAccount();
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
    }

    public void d(com.google.android.gms.common.api.a.d d1, String as[])
    {
        a(d1, Arrays.asList(as));
    }

    public String getAccountName()
    {
        ci();
        String s;
        try
        {
            s = ((com.google.android.gms.plus.internal.d)fo()).getAccountName();
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
        return s;
    }

    public Person getCurrentPerson()
    {
        ci();
        return abG;
    }

    public void k(com.google.android.gms.common.api.a.d d1)
    {
        a(d1, 20, null, null, null, "me");
    }

    public void l(com.google.android.gms.common.api.a.d d1)
    {
        ci();
        e e1 = new e(d1);
        try
        {
            ((com.google.android.gms.plus.internal.d)fo()).a(e1, 2, 1, -1, null);
            return;
        }
        catch (RemoteException remoteexception)
        {
            e1.a(DataHolder.af(8), null);
        }
    }

    public void m(com.google.android.gms.common.api.a.d d1)
    {
        ci();
        clearDefaultAccount();
        g g1 = new g(d1);
        try
        {
            ((com.google.android.gms.plus.internal.d)fo()).b(g1);
            return;
        }
        catch (RemoteException remoteexception)
        {
            g1.h(8, null);
        }
    }

    public hh r(com.google.android.gms.common.api.a.d d1, String s)
    {
        return a(d1, 0, s);
    }

    public void removeMoment(String s)
    {
        ci();
        try
        {
            ((com.google.android.gms.plus.internal.d)fo()).removeMoment(s);
            return;
        }
        catch (RemoteException remoteexception)
        {
            throw new IllegalStateException(remoteexception);
        }
    }

    protected IInterface x(IBinder ibinder)
    {
        return bn(ibinder);
    }
}
