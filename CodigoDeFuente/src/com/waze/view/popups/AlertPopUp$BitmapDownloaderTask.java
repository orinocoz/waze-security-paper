// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.graphics.drawable.BitmapDrawable;
import android.net.http.AndroidHttpClient;
import android.os.AsyncTask;
import android.widget.ImageView;
import java.io.InputStream;
import org.apache.http.HttpEntity;
import org.apache.http.HttpResponse;
import org.apache.http.StatusLine;
import org.apache.http.client.methods.HttpGet;

// Referenced classes of package com.waze.view.popups:
//            AlertPopUp

class imageViewReference extends AsyncTask
{

    private final ImageView imageViewReference;
    final AlertPopUp this$0;

    protected transient Bitmap doInBackground(String as[])
    {
        return downloadBitmap(as[0]);
    }

    protected volatile transient Object doInBackground(Object aobj[])
    {
        return doInBackground((String[])aobj);
    }

    Bitmap downloadBitmap(String s)
    {
        AndroidHttpClient androidhttpclient = AndroidHttpClient.newInstance("Android");
        HttpGet httpget = new HttpGet(s);
        HttpResponse httpresponse;
        int i;
        httpresponse = androidhttpclient.execute(httpget);
        i = httpresponse.getStatusLine().getStatusCode();
        if (i != 200)
        {
            if (androidhttpclient != null)
            {
                androidhttpclient.close();
            }
            return null;
        }
        HttpEntity httpentity = httpresponse.getEntity();
        if (httpentity == null) goto _L2; else goto _L1
_L1:
        InputStream inputstream = null;
        Bitmap bitmap;
        inputstream = httpentity.getContent();
        bitmap = BitmapFactory.decodeStream(inputstream);
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_97;
        }
        inputstream.close();
        httpentity.consumeContent();
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
        return bitmap;
        Exception exception2;
        exception2;
        if (inputstream == null)
        {
            break MISSING_BLOCK_LABEL_127;
        }
        inputstream.close();
        httpentity.consumeContent();
        throw exception2;
        Exception exception1;
        exception1;
        HttpGet httpget1 = httpget;
_L6:
        if (httpget1 == null)
        {
            break MISSING_BLOCK_LABEL_152;
        }
        httpget1.abort();
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
_L3:
        return null;
        Exception exception;
        exception;
_L4:
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
        throw exception;
_L2:
        if (androidhttpclient != null)
        {
            androidhttpclient.close();
        }
          goto _L3
        exception;
          goto _L4
        Exception exception3;
        exception3;
        httpget1 = null;
        if (true) goto _L6; else goto _L5
_L5:
    }

    protected void onPostExecute(Bitmap bitmap)
    {
        if (isCancelled())
        {
            bitmap = null;
        }
        if (imageViewReference != null)
        {
            imageViewReference.setImageBitmap(bitmap);
            AlertPopUp.access$0(AlertPopUp.this, new BitmapDrawable(bitmap));
        }
    }

    protected volatile void onPostExecute(Object obj)
    {
        onPostExecute((Bitmap)obj);
    }

    public (ImageView imageview)
    {
        this$0 = AlertPopUp.this;
        super();
        imageViewReference = imageview;
    }
}
