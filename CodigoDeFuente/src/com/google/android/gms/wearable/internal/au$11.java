// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable.internal;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.IOException;
import java.util.concurrent.Callable;

// Referenced classes of package com.google.android.gms.wearable.internal:
//            au

class yI
    implements Callable
{

    final au ame;
    final ParcelFileDescriptor amg;
    final byte yI[];

    public Object call()
        throws Exception
    {
        return no();
    }

    public Boolean no()
    {
        android.os.FileDescriptor.AutoCloseOutputStream autocloseoutputstream;
        if (Log.isLoggable("WearableClient", 3))
        {
            Log.d("WearableClient", (new StringBuilder()).append("processAssets: writing data to FD : ").append(amg).toString());
        }
        autocloseoutputstream = new android.os.FileDescriptor.AutoCloseOutputStream(amg);
        Boolean boolean1;
        autocloseoutputstream.write(yI);
        autocloseoutputstream.flush();
        if (Log.isLoggable("WearableClient", 3))
        {
            Log.d("WearableClient", (new StringBuilder()).append("processAssets: wrote data: ").append(amg).toString());
        }
        boolean1 = Boolean.valueOf(true);
        Exception exception;
        IOException ioexception;
        IOException ioexception1;
        IOException ioexception2;
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(amg).toString());
            }
            autocloseoutputstream.close();
        }
        catch (IOException ioexception3)
        {
            return boolean1;
        }
        return boolean1;
        ioexception1;
        Log.w("WearableClient", (new StringBuilder()).append("processAssets: writing data failed: ").append(amg).toString());
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(amg).toString());
            }
            autocloseoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception2) { }
        return Boolean.valueOf(false);
        exception;
        try
        {
            if (Log.isLoggable("WearableClient", 3))
            {
                Log.d("WearableClient", (new StringBuilder()).append("processAssets: closing: ").append(amg).toString());
            }
            autocloseoutputstream.close();
        }
        // Misplaced declaration of an exception variable
        catch (IOException ioexception) { }
        throw exception;
    }

    Stream(au au1, ParcelFileDescriptor parcelfiledescriptor, byte abyte0[])
    {
        ame = au1;
        amg = parcelfiledescriptor;
        yI = abyte0;
        super();
    }
}
