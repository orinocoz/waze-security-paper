// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.facebook.internal;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Handler;
import android.os.Looper;
import com.facebook.FacebookException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;

// Referenced classes of package com.facebook.internal:
//            WorkQueue, ImageRequest, ImageResponseCache, UrlRedirectCache, 
//            Utility, ImageResponse

public class ImageDownloader
{
    private static class CacheReadWorkItem
        implements Runnable
    {

        private boolean allowCachedRedirects;
        private Context context;
        private RequestKey key;

        public void run()
        {
            ImageDownloader.readFromCache(key, context, allowCachedRedirects);
        }

        CacheReadWorkItem(Context context1, RequestKey requestkey, boolean flag)
        {
            context = context1;
            key = requestkey;
            allowCachedRedirects = flag;
        }
    }

    private static class DownloadImageWorkItem
        implements Runnable
    {

        private Context context;
        private RequestKey key;

        public void run()
        {
            ImageDownloader.download(key, context);
        }

        DownloadImageWorkItem(Context context1, RequestKey requestkey)
        {
            context = context1;
            key = requestkey;
        }
    }

    private static class DownloaderContext
    {

        boolean isCancelled;
        ImageRequest request;
        WorkQueue.WorkItem workItem;

        private DownloaderContext()
        {
        }

        DownloaderContext(DownloaderContext downloadercontext)
        {
            this();
        }
    }

    private static class RequestKey
    {

        private static final int HASH_MULTIPLIER = 37;
        private static final int HASH_SEED = 29;
        Object tag;
        URI uri;

        public boolean equals(Object obj)
        {
label0:
            {
                boolean flag = false;
                if (obj != null)
                {
                    boolean flag1 = obj instanceof RequestKey;
                    flag = false;
                    if (flag1)
                    {
                        RequestKey requestkey = (RequestKey)obj;
                        if (requestkey.uri != uri || requestkey.tag != tag)
                        {
                            break label0;
                        }
                        flag = true;
                    }
                }
                return flag;
            }
            return false;
        }

        public int hashCode()
        {
            return 37 * (1073 + uri.hashCode()) + tag.hashCode();
        }

        RequestKey(URI uri1, Object obj)
        {
            uri = uri1;
            tag = obj;
        }
    }


    private static final int CACHE_READ_QUEUE_MAX_CONCURRENT = 2;
    private static final int DOWNLOAD_QUEUE_MAX_CONCURRENT = 8;
    private static WorkQueue cacheReadQueue = new WorkQueue(2);
    private static WorkQueue downloadQueue = new WorkQueue(8);
    private static Handler handler;
    private static final Map pendingRequests = new HashMap();

    public ImageDownloader()
    {
    }

    public static boolean cancelRequest(ImageRequest imagerequest)
    {
        RequestKey requestkey = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        Map map = pendingRequests;
        map;
        JVM INSTR monitorenter ;
        DownloaderContext downloadercontext = (DownloaderContext)pendingRequests.get(requestkey);
        boolean flag;
        flag = false;
        if (downloadercontext == null)
        {
            break MISSING_BLOCK_LABEL_70;
        }
        flag = true;
        if (!downloadercontext.workItem.cancel())
        {
            break MISSING_BLOCK_LABEL_75;
        }
        pendingRequests.remove(requestkey);
_L1:
        map;
        JVM INSTR monitorexit ;
        return flag;
        downloadercontext.isCancelled = true;
          goto _L1
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void clearCache(Context context)
    {
        ImageResponseCache.clearCache(context);
        UrlRedirectCache.clearCache(context);
    }

    private static void download(RequestKey requestkey, Context context)
    {
        HttpURLConnection httpurlconnection;
        java.io.InputStream inputstream;
        Bitmap bitmap;
        boolean flag;
        httpurlconnection = null;
        inputstream = null;
        bitmap = null;
        flag = true;
        httpurlconnection = (HttpURLConnection)(new URL(requestkey.uri.toString())).openConnection();
        httpurlconnection.setInstanceFollowRedirects(false);
        httpurlconnection.getResponseCode();
        JVM INSTR lookupswitch 3: default 76
    //                   200: 335
    //                   301: 171
    //                   302: 171;
           goto _L1 _L2 _L3 _L3
_L1:
        StringBuilder stringbuilder;
        inputstream = httpurlconnection.getErrorStream();
        stringbuilder = new StringBuilder();
        if (inputstream == null) goto _L5; else goto _L4
_L4:
        InputStreamReader inputstreamreader;
        char ac[];
        inputstreamreader = new InputStreamReader(inputstream);
        ac = new char[128];
_L13:
        int i = inputstreamreader.read(ac, 0, ac.length);
        if (i > 0) goto _L7; else goto _L6
_L6:
        Utility.closeQuietly(inputstreamreader);
_L14:
        Object obj = new FacebookException(stringbuilder.toString());
_L9:
        Utility.closeQuietly(inputstream);
        Utility.disconnectQuietly(httpurlconnection);
_L12:
        if (flag)
        {
            issueResponse(requestkey, ((Exception) (obj)), bitmap, false);
        }
        return;
_L3:
        flag = false;
        String s;
        boolean flag1;
        s = httpurlconnection.getHeaderField("location");
        flag1 = Utility.isNullOrEmpty(s);
        bitmap = null;
        obj = null;
        flag = false;
        inputstream = null;
        if (flag1) goto _L9; else goto _L8
_L8:
        URI uri;
        DownloaderContext downloadercontext;
        uri = new URI(s);
        UrlRedirectCache.cacheUriRedirect(context, requestkey.uri, uri);
        downloadercontext = removePendingRequest(requestkey);
        bitmap = null;
        obj = null;
        flag = false;
        inputstream = null;
        if (downloadercontext == null) goto _L9; else goto _L10
_L10:
        boolean flag2 = downloadercontext.isCancelled;
        bitmap = null;
        obj = null;
        flag = false;
        inputstream = null;
        if (flag2) goto _L9; else goto _L11
_L11:
        ImageRequest imagerequest = downloadercontext.request;
        RequestKey requestkey1 = new RequestKey(uri, requestkey.tag);
        enqueueCacheRead(imagerequest, requestkey1, false);
        bitmap = null;
        obj = null;
        flag = false;
        inputstream = null;
          goto _L9
        IOException ioexception;
        ioexception;
        obj = ioexception;
        Utility.closeQuietly(inputstream);
        Utility.disconnectQuietly(httpurlconnection);
        bitmap = null;
          goto _L12
_L2:
        inputstream = ImageResponseCache.interceptAndCacheImageStream(context, httpurlconnection);
        bitmap = BitmapFactory.decodeStream(inputstream);
        obj = null;
          goto _L9
_L7:
        stringbuilder.append(ac, 0, i);
          goto _L13
        URISyntaxException urisyntaxexception;
        urisyntaxexception;
        obj = urisyntaxexception;
        Utility.closeQuietly(inputstream);
        Utility.disconnectQuietly(httpurlconnection);
        bitmap = null;
          goto _L12
_L5:
        stringbuilder.append(context.getString(com.facebook.android.R.string.com_facebook_image_download_unknown_error));
          goto _L14
        Exception exception;
        exception;
        Utility.closeQuietly(inputstream);
        Utility.disconnectQuietly(httpurlconnection);
        throw exception;
          goto _L13
    }

    public static void downloadAsync(ImageRequest imagerequest)
    {
        RequestKey requestkey;
        if (imagerequest == null)
        {
            return;
        }
        requestkey = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        Map map = pendingRequests;
        map;
        JVM INSTR monitorenter ;
        DownloaderContext downloadercontext = (DownloaderContext)pendingRequests.get(requestkey);
        if (downloadercontext == null)
        {
            break MISSING_BLOCK_LABEL_76;
        }
        downloadercontext.request = imagerequest;
        downloadercontext.isCancelled = false;
        downloadercontext.workItem.moveToFront();
_L1:
        map;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
        enqueueCacheRead(imagerequest, requestkey, imagerequest.isCachedRedirectAllowed());
          goto _L1
    }

    private static void enqueueCacheRead(ImageRequest imagerequest, RequestKey requestkey, boolean flag)
    {
        enqueueRequest(imagerequest, requestkey, cacheReadQueue, new CacheReadWorkItem(imagerequest.getContext(), requestkey, flag));
    }

    private static void enqueueDownload(ImageRequest imagerequest, RequestKey requestkey)
    {
        enqueueRequest(imagerequest, requestkey, downloadQueue, new DownloadImageWorkItem(imagerequest.getContext(), requestkey));
    }

    private static void enqueueRequest(ImageRequest imagerequest, RequestKey requestkey, WorkQueue workqueue, Runnable runnable)
    {
        synchronized (pendingRequests)
        {
            DownloaderContext downloadercontext = new DownloaderContext(null);
            downloadercontext.request = imagerequest;
            pendingRequests.put(requestkey, downloadercontext);
            downloadercontext.workItem = workqueue.addActiveWorkItem(runnable);
        }
        return;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static Handler getHandler()
    {
        com/facebook/internal/ImageDownloader;
        JVM INSTR monitorenter ;
        Handler handler1;
        if (handler == null)
        {
            handler = new Handler(Looper.getMainLooper());
        }
        handler1 = handler;
        com/facebook/internal/ImageDownloader;
        JVM INSTR monitorexit ;
        return handler1;
        Exception exception;
        exception;
        throw exception;
    }

    private static void issueResponse(RequestKey requestkey, final Exception error, final Bitmap bitmap, final boolean isCachedRedirect)
    {
        DownloaderContext downloadercontext = removePendingRequest(requestkey);
        if (downloadercontext != null && !downloadercontext.isCancelled)
        {
            final ImageRequest request = downloadercontext.request;
            final ImageRequest.Callback callback = request.getCallback();
            if (callback != null)
            {
                getHandler().post(new Runnable() {

                    private final Bitmap val$bitmap;
                    private final ImageRequest.Callback val$callback;
                    private final Exception val$error;
                    private final boolean val$isCachedRedirect;
                    private final ImageRequest val$request;

                    public void run()
                    {
                        ImageResponse imageresponse = new ImageResponse(request, error, isCachedRedirect, bitmap);
                        callback.onCompleted(imageresponse);
                    }

            
            {
                request = imagerequest;
                error = exception;
                isCachedRedirect = flag;
                bitmap = bitmap1;
                callback = callback1;
                super();
            }
                });
            }
        }
    }

    public static void prioritizeRequest(ImageRequest imagerequest)
    {
        RequestKey requestkey = new RequestKey(imagerequest.getImageUri(), imagerequest.getCallerTag());
        Map map = pendingRequests;
        map;
        JVM INSTR monitorenter ;
        DownloaderContext downloadercontext = (DownloaderContext)pendingRequests.get(requestkey);
        if (downloadercontext == null)
        {
            break MISSING_BLOCK_LABEL_51;
        }
        downloadercontext.workItem.moveToFront();
        map;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }

    private static void readFromCache(RequestKey requestkey, Context context, boolean flag)
    {
        java.io.InputStream inputstream = null;
        boolean flag1 = false;
        if (flag)
        {
            URI uri = UrlRedirectCache.getRedirectedUri(context, requestkey.uri);
            inputstream = null;
            flag1 = false;
            if (uri != null)
            {
                inputstream = ImageResponseCache.getCachedImageStream(uri, context);
                Bitmap bitmap;
                if (inputstream != null)
                {
                    flag1 = true;
                } else
                {
                    flag1 = false;
                }
            }
        }
        if (!flag1)
        {
            inputstream = ImageResponseCache.getCachedImageStream(requestkey.uri, context);
        }
        if (inputstream != null)
        {
            bitmap = BitmapFactory.decodeStream(inputstream);
            Utility.closeQuietly(inputstream);
            issueResponse(requestkey, null, bitmap, flag1);
        } else
        {
            DownloaderContext downloadercontext = removePendingRequest(requestkey);
            if (downloadercontext != null && !downloadercontext.isCancelled)
            {
                enqueueDownload(downloadercontext.request, requestkey);
                return;
            }
        }
    }

    private static DownloaderContext removePendingRequest(RequestKey requestkey)
    {
        DownloaderContext downloadercontext;
        synchronized (pendingRequests)
        {
            downloadercontext = (DownloaderContext)pendingRequests.remove(requestkey);
        }
        return downloadercontext;
        exception;
        map;
        JVM INSTR monitorexit ;
        throw exception;
    }



}
