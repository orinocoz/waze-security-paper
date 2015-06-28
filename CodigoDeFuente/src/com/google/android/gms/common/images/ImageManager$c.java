// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.images;

import android.graphics.BitmapFactory;
import android.net.Uri;
import android.os.Handler;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.google.android.gms.internal.gy;
import java.io.IOException;
import java.util.concurrent.CountDownLatch;

// Referenced classes of package com.google.android.gms.common.images:
//            ImageManager

private final class Fg
    implements Runnable
{

    final ImageManager Ff;
    private final ParcelFileDescriptor Fg;
    private final Uri mUri;

    public void run()
    {
        ParcelFileDescriptor parcelfiledescriptor;
        android.graphics.Bitmap bitmap;
        boolean flag;
        gy.az("LoadBitmapFromDiskRunnable can't be executed in the main thread");
        parcelfiledescriptor = Fg;
        bitmap = null;
        flag = false;
        if (parcelfiledescriptor == null) goto _L2; else goto _L1
_L1:
        android.graphics.Bitmap bitmap1 = BitmapFactory.decodeFileDescriptor(Fg.getFileDescriptor());
        bitmap = bitmap1;
_L3:
        CountDownLatch countdownlatch;
        OutOfMemoryError outofmemoryerror;
        try
        {
            Fg.close();
        }
        catch (IOException ioexception)
        {
            Log.e("ImageManager", "closed failed", ioexception);
        }
_L2:
        countdownlatch = new CountDownLatch(1);
        ImageManager.g(Ff).post(new <init>(Ff, mUri, bitmap, flag, countdownlatch));
        try
        {
            countdownlatch.await();
            return;
        }
        catch (InterruptedException interruptedexception)
        {
            Log.w("ImageManager", (new StringBuilder()).append("Latch interrupted while posting ").append(mUri).toString());
        }
        break MISSING_BLOCK_LABEL_170;
        outofmemoryerror;
        Log.e("ImageManager", (new StringBuilder()).append("OOM while loading bitmap for uri: ").append(mUri).toString(), outofmemoryerror);
        flag = true;
        bitmap = null;
          goto _L3
    }

    public _cls9(ImageManager imagemanager, Uri uri, ParcelFileDescriptor parcelfiledescriptor)
    {
        Ff = imagemanager;
        super();
        mUri = uri;
        Fg = parcelfiledescriptor;
    }
}
