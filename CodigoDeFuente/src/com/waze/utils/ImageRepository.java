// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.utils;

import android.content.pm.ApplicationInfo;
import android.graphics.Bitmap;
import android.net.Uri;
import android.view.View;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.widget.ImageView;
import com.waze.AppService;
import com.waze.analytics.Analytics;
import com.waze.ifs.ui.ActivityBase;
import com.waze.view.map.ProgressAnimation;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.waze.utils:
//            ImageUtils

public class ImageRepository
{
    private static class ImageCache
    {

        private final int _maxEntries;
        private ArrayList imageAccessHistory;
        private Map imageMap;

        private Bitmap get(String s)
        {
            if (imageMap.containsKey(s))
            {
                imageAccessHistory.remove(s);
                imageAccessHistory.add(s);
                return (Bitmap)imageMap.get(s);
            } else
            {
                return null;
            }
        }

        private void put(String s, Bitmap bitmap)
        {
            if (!s.startsWith("file"))
            {
                if (imageMap.containsKey(s))
                {
                    imageAccessHistory.remove(s);
                    imageAccessHistory.add(s);
                    imageMap.put(s, bitmap);
                    return;
                }
                imageAccessHistory.add(s);
                imageMap.put(s, bitmap);
                if (imageAccessHistory.size() > _maxEntries)
                {
                    String s1 = (String)imageAccessHistory.remove(0);
                    imageMap.remove(s1);
                    return;
                }
            }
        }

        public boolean has(String s)
        {
            return imageMap.get(s) != null;
        }



        public ImageCache(int i)
        {
            imageMap = new HashMap();
            imageAccessHistory = new ArrayList();
            _maxEntries = i;
        }
    }

    public static interface ImageRepositoryListener
    {

        public abstract void onImageRetrieved(Bitmap bitmap);
    }

    public static abstract class ImageRepositoryUIListener
        implements ImageRepositoryListener
    {

        public final void onImageRetrieved(Bitmap bitmap)
        {
            AppService.Post(bitmap. new Runnable() {

                final ImageRepositoryUIListener this$1;
                private final Bitmap val$bitmap;

                public void run()
                {
                    onImageRetrievedCallback(bitmap);
                }

            
            {
                this$1 = final_imagerepositoryuilistener;
                bitmap = Bitmap.this;
                super();
            }
            });
        }

        public abstract void onImageRetrievedCallback(Bitmap bitmap);

        public ImageRepositoryUIListener()
        {
        }
    }


    private static final int MAX_EXEC_THREADES = 5;
    private static final int MAX_IMAGES = 25;
    private static final int MAX_NUM_OF_PIXELS = 0x100000;
    private static final int MAX_THUMBNAILS = 100;
    private static final int MICRO_MAX_NUM_OF_PIXELS = 16384;
    private static final int MICRO_MIN_SIDE_LENGTH = 100;
    private static final int MIN_SIDE_LENGTH = 1024;
    private static final int THUMB_MAX_NUM_OF_PIXELS = 0x40000;
    private static final int THUMB_MIN_SIDE_LENGTH = 512;
    public static ImageRepository instance = new ImageRepository();
    ScheduledExecutorService mExec;
    ImageCache mImageCache;
    ImageCache mImageThumbnailCache;
    int mTimesExecInit;

    public ImageRepository()
    {
        mTimesExecInit = 0;
        mImageCache = new ImageCache(25);
        mImageThumbnailCache = new ImageCache(100);
    }

    public static void imageViewAnimatedChange(final ImageView v, final View remove, final Bitmap newImage)
    {
        AlphaAnimation alphaanimation = new AlphaAnimation(1.0F, 0.0F);
        alphaanimation.setDuration(200L);
        final AlphaAnimation anim_in = new AlphaAnimation(0.0F, 1.0F);
        anim_in.setDuration(400L);
        alphaanimation.setAnimationListener(new android.view.animation.Animation.AnimationListener() {

            private final Animation val$anim_in;
            private final Bitmap val$newImage;
            private final View val$remove;
            private final ImageView val$v;

            public void onAnimationEnd(Animation animation)
            {
                v.setImageBitmap(newImage);
                anim_in.setAnimationListener(remove. new android.view.animation.Animation.AnimationListener() {

                    final _cls5 this$1;
                    private final View val$remove;

                    public void onAnimationEnd(Animation animation)
                    {
                        if (remove != null)
                        {
                            if (remove instanceof ProgressAnimation)
                            {
                                ((ProgressAnimation)remove).stop();
                            }
                            remove.setVisibility(8);
                        }
                    }

                    public void onAnimationRepeat(Animation animation)
                    {
                    }

                    public void onAnimationStart(Animation animation)
                    {
                    }

            
            {
                this$1 = final__pcls5;
                remove = View.this;
                super();
            }
                });
                v.startAnimation(anim_in);
            }

            public void onAnimationRepeat(Animation animation)
            {
            }

            public void onAnimationStart(Animation animation)
            {
            }

            
            {
                v = imageview;
                newImage = bitmap;
                anim_in = animation;
                remove = view;
                super();
            }
        });
        v.startAnimation(alphaanimation);
    }

    public void endExecutor()
    {
        this;
        JVM INSTR monitorenter ;
        mTimesExecInit = -1 + mTimesExecInit;
        if (mTimesExecInit == 0)
        {
            ScheduledExecutorService scheduledexecutorservice = mExec;
            mExec = null;
            scheduledexecutorservice.shutdown();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void getImage(final String urlStr, final ImageView toSet)
    {
        if (toSet != null)
        {
            toSet.setTag(urlStr);
        }
        getImage(urlStr, new ImageRepositoryListener() {

            final ImageRepository this$0;
            private final ImageView val$toSet;
            private final String val$urlStr;

            public void onImageRetrieved(Bitmap bitmap)
            {
                while (bitmap == null || toSet == null) 
                {
                    return;
                }
                toSet.post(bitmap. new Runnable() {

                    final _cls2 this$1;
                    private final Bitmap val$bitmap;
                    private final ImageView val$toSet;
                    private final String val$urlStr;

                    public void run()
                    {
                        if (toSet != null && urlStr.equals(toSet.getTag()))
                        {
                            toSet.setImageBitmap(bitmap);
                        }
                    }

            
            {
                this$1 = final__pcls2;
                toSet = imageview;
                urlStr = s;
                bitmap = Bitmap.this;
                super();
            }
                });
            }

            
            {
                this$0 = ImageRepository.this;
                toSet = imageview;
                urlStr = s;
                super();
            }
        });
    }

    public void getImage(String s, ImageView imageview, ActivityBase activitybase)
    {
        getImage(s, false, imageview, null, activitybase, 0L, 3);
    }

    public void getImage(String s, ImageRepositoryListener imagerepositorylistener)
    {
        getImage(s, false, imagerepositorylistener);
    }

    public void getImage(String s, boolean flag, ImageView imageview, View view, ActivityBase activitybase)
    {
        getImage(s, flag, imageview, view, activitybase, 0L, 3);
    }

    public void getImage(final String urlStr, boolean flag, final ImageView toSet, final View toRemove, final ActivityBase ab, final long retryTimeoutMs, 
            final int final_i)
    {
        if (toSet != null)
        {
            toSet.setTag(urlStr);
        }
        if (urlStr != null && urlStr.length() != 0)
        {
            final Uri tryUri = Uri.parse(urlStr);
            String s = tryUri.getScheme();
            if (s != null && s.equals("content"))
            {
                flag = true;
            }
            Bitmap bitmap;
            if (flag)
            {
                bitmap = mImageThumbnailCache.get(urlStr);
            } else
            {
                bitmap = mImageCache.get(urlStr);
            }
            if (bitmap != null)
            {
                Analytics.log("LOAD_IMAGE", "STATUS", "CACHED");
                if (toSet != null)
                {
                    toSet.setImageBitmap(bitmap);
                    return;
                }
            } else
            if (s != null && s.equals("content"))
            {
                Runnable runnable = new Runnable(toRemove) {

                    int _try;
                    final ImageRepository this$0;
                    private final ActivityBase val$ab;
                    private final long val$retryTimeoutMs;
                    private final View val$toRemove;
                    private final ImageView val$toSet;
                    private final Uri val$tryUri;
                    private final String val$urlStr;

                    public void run()
                    {
                        boolean flag1 = true;
                        if (toSet == null || urlStr.equals(toSet.getTag())) goto _L2; else goto _L1
_L1:
                        return;
_L2:
                        Bitmap bitmap1 = ImageUtils.makeBitmap(100, 16384, tryUri, ab.getContentResolver(), true);
                        if (bitmap1 != null)
                        {
                            break MISSING_BLOCK_LABEL_119;
                        }
                        ScheduledExecutorService scheduledexecutorservice;
                        Analytics.log("LOAD_IMAGE", "STATUS", "FAILURE");
                        if (retryTimeoutMs <= 0L)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        _try = -1 + _try;
                        if (_try < 0)
                        {
                            continue; /* Loop/switch isn't completed */
                        }
                        scheduledexecutorservice = mExec;
                        if (scheduledexecutorservice != null)
                        {
                            break MISSING_BLOCK_LABEL_219;
                        }
                        OutOfMemoryError outofmemoryerror;
                        try
                        {
                            Thread.sleep(retryTimeoutMs);
                        }
                        catch (InterruptedException interruptedexception1) { }
                        new Thread(this);
_L3:
                        Analytics.log("LOAD_IMAGE", "STATUS", "SUCCESS");
                        mImageThumbnailCache.put(urlStr, bitmap1);
                        ab.runOnUiThread(bitmap1. new Runnable() {

                            final _cls3 this$1;
                            private final Bitmap val$bitmap;
                            private final View val$toRemove;
                            private final ImageView val$toSet;
                            private final String val$urlStr;

                            public void run()
                            {
                                if (toSet != null && urlStr.equals(toSet.getTag()))
                                {
                                    ImageRepository.imageViewAnimatedChange(toSet, toRemove, bitmap);
                                }
                            }

            
            {
                this$1 = final__pcls3;
                toSet = imageview;
                urlStr = s;
                toRemove = view;
                bitmap = Bitmap.this;
                super();
            }
                        });
                        return;
                        outofmemoryerror;
                        _try = -1 + _try;
                        if (_try >= 0)
                        {
                            if (mExec == null)
                            {
                                Throwable throwable;
                                try
                                {
                                    Thread.sleep(retryTimeoutMs);
                                }
                                catch (InterruptedException interruptedexception) { }
                                new Thread(this);
                                return;
                            } else
                            {
                                mExec.schedule(this, retryTimeoutMs, TimeUnit.MILLISECONDS);
                                return;
                            }
                        }
                        continue; /* Loop/switch isn't completed */
                        mExec.schedule(this, retryTimeoutMs, TimeUnit.MILLISECONDS);
                          goto _L3
                        throwable;
                        if ((2 & ab.getApplicationInfo().flags) == 0)
                        {
                            flag1 = false;
                        }
                        if (flag1)
                        {
                            throwable.printStackTrace();
                            return;
                        }
                        if (true) goto _L1; else goto _L4
_L4:
                    }

            
            {
                this$0 = ImageRepository.this;
                toSet = imageview;
                urlStr = s;
                tryUri = uri;
                ab = activitybase;
                retryTimeoutMs = l;
                toRemove = view;
                super();
                _try = final_i;
            }
                };
                if (mExec == null)
                {
                    (new Thread(runnable)).start();
                    return;
                } else
                {
                    mExec.execute(runnable);
                    return;
                }
            } else
            {
                ImageRepositoryListener imagerepositorylistener = new ImageRepositoryListener() {

                    final ImageRepository this$0;
                    private final ActivityBase val$ab;
                    private final View val$toRemove;
                    private final ImageView val$toSet;
                    private final String val$urlStr;

                    public void onImageRetrieved(Bitmap bitmap1)
                    {
                        if (bitmap1 == null)
                        {
                            return;
                        } else
                        {
                            ab.runOnUiThread(bitmap1. new Runnable() {

                                final _cls4 this$1;
                                private final Bitmap val$bitmap;
                                private final View val$toRemove;
                                private final ImageView val$toSet;
                                private final String val$urlStr;

                                public void run()
                                {
                                    if (toSet != null && urlStr.equals(toSet.getTag()))
                                    {
                                        ImageRepository.imageViewAnimatedChange(toSet, toRemove, bitmap);
                                    }
                                }

            
            {
                this$1 = final__pcls4;
                toSet = imageview;
                urlStr = s;
                toRemove = view;
                bitmap = Bitmap.this;
                super();
            }
                            });
                            return;
                        }
                    }

            
            {
                this$0 = ImageRepository.this;
                ab = activitybase;
                toSet = imageview;
                urlStr = s;
                toRemove = view;
                super();
            }
                };
                getImage(urlStr, flag, imagerepositorylistener);
                return;
            }
        }
    }

    public void getImage(final String urlStr, final boolean bThumbnail, final ImageRepositoryListener listener)
    {
        if (urlStr != null && urlStr.length() != 0)
        {
            Bitmap bitmap;
            if (bThumbnail)
            {
                bitmap = mImageThumbnailCache.get(urlStr);
            } else
            {
                bitmap = mImageCache.get(urlStr);
            }
            if (bitmap != null)
            {
                Analytics.log("LOAD_IMAGE", "STATUS", "CACHED");
                if (listener != null)
                {
                    listener.onImageRetrieved(bitmap);
                    return;
                }
            } else
            {
                Runnable runnable = new Runnable() {

                    final ImageRepository this$0;
                    private final boolean val$bThumbnail;
                    private final ImageRepositoryListener val$listener;
                    private final String val$urlStr;

                    public void run()
                    {
                        Bitmap bitmap1;
                        if (bThumbnail)
                        {
                            bitmap1 = ImageUtils.makeBitmap(512, 0x40000, urlStr, null, null);
                        } else
                        {
                            bitmap1 = ImageUtils.makeBitmap(1024, 0x100000, urlStr, null, null);
                        }
                        if (bitmap1 == null)
                        {
                            Analytics.log("LOAD_IMAGE", "STATUS", "FAILURE");
                        } else
                        {
                            Analytics.log("LOAD_IMAGE", "STATUS", "SUCCESS");
                            if (bThumbnail)
                            {
                                mImageThumbnailCache.put(urlStr, bitmap1);
                            } else
                            {
                                mImageCache.put(urlStr, bitmap1);
                            }
                            if (listener != null)
                            {
                                listener.onImageRetrieved(bitmap1);
                                return;
                            }
                        }
                    }

            
            {
                this$0 = ImageRepository.this;
                bThumbnail = flag;
                urlStr = s;
                listener = imagerepositorylistener;
                super();
            }
                };
                if (mExec == null)
                {
                    (new Thread(runnable)).start();
                    return;
                } else
                {
                    mExec.execute(runnable);
                    return;
                }
            }
        }
    }

    public void initExecutor()
    {
        this;
        JVM INSTR monitorenter ;
        if (mExec == null)
        {
            mExec = Executors.newScheduledThreadPool(5);
        }
        mTimesExecInit = 1 + mTimesExecInit;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isCached(String s)
    {
        return mImageCache.has(s);
    }

    public boolean isThumbnailCached(String s)
    {
        return mImageThumbnailCache.has(s);
    }

}
