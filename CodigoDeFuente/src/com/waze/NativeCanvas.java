// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.SystemClock;
import android.util.Log;
import android.view.Display;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.View;
import android.view.WindowManager;
import com.waze.ifs.async.RunnableExecutor;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            NativeManager, ResManager, AppService, MapView, 
//            Logger, MainActivity, LayoutManager, OGLRenderer

public final class NativeCanvas
{
    private static final class CompatabilityWrapper
    {

        public static int getPointerCount(MotionEvent motionevent)
        {
            return motionevent.getPointerCount();
        }

        public static float getX(MotionEvent motionevent, int i)
        {
            return motionevent.getX(i);
        }

        public static float getY(MotionEvent motionevent, int i)
        {
            return motionevent.getY(i);
        }

        private CompatabilityWrapper()
        {
        }
    }


    public static final long CANVAS_VIEW_READY_TIMEOUT = 5000L;
    public static final int WAZE_CORDING_MAX_POINTS = 8;
    public static final long WAZE_OGL_RENDER_WAIT_TIMEOUT = 100L;
    public static final long WAZE_OGL_SWAP_BUFFERS_DELAY = 10L;
    private static ArrayList mCanvasReadyEvents = new ArrayList();
    private static NativeCanvas mInstance = null;
    private boolean mCancelSplashNeeded;
    private volatile boolean mCanvasCreated;
    private int mCanvasHeight;
    private int mCanvasPixelFormat;
    private MapView mCanvasView;
    private int mCanvasWidth;
    private volatile boolean mCreateRequest;
    private volatile boolean mDestroyRequest;
    private Display mDisplay;
    private boolean mIsOrientionUpdate;
    private volatile boolean mIsWaiting;
    private NativeManager mNativeManager;
    private volatile boolean mRenderPending;
    private volatile boolean mResizeRequest;

    private NativeCanvas()
    {
        mCanvasView = null;
        mCanvasWidth = -1;
        mCanvasHeight = -1;
        mCanvasPixelFormat = -1;
        mCanvasCreated = false;
        mDestroyRequest = false;
        mResizeRequest = false;
        mCreateRequest = false;
        mIsWaiting = false;
        mRenderPending = false;
        mCancelSplashNeeded = true;
        mIsOrientionUpdate = false;
        mNativeManager = NativeManager.getInstance();
        InitNativeLayerNTV();
    }

    private void CallOnCanvasReadyEvents()
    {
        do
        {
            if (mCanvasReadyEvents.size() <= 0)
            {
                return;
            }
            ((RunnableExecutor)mCanvasReadyEvents.remove(0)).run();
        } while (true);
    }

    private native void CanvasConfigureNTV(boolean flag, boolean flag1, String s);

    public static Bitmap GetSplashBmp(View view)
    {
        java.io.InputStream inputstream1 = ResManager.LoadSkinStream(ResManager.GetSplashName(false));
        java.io.InputStream inputstream = inputstream1;
_L2:
        Bitmap bitmap = null;
        if (inputstream != null)
        {
            android.graphics.BitmapFactory.Options options = new android.graphics.BitmapFactory.Options();
            options.inPreferredConfig = android.graphics.Bitmap.Config.ARGB_8888;
            bitmap = BitmapFactory.decodeStream(inputstream, null, options);
        }
        return bitmap;
        Exception exception;
        exception;
        Log.w("WAZE", (new StringBuilder("Error loading splash screen! ")).append(exception.getMessage()).toString());
        exception.printStackTrace();
        inputstream = null;
        if (true) goto _L2; else goto _L1
_L1:
    }

    private native void InitCanvasNTV(int i, int j, int k);

    private native void InitNativeLayerNTV();

    private native void KeyDownHandlerNTV(int i, boolean flag, byte abyte0[]);

    private native void MouseMovedNTV(int ai[]);

    private native void MousePressedNTV(int ai[]);

    private native void MouseReleasedNTV(int ai[]);

    public static void Notify()
    {
        if (mInstance == null)
        {
            Log.e("WAZE", "Cannot notify - NativeCanvas is not initialized");
        }
        synchronized (mInstance)
        {
            mInstance.notifyAll();
        }
        return;
        exception;
        nativecanvas;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public static void PostOnCanvasReadyEvents()
    {
        do
        {
            if (mCanvasReadyEvents.size() <= 0)
            {
                return;
            }
            NativeManager.Post((Runnable)mCanvasReadyEvents.remove(0));
        } while (true);
    }

    private native void Tap3NTV();

    public static boolean Wait(long l)
    {
        boolean flag;
        flag = false;
        if (mInstance == null)
        {
            Log.e("WAZE", "Cannot wait - NativeCanvas is not initialized");
        }
        NativeCanvas nativecanvas = mInstance;
        nativecanvas;
        JVM INSTR monitorenter ;
        int i;
        long l1 = SystemClock.elapsedRealtime();
        mInstance.mIsWaiting = true;
        mInstance.wait(l);
        mInstance.mIsWaiting = false;
        i = SystemClock.elapsedRealtime() - l1 != l;
        flag = false;
        if (i < 0)
        {
            flag = true;
        }
        nativecanvas;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        nativecanvas;
        JVM INSTR monitorexit ;
        try
        {
            throw exception;
        }
        catch (InterruptedException interruptedexception)
        {
            Log.e("WAZE", "NativeCanvas wait was interrupted!", interruptedexception);
        }
        return flag;
    }

    private void cancelSplash()
    {
        if (mCancelSplashNeeded)
        {
            final MainActivity mainActivity = AppService.getMainActivity();
            if (mainActivity != null)
            {
                mCanvasView.postDelayed(new Runnable() {

                    final NativeCanvas this$0;
                    private final MainActivity val$mainActivity;

                    public void run()
                    {
                        mainActivity.cancelSplash();
                    }

            
            {
                this$0 = NativeCanvas.this;
                mainActivity = mainactivity;
                super();
            }
                }, 250L);
            }
            mCancelSplashNeeded = false;
        }
    }

    public static NativeCanvas create()
    {
        if (mInstance == null)
        {
            mInstance = new NativeCanvas();
        }
        return mInstance;
    }

    private void createCanvasEvent(int i, int j)
    {
        Log.w("WAZE", "Create canvas event");
        initNativeCanvas(i, j);
        CanvasCreateNTV();
        mCanvasCreated = true;
        mCanvasView.onNativeCanvasReady();
    }

    private void destroyCanvasEvent()
    {
        mCanvasCreated = false;
        CanvasDestroyNTV();
    }

    public static NativeCanvas getInstance()
    {
        return create();
    }

    private void initNativeCanvas(int i, int j)
    {
        boolean flag = true;
        WindowManager windowmanager = (WindowManager)AppService.getAppContext().getSystemService("window");
        if (windowmanager != null)
        {
            mCanvasPixelFormat = windowmanager.getDefaultDisplay().getPixelFormat();
        }
        if (mCanvasWidth != -1)
        {
            boolean flag1;
            if (mCanvasWidth > mCanvasHeight)
            {
                flag1 = flag;
            } else
            {
                flag1 = false;
            }
            if (i <= j)
            {
                flag = false;
            }
            mIsOrientionUpdate = flag ^ flag1;
        }
        mCanvasWidth = i;
        mCanvasHeight = j;
        InitCanvasNTV(mCanvasWidth, mCanvasHeight, mCanvasPixelFormat);
    }

    public static int nextPowerOf2(int i)
    {
        int j = i - 1;
        int k = j | j >> 1;
        int l = k | k >> 2;
        int i1 = l | l >> 4;
        int j1 = i1 | i1 >> 8;
        return 1 + (j1 | j1 >> 16);
    }

    private void notifyCreate()
    {
        this;
        JVM INSTR monitorenter ;
        if (mCreateRequest)
        {
            mCreateRequest = false;
            notifyAll();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void notifyDestroy()
    {
        this;
        JVM INSTR monitorenter ;
        mDestroyRequest = false;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    private void notifyResize()
    {
        this;
        JVM INSTR monitorenter ;
        mResizeRequest = false;
        notifyAll();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public static void registerOnCanvasReadyEvent(RunnableExecutor runnableexecutor)
    {
        mCanvasReadyEvents.add(runnableexecutor);
    }

    private void resizeCanvasEvent(int i, int j)
    {
        initNativeCanvas(i, j);
        if (mIsOrientionUpdate)
        {
            CanvasOrientationUpdateNTV();
        }
        mIsOrientionUpdate = false;
        ResizeEndNTV();
    }

    private void waitCreate()
    {
        this;
        JVM INSTR monitorenter ;
_L2:
        boolean flag = mCreateRequest;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        wait();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Logger.ee("WAZE", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    private void waitDestroy()
    {
        this;
        JVM INSTR monitorenter ;
_L2:
        boolean flag = mDestroyRequest;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        wait();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Logger.ee("WAZE", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    private void waitResize()
    {
        this;
        JVM INSTR monitorenter ;
_L2:
        boolean flag = mResizeRequest;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_14;
        }
        this;
        JVM INSTR monitorexit ;
        return;
        wait();
        continue; /* Loop/switch isn't completed */
        Exception exception1;
        exception1;
        Logger.ee("WAZE", exception1);
        if (true) goto _L2; else goto _L1
_L1:
        Exception exception;
        exception;
        throw exception;
    }

    public void CanvasConfigure()
    {
        boolean flag;
        if (MapView.gpuSupported() == MapView.GPU_SUPPORTED)
        {
            flag = true;
        } else
        {
            flag = false;
        }
        CanvasConfigureNTV(flag, MapView.isFBOsupported(), MapView.getRenderer());
    }

    public native void CanvasContextNTV();

    public native void CanvasCreateNTV();

    public native void CanvasDestroyNTV();

    public void CanvasOrientationUpdate()
    {
        if (mIsOrientionUpdate)
        {
            CanvasOrientationUpdateNTV();
        }
        mIsOrientionUpdate = false;
    }

    public native void CanvasOrientationUpdateNTV();

    public native void CanvasPrepareNTV();

    public void CreateCanvas(MapView mapview, final int aWidth, final int aHeight)
    {
        if (!mapview.IsReady())
        {
            Log.w("WAZE", "Cannot create canvas - view is not ready");
            return;
        }
        mCanvasView = mapview;
        Runnable runnable = new Runnable() {

            final NativeCanvas this$0;
            private final int val$aHeight;
            private final int val$aWidth;

            public void run()
            {
                if (mCanvasCreated)
                {
                    CanvasDestroyNTV();
                }
                createCanvasEvent(aWidth, aHeight);
                notifyCreate();
            }

            
            {
                this$0 = NativeCanvas.this;
                aWidth = i;
                aHeight = j;
                super();
            }
        };
        if (mNativeManager.IsNativeThread())
        {
            runnable.run();
            return;
        } else
        {
            mCreateRequest = true;
            mNativeManager.PostRunnable(runnable);
            waitCreate();
            return;
        }
    }

    public void DestroyCanvas(MapView mapview)
    {
        if (mDestroyRequest || !mCanvasCreated || !isCanvasView(mapview) || NativeManager.isShuttingDown())
        {
            return;
        }
        if (mNativeManager.IsNativeThread())
        {
            destroyCanvasEvent();
        } else
        {
            Runnable runnable = new Runnable() {

                final NativeCanvas this$0;

                public void run()
                {
                    destroyCanvasEvent();
                    notifyDestroy();
                }

            
            {
                this$0 = NativeCanvas.this;
                super();
            }
            };
            mDestroyRequest = true;
            mNativeManager.PostRunnable(runnable);
            waitDestroy();
        }
        Log.w("WAZE DEBUG", "Destroy completed");
    }

    public native void DestroyedNTV();

    public native void FlushNTV();

    public native void OGLEventNTV(int i);

    public boolean OnKeyDownHandler(KeyEvent keyevent)
    {
        int i;
        int j;
        String s;
        byte abyte0[];
        i = keyevent.getKeyCode();
        j = keyevent.getUnicodeChar();
        s = keyevent.getCharacters();
        abyte0 = new byte[64];
        if (j == 0 && s == null) goto _L2; else goto _L1
_L1:
        boolean flag;
        int ai[] = new int[1];
        String s1;
        byte abyte1[];
        int k;
        int l;
        if (j != 0)
        {
            ai[0] = j;
            s1 = new String(ai, 0, 1);
        } else
        {
            s1 = s;
        }
        try
        {
            abyte1 = s1.getBytes("UTF-8");
        }
        catch (UnsupportedEncodingException unsupportedencodingexception)
        {
            Logger.e((new StringBuilder("The conversion to the unicode cannot be performed for ")).append(s1).toString(), unsupportedencodingexception);
            flag = false;
            continue; /* Loop/switch isn't completed */
        }
        k = 0;
_L8:
        l = abyte1.length;
        flag = false;
        if (k >= l) goto _L4; else goto _L3
_L3:
        flag = false;
        if (k < 64) goto _L5; else goto _L4
_L4:
        if (i == 84)
        {
            AppService.getMainActivity().startNavigateActivity();
            return true;
        }
        break; /* Loop/switch isn't completed */
_L5:
        abyte0[k] = abyte1[k];
        k++;
        continue; /* Loop/switch isn't completed */
_L2:
        flag = true;
        if (true) goto _L4; else goto _L6
_L6:
        if (i == 4)
        {
            MainActivity mainactivity = AppService.getMainActivity();
            if (mainactivity != null)
            {
                final LayoutManager layoutMgr = mainactivity.getLayoutMgr();
                if (layoutMgr != null && layoutMgr.IsPopupsShown())
                {
                    AppService.Post(new Runnable() {

                        final NativeCanvas this$0;
                        private final LayoutManager val$layoutMgr;

                        public void run()
                        {
                            layoutMgr.onBackPressed();
                        }

            
            {
                this$0 = NativeCanvas.this;
                layoutMgr = layoutmanager;
                super();
            }
                    });
                    return true;
                }
            }
        }
        KeyDownHandlerNTV(i, flag, abyte0);
        return true;
        if (true) goto _L8; else goto _L7
_L7:
    }

    public boolean OnTouchEventHandler(MotionEvent motionevent)
    {
        int ai[];
        int i;
        int j;
        int k;
        if (android.os.Build.VERSION.SDK_INT < 5)
        {
            break MISSING_BLOCK_LABEL_115;
        }
        i = 0xff & motionevent.getAction();
        j = CompatabilityWrapper.getPointerCount(motionevent);
        ai = new int[j * 2];
        k = 0;
        break MISSING_BLOCK_LABEL_32;
        while (k < j && k != 8) 
        {
            ai[k * 2] = (int)CompatabilityWrapper.getX(motionevent, k);
            ai[1 + k * 2] = (int)CompatabilityWrapper.getY(motionevent, k);
            k++;
        }
        if (i == 5 && motionevent.getAction() != 517)
        {
            MousePressedNTV(ai);
            return true;
        }
        break MISSING_BLOCK_LABEL_102;
        if (i == 6)
        {
            MouseReleasedNTV(ai);
            return true;
        }
        break MISSING_BLOCK_LABEL_135;
        ai = new int[2];
        ai[0] = (int)motionevent.getX();
        ai[1] = (int)motionevent.getY();
        switch (motionevent.getAction())
        {
        default:
            return true;

        case 0: // '\0'
            MousePressedNTV(ai);
            return true;

        case 1: // '\001'
            MouseReleasedNTV(ai);
            return true;

        case 2: // '\002'
            MouseMovedNTV(ai);
            return true;

        case 517: 
            Tap3NTV();
            break;
        }
        return true;
    }

    public void OrientationUpdate()
    {
        if (mIsOrientionUpdate)
        {
            NativeManager.Post(new Runnable() {

                final NativeCanvas this$0;

                public void run()
                {
                    CanvasOrientationUpdateNTV();
                }

            
            {
                this$0 = NativeCanvas.this;
                super();
            }
            });
        }
        mIsOrientionUpdate = false;
    }

    public void RedrawCanvas()
    {
        NativeManager.Post(new Runnable() {

            final NativeCanvas this$0;

            public void run()
            {
                RedrawNTV();
            }

            
            {
                this$0 = NativeCanvas.this;
                super();
            }
        });
    }

    public native void RedrawNTV();

    public native void RenderNTV();

    public boolean RequestFlush()
    {
        if (mCanvasView == null || !mCanvasView.IsReady())
        {
            Logger.ee("Surface is not ready for flushing! Giving up");
            return false;
        } else
        {
            mCanvasView.queueEvent(OGLRenderer.createFlushEvent());
            return true;
        }
    }

    public void RequestOGLEvent(int i)
    {
        if (mCanvasView == null || !mCanvasView.IsReady())
        {
            Logger.e("Surface is not ready for rendering!");
            return;
        } else
        {
            mCanvasView.queueEvent(OGLRenderer.createOGLEvent(i));
            return;
        }
    }

    public boolean RequestRender()
    {
        if (mCanvasView == null || !mCanvasView.IsReady())
        {
            Logger.ee("Canvas is not ready for rendering! Giving up");
            return false;
        }
        cancelSplash();
        this;
        JVM INSTR monitorenter ;
        mRenderPending = true;
        mCanvasView.requestRender();
        this;
        JVM INSTR monitorexit ;
        return true;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public native void ResizeEndNTV();

    public void ResizeStart(MapView mapview)
    {
        if (!mCanvasCreated || !isCanvasView(mapview))
        {
            return;
        } else
        {
            mResizeRequest = true;
            Runnable runnable = new Runnable() {

                final NativeCanvas this$0;

                public void run()
                {
                    ResizeStartNTV();
                    notifyResize();
                }

            
            {
                this$0 = NativeCanvas.this;
                super();
            }
            };
            mNativeManager.PostRunnable(runnable);
            waitResize();
            return;
        }
    }

    public native void ResizeStartNTV();

    public boolean isCanvasView(MapView mapview)
    {
        return mapview == mCanvasView;
    }

    public boolean isCreated()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mCanvasCreated;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isDestroying()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mDestroyRequest;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public boolean isRenderPending()
    {
        this;
        JVM INSTR monitorenter ;
        boolean flag = mRenderPending;
        this;
        JVM INSTR monitorexit ;
        return flag;
        Exception exception;
        exception;
        throw exception;
    }

    public void setCancelSplashNeeded(boolean flag)
    {
        mCancelSplashNeeded = flag;
    }

    public void setRenderPending(boolean flag)
    {
        this;
        JVM INSTR monitorenter ;
        mRenderPending = flag;
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }







}
