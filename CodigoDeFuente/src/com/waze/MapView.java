// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Bitmap;
import android.opengl.GLSurfaceView;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.MotionEvent;
import android.view.SurfaceHolder;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;
import android.view.inputmethod.EditorInfo;
import android.view.inputmethod.InputConnection;
import android.view.inputmethod.InputMethodManager;
import android.widget.ImageView;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.utils.Stopwatch;
import java.util.Arrays;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.waze:
//            OGLRenderer, NativeManager, AppService, NativeCanvas, 
//            WazeApplication

public final class MapView extends GLSurfaceView
{
    private class AppViewInputConnection extends BaseInputConnection
    {

        final MapView this$0;

        public boolean performEditorAction(int i)
        {
            int j = mImeAction;
            boolean flag = false;
            if (i == j)
            {
                onKeyDown(66, new KeyEvent(0, 66));
                if (mImeCloseOnAction)
                {
                    HideSoftInput();
                }
                flag = true;
            }
            return flag;
        }

        AppViewInputConnection(View view)
        {
            this$0 = MapView.this;
            super(view, false);
        }
    }


    public static int GPU_NOT_SUPPORTED = 0;
    public static int GPU_SUPPORTED = 0;
    public static int GPU_UNDEFINED = 0;
    private static final int MODIFIER_STATE_CLICK = 1;
    private static final int MODIFIER_STATE_DOUBLE_CLICK = 2;
    private static final int MODIFIER_STATE_NONE = 0;
    private static final float MOTION_RESOLUTION_VAL = 0.5F;
    private static final int mUnhandledKeys[] = {
        24, 25, 62, 90, 87, 85, 88, 89, 86
    };
    private static final int mUnhandledKeysMetaMask[];
    private boolean handleKeys;
    private boolean handleTouch;
    private int mImeAction;
    private boolean mImeCloseOnAction;
    private volatile boolean mIsRunning;
    private volatile boolean mIsSurfaceReady;
    private KeyEvent mLastEvent;
    private MotionEvent mLastHandledEvent;
    private int mModifierKeyCode;
    private int mModifierState;
    private RunnableExecutor mNativeCanvasReadyEvent;
    private OGLRenderer mRenderer;
    public Bitmap mSplashBitmap;

    public MapView(Context context)
    {
        super(context);
        mRenderer = null;
        mImeAction = 0;
        mImeCloseOnAction = false;
        mSplashBitmap = null;
        mIsRunning = false;
        mIsSurfaceReady = false;
        mLastEvent = null;
        mModifierState = 0;
        mModifierKeyCode = -1;
        mNativeCanvasReadyEvent = null;
        Init();
    }

    public MapView(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        mRenderer = null;
        mImeAction = 0;
        mImeCloseOnAction = false;
        mSplashBitmap = null;
        mIsRunning = false;
        mIsSurfaceReady = false;
        mLastEvent = null;
        mModifierState = 0;
        mModifierKeyCode = -1;
        mNativeCanvasReadyEvent = null;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, R.styleable.MainView);
        handleKeys = typedarray.getBoolean(0, true);
        handleTouch = typedarray.getBoolean(1, true);
        if (!isInEditMode())
        {
            Init();
        }
    }

    private void Init()
    {
        if (!isInEditMode())
        {
            mRenderer = new OGLRenderer(this);
            setRenderer(mRenderer);
            setRenderMode(0);
        }
        setFocusableInTouchMode(true);
        Arrays.sort(mUnhandledKeys);
    }

    public static String getRenderer()
    {
        return OGLRenderer.getRenderer();
    }

    public static int gpuSupported()
    {
        if (!OGLRenderer.isOglDataInitialized())
        {
            return GPU_UNDEFINED;
        }
        if (OGLRenderer.gpuSupported())
        {
            return GPU_SUPPORTED;
        } else
        {
            return GPU_NOT_SUPPORTED;
        }
    }

    public static boolean isFBOsupported()
    {
        return OGLRenderer.isFBOsupported();
    }

    public static boolean isOglDataInitialized()
    {
        return OGLRenderer.isOglDataInitialized();
    }

    public void HideSoftInput()
    {
        getInputMethodManager().hideSoftInputFromWindow(getWindowToken(), 0);
    }

    public boolean IsReady()
    {
        return mIsRunning && mIsSurfaceReady;
    }

    public void ShowSoftInput()
    {
        getInputMethodManager().restartInput(this);
        getInputMethodManager().showSoftInput(this, 2);
    }

    public boolean dispatchKeyEventPreIme(KeyEvent keyevent)
    {
        if (!handleKeys)
        {
            return super.dispatchKeyEventPreIme(keyevent);
        } else
        {
            return onKeyDown(keyevent.getKeyCode(), keyevent);
        }
    }

    public GL10 getGL()
    {
        if (mRenderer == null)
        {
            return null;
        } else
        {
            return mRenderer.getGL();
        }
    }

    public InputMethodManager getInputMethodManager()
    {
        return (InputMethodManager)getContext().getSystemService("input_method");
    }

    public InputConnection onCreateInputConnection(EditorInfo editorinfo)
    {
        editorinfo.imeOptions = 0x10000000 | mImeAction;
        editorinfo.inputType = 0x10001;
        return new AppViewInputConnection(this);
    }

    public void onGLReady()
    {
        NativeManager.getInstance().onGLReady();
    }

    public boolean onKeyDown(int i, KeyEvent keyevent)
    {
        int j;
        Configuration configuration;
        j = keyevent.getMetaState();
        configuration = getContext().getResources().getConfiguration();
        if (mLastEvent == keyevent)
        {
            return super.onKeyDown(i, keyevent);
        }
        mLastEvent = keyevent;
        int k = Arrays.binarySearch(mUnhandledKeys, i);
        if (k >= 0 && (mUnhandledKeysMetaMask[k] == 0 || (mUnhandledKeysMetaMask[k] & keyevent.getMetaState()) > 0))
        {
            return super.onKeyDown(i, keyevent);
        }
        if (i == 82)
        {
            NativeManager nativemanager1 = AppService.getNativeManager();
            return nativemanager1 == null || !nativemanager1.IsMenuEnabled();
        }
        if (keyevent.getAction() != 0 && keyevent.getAction() != 2)
        {
            return true;
        }
        if (i == 6)
        {
            return true;
        }
        if (configuration.hardKeyboardHidden != 1) goto _L2; else goto _L1
_L1:
        if (KeyEvent.isModifierKey(i))
        {
            if (mModifierKeyCode == i)
            {
                mModifierState = (1 + mModifierState) % 3;
            } else
            {
                mModifierKeyCode = i;
                mModifierState = 1;
            }
            return super.onKeyDown(i, keyevent);
        }
        if (mModifierState != 2) goto _L4; else goto _L3
_L3:
        if (mModifierKeyCode == 57 || mModifierKeyCode == 58)
        {
            j = 2;
        }
        if (mModifierKeyCode == 59 || mModifierKeyCode == 60)
        {
            j = 1;
        }
_L2:
        NativeManager nativemanager;
        nativemanager = AppService.getNativeManager();
        if (!handleKeys && (i == 84 || i == 4))
        {
            return super.onKeyDown(i, keyevent);
        }
        break; /* Loop/switch isn't completed */
_L4:
        if (!keyevent.isShiftPressed() && !keyevent.isAltPressed())
        {
            mModifierKeyCode = -1;
            mModifierState = 0;
        }
        if (true) goto _L2; else goto _L5
_L5:
        if (i == 27)
        {
            return true;
        }
        if (nativemanager != null)
        {
            KeyEvent keyevent1 = keyevent;
            if (keyevent.getAction() == 0)
            {
                keyevent1 = new KeyEvent(keyevent.getEventTime(), keyevent.getEventTime(), keyevent.getAction(), keyevent.getKeyCode(), keyevent.getRepeatCount(), j);
            }
            if (keyevent.getAction() == 2)
            {
                keyevent1 = new KeyEvent(keyevent.getEventTime(), keyevent.getCharacters(), keyevent.getDeviceId(), keyevent.getFlags());
            }
            nativemanager.setKeyEvent(keyevent1);
            nativemanager.PostUIMessage(NativeManager.UIEvent.UI_EVENT_KEY_DOWN);
        }
        return true;
    }

    public boolean onKeyMultiple(int i, int j, KeyEvent keyevent)
    {
        return onKeyDown(i, keyevent);
    }

    public void onNativeCanvasReady()
    {
        if (mNativeCanvasReadyEvent != null)
        {
            mNativeCanvasReadyEvent.run();
        }
    }

    public void onPause()
    {
        Log.w("WAZE", "MapView onPause");
        NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
        if (nativecanvas != null)
        {
            nativecanvas.DestroyCanvas(this);
        }
        mIsRunning = false;
        super.onPause();
    }

    public void onResume()
    {
        WazeApplication.startSW.startDelta("MapView onResume", false);
        Log.w("WAZE", "MapView onResume");
        super.onResume();
        mIsRunning = true;
        if (NativeManager.IsAppStarted() && mIsSurfaceReady)
        {
            NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
            if (nativecanvas != null)
            {
                nativecanvas.CreateCanvas(this, getWidth(), getHeight());
            }
        }
        NativeManager.onSurfaceReady();
    }

    public boolean onTouchEvent(MotionEvent motionevent)
    {
        if (!handleTouch)
        {
            break MISSING_BLOCK_LABEL_103;
        }
        if (motionevent.getAction() != 2 || mLastHandledEvent.getAction() != 2 || Math.abs(mLastHandledEvent.getX() - motionevent.getX()) >= 0.5F || Math.abs(mLastHandledEvent.getY() - motionevent.getY()) >= 0.5F) goto _L2; else goto _L1
_L1:
        return true;
_L2:
        NativeManager nativemanager;
        nativemanager = AppService.getNativeManager();
        mLastHandledEvent = MotionEvent.obtain(motionevent);
        if (nativemanager == null) goto _L1; else goto _L3
_L3:
        nativemanager.setTouchEvent(mLastHandledEvent);
        nativemanager.PostUIMessage(NativeManager.UIEvent.UI_EVENT_TOUCH);
        return true;
        return false;
    }

    public void orientationChanged()
    {
    }

    public void setHandleKeys(boolean flag)
    {
        handleKeys = flag;
    }

    public void setHandleTouch(boolean flag)
    {
        handleTouch = flag;
        setFocusableInTouchMode(flag);
    }

    public void setImageViewToRender(ImageView imageview, OGLRenderer.OnRenderListener onrenderlistener)
    {
        mRenderer.setImageToRender(imageview, onrenderlistener);
    }

    public void setImeAction(int i)
    {
        mImeAction = i;
    }

    public void setImeCloseOnAction(boolean flag)
    {
        mImeCloseOnAction = flag;
    }

    public void setNativeCanvasReadyEvent(RunnableExecutor runnableexecutor)
    {
        mNativeCanvasReadyEvent = runnableexecutor;
    }

    public void surfaceChanged(SurfaceHolder surfaceholder, int i, int j, int k)
    {
        Log.w("WAZE", (new StringBuilder("MapView Surface changed: ")).append(j).append(", ").append(k).append(".").toString());
        if (NativeManager.IsAppStarted())
        {
            NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
            if (nativecanvas != null)
            {
                nativecanvas.DestroyCanvas(this);
            }
        }
        super.surfaceChanged(surfaceholder, i, j, k);
        WazeApplication.startSW.startDelta("MapView surfaceChanged", false);
    }

    public void surfaceChangedCompleted(int i, int j)
    {
        NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
        WazeApplication.startSW.startDelta("MapView surfaceChangedCompleted", false);
        mIsSurfaceReady = true;
        if (NativeManager.IsAppStarted() && nativecanvas != null)
        {
            nativecanvas.CreateCanvas(this, i, j);
        }
        NativeManager.onSurfaceReady();
        Log.w("WAZE", "MapView Surface changed completed");
    }

    public void surfaceCreated(SurfaceHolder surfaceholder)
    {
        super.surfaceCreated(surfaceholder);
    }

    public void surfaceDestroyed(SurfaceHolder surfaceholder)
    {
        if (NativeManager.IsAppStarted())
        {
            NativeCanvas nativecanvas = NativeManager.getNativeCanvas();
            if (nativecanvas != null)
            {
                nativecanvas.DestroyCanvas(this);
            }
        }
        super.surfaceDestroyed(surfaceholder);
        mIsSurfaceReady = false;
    }

    static 
    {
        GPU_UNDEFINED = -1;
        GPU_NOT_SUPPORTED = 0;
        GPU_SUPPORTED = 1;
        int ai[] = new int[9];
        ai[2] = 2;
        mUnhandledKeysMetaMask = ai;
    }


}
