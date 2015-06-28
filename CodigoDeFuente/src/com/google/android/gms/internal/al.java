// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.content.Context;
import com.google.ads.mediation.admob.AdMobAdapter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            au, ax, aj

public class al
{

    public static final al mb = new al();

    private al()
    {
    }

    public static al aA()
    {
        return mb;
    }

    public aj a(Context context, au au1)
    {
        Date date = au1.getBirthday();
        long l;
        String s;
        int i;
        Set set;
        java.util.List list;
        boolean flag;
        int j;
        android.location.Location location;
        android.os.Bundle bundle;
        boolean flag1;
        String s1;
        com.google.android.gms.ads.search.SearchAdRequest searchadrequest;
        ax ax1;
        if (date != null)
        {
            l = date.getTime();
        } else
        {
            l = -1L;
        }
        s = au1.getContentUrl();
        i = au1.getGender();
        set = au1.getKeywords();
        if (!set.isEmpty())
        {
            list = Collections.unmodifiableList(new ArrayList(set));
        } else
        {
            list = null;
        }
        flag = au1.isTestDevice(context);
        j = au1.aF();
        location = au1.getLocation();
        bundle = au1.getNetworkExtrasBundle(com/google/ads/mediation/admob/AdMobAdapter);
        flag1 = au1.getManualImpressionsEnabled();
        s1 = au1.getPublisherProvidedId();
        searchadrequest = au1.aC();
        if (searchadrequest != null)
        {
            ax1 = new ax(searchadrequest);
        } else
        {
            ax1 = null;
        }
        return new aj(4, l, bundle, i, list, flag, j, flag1, s1, ax1, location, s, au1.aE());
    }

}
