// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.os.SystemClock;
import com.google.android.gms.internal.gy;
import java.util.HashSet;
import java.util.Map;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager, a

private final class Fh
    implements Runnable
{

    final ImageManager Ff;
    private final a Fh;

    public void run()
    {
        gy.ay("LoadImageRunnable must be executed on the main thread");
        ageReceiver agereceiver = (ageReceiver)ImageManager.a(Ff).get(Fh);
        if (agereceiver != null)
        {
            ImageManager.a(Ff).remove(Fh);
            agereceiver.c(Fh);
        }
        ageReceiver agereceiver1 = Fh.Fj;
        if (agereceiver1.Fh == null)
        {
            Fh.a(ImageManager.b(Ff), ImageManager.c(Ff), true);
            return;
        }
        android.graphics.Bitmap bitmap = ImageManager.a(Ff, agereceiver1);
        if (bitmap != null)
        {
            Fh.a(ImageManager.b(Ff), bitmap, true);
            return;
        }
        Long long1 = (Long)ImageManager.d(Ff).get(agereceiver1.Ff);
        if (long1 != null)
        {
            if (SystemClock.elapsedRealtime() - long1.longValue() < 0x36ee80L)
            {
                Fh.a(ImageManager.b(Ff), ImageManager.c(Ff), true);
                return;
            }
            ImageManager.d(Ff).remove(agereceiver1.Ff);
        }
        Fh.a(ImageManager.b(Ff), ImageManager.c(Ff));
        ageReceiver agereceiver2 = (ageReceiver)ImageManager.e(Ff).get(agereceiver1.Ff);
        if (agereceiver2 == null)
        {
            agereceiver2 = new ageReceiver(Ff, agereceiver1.Ff);
            ImageManager.e(Ff).put(agereceiver1.Ff, agereceiver2);
        }
        agereceiver2.b(Fh);
        if (!(Fh instanceof Fh))
        {
            ImageManager.a(Ff).put(Fh, agereceiver2);
        }
        synchronized (ImageManager.eY())
        {
            if (!ImageManager.eZ().contains(agereceiver1.))
            {
                ImageManager.eZ().add(agereceiver1.);
                agereceiver2.fa();
            }
        }
        return;
        exception;
        obj;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public ageReceiver(ImageManager imagemanager, a a1)
    {
        Ff = imagemanager;
        super();
        Fh = a1;
    }
}
