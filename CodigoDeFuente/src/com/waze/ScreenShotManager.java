// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.drawable.BitmapDrawable;
import android.view.View;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.IntBuffer;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.waze:
//            AppService, MainActivity, ResManager, Logger

public class ScreenShotManager extends Thread
{
    private final class ImageWriter extends Thread
    {

        final ScreenShotManager this$0;

        public void run()
        {
            String s;
            File file;
            if (mBitMap == null)
            {
                break MISSING_BLOCK_LABEL_142;
            }
            ScreenShotManager.mMaxIndex = 1 + ScreenShotManager.mMaxIndex;
            s = (new StringBuilder("screenshot_")).append(String.valueOf(ScreenShotManager.mMaxIndex)).append(".jpg").toString();
            file = new File((new StringBuilder(String.valueOf(ResManager.mSDCardResDir))).append("screenshots/").append(s).toString());
            file.getParentFile().mkdirs();
            FileOutputStream fileoutputstream = new FileOutputStream(file);
            mBitMap.compress(android.graphics.Bitmap.CompressFormat.JPEG, 50, fileoutputstream);
            fileoutputstream.flush();
            fileoutputstream.close();
            mBitMap.recycle();
            mBitMap = null;
            return;
            Exception exception;
            exception;
            Logger.w((new StringBuilder("ScreenShot: File writing error for ")).append(s).toString(), exception);
            exception.printStackTrace();
            return;
        }

        private ImageWriter()
        {
            this$0 = ScreenShotManager.this;
            super();
        }

        ImageWriter(ImageWriter imagewriter)
        {
            this();
        }
    }

    private final class ScaleEffectView extends View
    {

        final ScreenShotManager this$0;

        public ScaleEffectView(Context context, Bitmap bitmap)
        {
            this$0 = ScreenShotManager.this;
            super(context);
            setFocusable(true);
            setBackgroundDrawable(new BitmapDrawable(bitmap));
        }
    }


    private static final long SCRN_SHOT_EFFECT_TIMEOUT = 1200L;
    private static volatile int mMaxIndex = 0;
    public static final String mScrnShotsDir = "screenshots/";
    public static final String mScrnShotsNamePrefix = "screenshot_";
    public static final String mScrnShotsNameSuffix = ".jpg";
    private Bitmap mBitMap;

    public ScreenShotManager()
    {
    }

    private void DrawScaledImage(GL10 gl10, Bitmap bitmap)
    {
        final MainActivity context = AppService.getMainActivity();
        int i = bitmap.getWidth();
        int j = bitmap.getHeight();
        final Bitmap bmp = Bitmap.createBitmap(i, j, android.graphics.Bitmap.Config.ARGB_8888);
        Canvas canvas = new Canvas(bmp);
        canvas.drawColor(0xff444444);
        Matrix matrix = new Matrix();
        matrix.setScale(0.75F, 0.75F);
        matrix.postTranslate((0.25F * (float)i) / 2.0F, (0.25F * (float)j) / 2.0F);
        canvas.drawBitmap(bitmap, matrix, null);
        final ScaleEffectView view = new ScaleEffectView(context, bmp);
        context.runOnUiThread(new Runnable() {

            final ScreenShotManager this$0;
            private final MainActivity val$context;
            private final View val$view;

            public void run()
            {
                context.addContentView(view, new android.view.ViewGroup.LayoutParams(-2, -2));
                view.invalidate();
            }

            
            {
                this$0 = ScreenShotManager.this;
                context = mainactivity;
                view = view1;
                super();
            }
        });
        view.postDelayed(new Runnable() {

            final ScreenShotManager this$0;
            private final Bitmap val$bmp;
            private final View val$view;

            public void run()
            {
                view.setVisibility(8);
                bmp.recycle();
            }

            
            {
                this$0 = ScreenShotManager.this;
                view = view1;
                bmp = bitmap;
                super();
            }
        }, 1200L);
    }

    private static int GetMaxFileIndex()
    {
        int i;
        String as[];
        i = -1;
        as = (new File((new StringBuilder(String.valueOf(ResManager.mSDCardResDir))).append("screenshots/").toString())).list();
        if (as == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L5:
        if (j < as.length) goto _L3; else goto _L2
_L2:
        return i;
_L3:
        if (as[j].startsWith("screenshot_"))
        {
            int k = "screenshot_".length();
            int l = as[j].length() - ".jpg".length();
            String s = as[j].substring(k, l);
            if (Integer.decode(s).intValue() > i)
            {
                i = Integer.decode(s).intValue();
            }
        }
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public void Capture(View view, GL10 gl10)
    {
        int i;
        int j;
        int ai[];
        int ai1[];
        int k;
        i = view.getMeasuredWidth();
        j = view.getMeasuredHeight();
        ai = new int[i * j];
        ai1 = new int[i * j];
        IntBuffer intbuffer = IntBuffer.wrap(ai);
        intbuffer.position(0);
        gl10.glReadPixels(0, 0, i, j, 6408, 5121, intbuffer);
        k = 0;
_L2:
        if (k >= j)
        {
            mBitMap = Bitmap.createBitmap(ai1, i, j, android.graphics.Bitmap.Config.ARGB_8888);
            DrawScaledImage(gl10, mBitMap);
            (new ImageWriter(null)).run();
            return;
        }
        int l = 0;
        do
        {
label0:
            {
                if (l < i)
                {
                    break label0;
                }
                k++;
            }
            if (true)
            {
                continue;
            }
            int i1 = ai[l + k * i];
            int j1 = 0xff & i1 >> 16 | (0xff0000 & i1 << 16 | 0xff00ff00 & i1);
            ai1[l + i * (-1 + (j - k))] = j1;
            l++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    public Bitmap CaptureMapScreenShot(View view, GL10 gl10)
    {
        int i;
        int j;
        int ai[];
        int ai1[];
        int k;
        i = view.getMeasuredWidth();
        j = view.getMeasuredHeight();
        ai = new int[i * j];
        ai1 = new int[i * j];
        IntBuffer intbuffer = IntBuffer.wrap(ai);
        intbuffer.position(0);
        gl10.glReadPixels(0, 0, i, j, 6408, 5121, intbuffer);
        k = 0;
_L2:
        if (k >= j)
        {
            return Bitmap.createBitmap(ai1, i, j, android.graphics.Bitmap.Config.ARGB_8888);
        }
        int l = 0;
        do
        {
label0:
            {
                if (l < i)
                {
                    break label0;
                }
                k++;
            }
            if (true)
            {
                continue;
            }
            int i1 = ai[l + k * i];
            int j1 = 0xff & i1 >> 16 | (0xff0000 & i1 << 16 | 0xff00ff00 & i1);
            ai1[l + i * (-1 + (j - k))] = j1;
            l++;
        } while (true);
        if (true) goto _L2; else goto _L1
_L1:
    }

    static 
    {
        mMaxIndex = GetMaxFileIndex();
    }




}
