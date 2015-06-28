// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.AssetManager;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.opengl.GLException;
import android.os.Process;
import android.util.Log;
import android.widget.ImageView;
import com.waze.utils.Stopwatch;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.opengles.GL10;
import javax.microedition.khronos.opengles.GL11;

// Referenced classes of package com.waze:
//            AppService, MapView, ResManager, NativeManager, 
//            NativeCanvas, WazeApplication

public final class OGLRenderer
    implements android.opengl.GLSurfaceView.Renderer
{
    private static final class OGLEvent
        implements Runnable
    {

        final int mEventId;

        public void run()
        {
            NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
            if (mEventId == -1)
            {
                nativecanvas.FlushNTV();
                return;
            }
            if (mEventId == -2)
            {
                Log.w("WAZE DEBUG", "OGL RENDERER DEBUG EVENT");
                NativeManager.Notify(0L);
                return;
            } else
            {
                nativecanvas.OGLEventNTV(mEventId);
                return;
            }
        }

        public OGLEvent(int i)
        {
            mEventId = i;
        }
    }

    public static interface OnRenderListener
    {

        public abstract void onRender();
    }


    private static final String FBO_EXT_NAME = "GL_OES_framebuffer_object";
    private static final String FBO_PROBLEMATIC_GPU[] = {
        "PowerVR SGX 530", "VideoCore IV HW", "Mali-T604", "Mali-T628", "Mali-T624"
    };
    private static final int OGL_EVENT_ID_DEBUG = -2;
    private static final int OGL_EVENT_ID_FLUSH = -1;
    private static final String PREF_FIELD_FBO_SUPPORTED = "FBO Supported";
    private static final String PREF_FIELD_RENDERER = "Renderer";
    private static final String PREF_NAME = "com.waze.OGLRenderer";
    private static final String RENDERER_UNDEFINED = "=== UNDEFINED ===";
    private static String SW_RENDERER_NAME = "Android PixelFlinger";
    private static boolean mFBOsupported = false;
    private static boolean mInitialized = false;
    private static boolean mPrefsLoaded = false;
    private static String mRenderer = "=== UNDEFINED ===";
    final int LOG_RENDER_COUNT = 5;
    boolean bTryToRender;
    Bitmap mBitmap;
    private GL10 mGL;
    int mImageData[];
    OnRenderListener mOnRenderListener;
    int mRenderCount;
    int mTex[];
    private MapView mView;
    ImageView toRender;

    public OGLRenderer(MapView mapview)
    {
        mRenderCount = 0;
        mBitmap = null;
        mTex = null;
        mImageData = null;
        mGL = null;
        mView = null;
        toRender = null;
        mOnRenderListener = null;
        bTryToRender = false;
        mView = mapview;
    }

    private void createBitmapFromGLSurface(int i, int j, int k, int l, GL10 gl10)
        throws OutOfMemoryError
    {
        bTryToRender = false;
        int ai[] = new int[k * l];
        int ai1[] = new int[k * l];
        IntBuffer intbuffer = IntBuffer.wrap(ai);
        intbuffer.position(0);
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        try
        {
            gl10.glReadPixels(i, j, k, l, 6408, 5121, intbuffer);
        }
        catch (GLException glexception)
        {
            return;
        }
        i1 = 0;
        if (i1 >= l)
        {
            try
            {
                renderImage(Bitmap.createBitmap(ai1, k, l, android.graphics.Bitmap.Config.ARGB_8888));
                return;
            }
            catch (OutOfMemoryError outofmemoryerror)
            {
                return;
            }
        }
        j1 = i1 * k;
        k1 = k * (-1 + (l - i1));
        l1 = 0;
label0:
        {
            if (l1 < k)
            {
                break label0;
            }
            i1++;
        }
        break MISSING_BLOCK_LABEL_58;
        i2 = j1 + l1;
        j2 = ai[i2];
        k2 = 0xff & j2 >> 16 | (0xff0000 & j2 << 16 | 0xff00ff00 & j2);
        ai1[k1 + l1] = k2;
        l1++;
        break MISSING_BLOCK_LABEL_101;
    }

    public static Runnable createDebugEvent()
    {
        return new OGLEvent(-2);
    }

    public static Runnable createFlushEvent()
    {
        return new OGLEvent(-1);
    }

    public static Runnable createOGLEvent(int i)
    {
        return new OGLEvent(i);
    }

    private static SharedPreferences getPrefs()
    {
        return AppService.getAppContext().getSharedPreferences("com.waze.OGLRenderer", 0);
    }

    public static String getRenderer()
    {
        return mRenderer;
    }

    public static boolean gpuSupported()
    {
        if (isOglDataInitialized())
        {
            boolean flag;
            boolean flag1;
            if (mRenderer != null)
            {
                flag = true;
            } else
            {
                flag = false;
            }
            if (mRenderer.equals(SW_RENDERER_NAME))
            {
                flag1 = false;
            } else
            {
                flag1 = true;
            }
            if (flag & flag1)
            {
                return true;
            }
        }
        return false;
    }

    private void init(GL10 gl10)
    {
        if (mInitialized)
        {
            return;
        } else
        {
            mGL = gl10;
            mRenderer = gl10.glGetString(7937);
            setFBOsupported(gl10, mRenderer);
            savePrefs();
            Runnable runnable = new Runnable() {

                final OGLRenderer this$0;

                public void run()
                {
                    mView.onGLReady();
                }

            
            {
                this$0 = OGLRenderer.this;
                super();
            }
            };
            mView.post(runnable);
            mInitialized = true;
            return;
        }
    }

    public static boolean isFBOsupported()
    {
        return mFBOsupported;
    }

    public static boolean isOglDataInitialized()
    {
        if (!mPrefsLoaded)
        {
            loadPrefs();
        }
        return mRenderer == null || !mRenderer.equals("=== UNDEFINED ===");
    }

    private static void loadPrefs()
    {
        SharedPreferences sharedpreferences = getPrefs();
        mFBOsupported = sharedpreferences.getBoolean("FBO Supported", false);
        mRenderer = sharedpreferences.getString("Renderer", "=== UNDEFINED ===");
        mPrefsLoaded = true;
    }

    private void renderImage(final Bitmap b)
    {
        this;
        JVM INSTR monitorenter ;
        if (toRender != null)
        {
            toRender.post(new Runnable() {

                final OGLRenderer this$0;
                private final Bitmap val$b;

                public void run()
                {
                    if (toRender != null)
                    {
                        toRender.setImageBitmap(b);
                        mOnRenderListener.onRender();
                    }
                }

            
            {
                this$0 = OGLRenderer.this;
                b = bitmap;
                super();
            }
            });
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private static void savePrefs()
    {
        android.content.SharedPreferences.Editor editor = getPrefs().edit();
        editor.putBoolean("FBO Supported", mFBOsupported);
        editor.putString("Renderer", mRenderer);
        editor.commit();
    }

    private static void setFBOsupported(GL10 gl10, String s)
    {
        int i;
        mFBOsupported = false;
        i = 0;
_L5:
        if (i < FBO_PROBLEMATIC_GPU.length) goto _L2; else goto _L1
_L1:
        String as[];
        int j;
        as = gl10.glGetString(7939).split(" ");
        j = 0;
_L6:
        if (as != null && j < as.length)
        {
            break MISSING_BLOCK_LABEL_62;
        }
_L4:
        return;
_L2:
        if (FBO_PROBLEMATIC_GPU[i].equals(s)) goto _L4; else goto _L3
_L3:
        i++;
          goto _L5
        if (as[j].equals("GL_OES_framebuffer_object"))
        {
            mFBOsupported = true;
        }
        j++;
          goto _L6
    }

    void _debug_clear(GL10 gl10)
    {
        gl10.glClearColor(0.7F, 0.7F, 0.7F, 0.0F);
        gl10.glClear(16640);
    }

    void _debug_draw_image(GL10 gl10)
    {
        int i1;
        GL11 gl11;
        int i;
        int j;
        int ai[];
        int k;
        int l;
        ByteBuffer bytebuffer;
        IntBuffer intbuffer;
        float af[];
        float af1[];
        ByteBuffer bytebuffer1;
        FloatBuffer floatbuffer;
        ByteBuffer bytebuffer2;
        FloatBuffer floatbuffer1;
        int j1;
        try
        {
            gl11 = (GL11)gl10;
            gl11.glEnable(3553);
            gl11.glEnableClientState(32888);
            gl11.glEnableClientState(32885);
            if (mBitmap == null)
            {
                mBitmap = BitmapFactory.decodeStream(AppService.getAppContext().getAssets().open((new StringBuilder(String.valueOf(ResManager.GetSkinsPathCommon()))).append("location.bin").toString()));
                mTex = new int[1];
                gl11.glGenTextures(1, mTex, 0);
                mImageData = new int[mBitmap.getWidth() * mBitmap.getHeight()];
                mBitmap.getPixels(mImageData, 0, mBitmap.getWidth(), 0, 0, mBitmap.getWidth(), mBitmap.getHeight());
            }
            gl11.glBindTexture(3553, mTex[0]);
            gl11.glTexParameteri(3553, 10241, 9729);
            gl11.glTexParameteri(3553, 10240, 9729);
            i = Integer.highestOneBit(mBitmap.getWidth()) << 1;
            j = Integer.highestOneBit(mBitmap.getHeight()) << 1;
            ai = new int[i * j];
        }
        catch (Exception exception)
        {
            Log.e("WAZE", "OGL Renderer error");
            exception.printStackTrace();
            return;
        }
        k = 0;
        l = mBitmap.getWidth();
        if (k < l)
        {
            break MISSING_BLOCK_LABEL_683;
        }
        bytebuffer = ByteBuffer.allocateDirect(4 * ai.length);
        bytebuffer.order(ByteOrder.nativeOrder());
        intbuffer = bytebuffer.asIntBuffer();
        intbuffer.put(ai);
        intbuffer.position(0);
        gl11.glTexImage2D(3553, 0, 6408, i, j, 0, 6408, 5121, intbuffer);
        gl11.glColor4f(1.0F, 1.0F, 1.0F, 1.0F);
        af = new float[12];
        af[0] = 0.0F;
        af[1] = 0.0F;
        af[2] = -6F;
        af[3] = mBitmap.getWidth();
        af[4] = 0.0F;
        af[5] = -6F;
        af[6] = mBitmap.getWidth();
        af[7] = mBitmap.getHeight();
        af[8] = -6F;
        af[9] = 0.0F;
        af[10] = mBitmap.getHeight();
        af[11] = -6F;
        af1 = (new float[] {
            0.0F, 0.0F, 1.0F, 0.0F, 1.0F, 1.0F, 0.0F, 1.0F
        });
        bytebuffer1 = ByteBuffer.allocateDirect(4 * af.length);
        bytebuffer1.order(ByteOrder.nativeOrder());
        floatbuffer = bytebuffer1.asFloatBuffer();
        floatbuffer.put(af);
        floatbuffer.position(0);
        bytebuffer2 = ByteBuffer.allocateDirect(4 * af1.length);
        bytebuffer2.order(ByteOrder.nativeOrder());
        floatbuffer1 = bytebuffer2.asFloatBuffer();
        floatbuffer1.put(af1);
        floatbuffer1.position(0);
        gl11.glVertexPointer(3, 5126, 0, floatbuffer);
        gl11.glTexCoordPointer(2, 5126, 0, floatbuffer1);
        gl11.glDrawArrays(6, 0, 4);
        return;
_L2:
        j1 = mBitmap.getHeight();
label0:
        {
            if (i1 < j1)
            {
                break label0;
            }
            k++;
        }
        break MISSING_BLOCK_LABEL_245;
        ai[i1 + k * i] = mImageData[i1 + k * mBitmap.getWidth()];
        i1++;
        continue; /* Loop/switch isn't completed */
        i1 = 0;
        if (true) goto _L2; else goto _L1
_L1:
    }

    void _debug_draw_line(GL10 gl10)
    {
        float af[] = {
            0.0F, 0.0F, 300F, 700F
        };
        ByteBuffer bytebuffer = ByteBuffer.allocateDirect(16);
        bytebuffer.order(ByteOrder.nativeOrder());
        FloatBuffer floatbuffer = bytebuffer.asFloatBuffer();
        floatbuffer.put(af);
        floatbuffer.position(0);
        gl10.glEnableClientState(32884);
        gl10.glColor4f(0.0F, 1.0F, 0.0F, 0.5F);
        gl10.glVertexPointer(2, 5126, 0, floatbuffer);
        gl10.glDrawArrays(1, 0, 2);
    }

    void _debug_prepare(GL10 gl10)
    {
        gl10.glMatrixMode(5889);
        gl10.glLoadIdentity();
        gl10.glMatrixMode(5888);
        gl10.glLoadIdentity();
        gl10.glOrthof(0.0F, 480F, 765F, 0.0F, -100F, 100F);
        gl10.glViewport(0, 0, (int)480F, (int)765F);
        gl10.glBlendFunc(770, 771);
        gl10.glEnable(3042);
        gl10.glHint(3152, 4354);
        gl10.glDisable(2929);
        gl10.glDisable(3024);
        gl10.glDisable(2896);
        gl10.glDisableClientState(32886);
        gl10.glDisableClientState(32885);
        gl10.glEnableClientState(32884);
    }

    public GL10 getGL()
    {
        return mGL;
    }

    public void onDrawFrame(GL10 gl10)
    {
        if (AppService.getNativeManager() == null)
        {
            break MISSING_BLOCK_LABEL_120;
        }
        NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
        if (nativecanvas != null && (nativecanvas.isDestroying() || nativecanvas.isCreated()))
        {
            if (nativecanvas.isRenderPending())
            {
                int i = mRenderCount;
                mRenderCount = i + 1;
                if (i < 5)
                {
                    WazeApplication.startSW.startDelta((new StringBuilder("Render # ")).append(mRenderCount).toString(), false);
                }
                nativecanvas.setRenderPending(false);
                nativecanvas.RenderNTV();
            } else
            {
                gl10.glClear(16640);
            }
        }
        if (!shouldRenderImage())
        {
            break MISSING_BLOCK_LABEL_120;
        }
        createBitmapFromGLSurface(0, 0, mView.getWidth(), mView.getHeight(), gl10);
        return;
        OutOfMemoryError outofmemoryerror;
        outofmemoryerror;
    }

    public void onSurfaceChanged(GL10 gl10, final int width, final int height)
    {
        Log.w("WAZE", (new StringBuilder("OGL RENDERER SURFACE CHANGED ( ")).append(width).append(" , ").append(height).append(" ) ").toString());
        WazeApplication.startSW.startDelta("OGLRenderer onSurfaceChanged", false);
        gl10.glDisable(3024);
        gl10.glClear(16640);
        AppService.Post(new Runnable() {

            final OGLRenderer this$0;
            private final int val$height;
            private final int val$width;

            public void run()
            {
                mView.surfaceChangedCompleted(width, height);
            }

            
            {
                this$0 = OGLRenderer.this;
                width = i;
                height = j;
                super();
            }
        });
    }

    public void onSurfaceCreated(GL10 gl10, EGLConfig eglconfig)
    {
        Log.w("WAZE", "OGL RENDERER SURFACE CREATED");
        Process.setThreadPriority(-4);
        init(gl10);
        gl10.glDisable(3024);
        gl10.glClear(16640);
    }

    public void setImageToRender(ImageView imageview, OnRenderListener onrenderlistener)
    {
        this;
        JVM INSTR monitorenter ;
        toRender = imageview;
        mOnRenderListener = onrenderlistener;
        boolean flag;
        if (toRender != null)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        bTryToRender = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean shouldRenderImage()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = bTryToRender;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    static 
    {
        loadPrefs();
    }

}
