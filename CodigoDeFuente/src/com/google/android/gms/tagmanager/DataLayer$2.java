// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.tagmanager:
//            DataLayer

class afd
    implements a
{

    final DataLayer afd;

    public void d(List list)
    {
        a a;
        for (Iterator iterator = list.iterator(); iterator.hasNext(); DataLayer.a(afd, afd.c(a.JI, a.afe)))
        {
            a = (afe)iterator.next();
        }

        DataLayer.a(afd).countDown();
    }

    a(DataLayer datalayer)
    {
        afd = datalayer;
        super();
    }
}
