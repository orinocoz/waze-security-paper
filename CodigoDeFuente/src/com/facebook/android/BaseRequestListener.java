// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.android;

import android.util.Log;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.net.MalformedURLException;

// Referenced classes of package com.facebook.android:
//            FacebookError

public abstract class BaseRequestListener
    implements AsyncFacebookRunner.RequestListener
{

    public BaseRequestListener()
    {
    }

    public void onFacebookError(FacebookError facebookerror, Object obj)
    {
        Log.e("Facebook", facebookerror.getMessage());
        facebookerror.printStackTrace();
    }

    public void onFileNotFoundException(FileNotFoundException filenotfoundexception, Object obj)
    {
        Log.e("Facebook", filenotfoundexception.getMessage());
        filenotfoundexception.printStackTrace();
    }

    public void onIOException(IOException ioexception, Object obj)
    {
        Log.e("Facebook", ioexception.getMessage());
        ioexception.printStackTrace();
    }

    public void onMalformedURLException(MalformedURLException malformedurlexception, Object obj)
    {
        Log.e("Facebook", malformedurlexception.getMessage());
        malformedurlexception.printStackTrace();
    }
}
