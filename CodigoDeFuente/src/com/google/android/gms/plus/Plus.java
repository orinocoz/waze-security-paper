// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.plus;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hn;
import com.google.android.gms.internal.kj;
import com.google.android.gms.internal.kk;
import com.google.android.gms.internal.kl;
import com.google.android.gms.internal.km;
import com.google.android.gms.internal.kn;
import com.google.android.gms.plus.internal.PlusCommonExtras;
import com.google.android.gms.plus.internal.e;
import com.google.android.gms.plus.internal.h;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.plus:
//            Account, Moments, People, b, 
//            a

public final class Plus
{
    public static final class PlusOptions
        implements com.google.android.gms.common.api.Api.ApiOptions.Optional
    {

        final String abo;
        final Set abp;

        public static Builder builder()
        {
            return new Builder();
        }

        private PlusOptions()
        {
            abo = null;
            abp = new HashSet();
        }


        private PlusOptions(Builder builder1)
        {
            abo = builder1.abo;
            abp = builder1.abp;
        }

    }

    public static final class PlusOptions.Builder
    {

        String abo;
        final Set abp = new HashSet();

        public transient PlusOptions.Builder addActivityTypes(String as[])
        {
            hn.b(as, "activityTypes may not be null.");
            for (int i = 0; i < as.length; i++)
            {
                abp.add(as[i]);
            }

            return this;
        }

        public PlusOptions build()
        {
            return new PlusOptions(this);
        }

        public PlusOptions.Builder setServerClientId(String s)
        {
            abo = s;
            return this;
        }

        public PlusOptions.Builder()
        {
        }
    }

    public static abstract class a extends com.google.android.gms.common.api.a.b
    {

        public a()
        {
            super(Plus.yE);
        }
    }


    public static final Api API;
    public static final Account AccountApi = new kj();
    public static final Moments MomentsApi = new km();
    public static final People PeopleApi = new kn();
    public static final Scope SCOPE_PLUS_LOGIN = new Scope("https://www.googleapis.com/auth/plus.login");
    public static final Scope SCOPE_PLUS_PROFILE = new Scope("https://www.googleapis.com/auth/plus.me");
    public static final b abm = new kl();
    public static final com.google.android.gms.plus.a abn = new kk();
    public static final com.google.android.gms.common.api.Api.c yE;
    static final com.google.android.gms.common.api.Api.b yF;

    private Plus()
    {
    }

    public static e a(GoogleApiClient googleapiclient, com.google.android.gms.common.api.Api.c c)
    {
        boolean flag = true;
        boolean flag1;
        e e1;
        if (googleapiclient != null)
        {
            flag1 = flag;
        } else
        {
            flag1 = false;
        }
        hn.b(flag1, "GoogleApiClient parameter is required.");
        hn.a(googleapiclient.isConnected(), "GoogleApiClient must be connected.");
        e1 = (e)googleapiclient.a(c);
        if (e1 == null)
        {
            flag = false;
        }
        hn.a(flag, "GoogleApiClient is not configured to use the Plus.API Api. Pass this into GoogleApiClient.Builder#addApi() to use this feature.");
        return e1;
    }

    static 
    {
        yE = new com.google.android.gms.common.api.Api.c();
        yF = new com.google.android.gms.common.api.Api.b() {

            public volatile com.google.android.gms.common.api.Api.a a(Context context, Looper looper, gz gz1, Object obj, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                return a(context, looper, gz1, (PlusOptions)obj, connectioncallbacks, onconnectionfailedlistener);
            }

            public e a(Context context, Looper looper, gz gz1, PlusOptions plusoptions, com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks connectioncallbacks, com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener onconnectionfailedlistener)
            {
                if (plusoptions == null)
                {
                    plusoptions = new PlusOptions();
                }
                e e1 = new e(context, looper, connectioncallbacks, onconnectionfailedlistener, new h(gz1.fe(), gz1.fh(), (String[])plusoptions.abp.toArray(new String[0]), new String[0], context.getPackageName(), context.getPackageName(), null, new PlusCommonExtras()));
                return e1;
            }

            public int getPriority()
            {
                return 2;
            }

        };
        API = new Api(yF, yE, new Scope[0]);
    }
}
