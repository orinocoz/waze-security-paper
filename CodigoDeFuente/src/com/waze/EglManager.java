// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;
import android.os.SystemClock;
import android.util.Log;
import android.view.SurfaceView;
import javax.microedition.khronos.egl.EGL10;
import javax.microedition.khronos.egl.EGLConfig;
import javax.microedition.khronos.egl.EGLContext;
import javax.microedition.khronos.egl.EGLDisplay;
import javax.microedition.khronos.egl.EGLSurface;
import javax.microedition.khronos.opengles.GL10;

// Referenced classes of package com.waze:
//            Logger, MsgBox

public final class EglManager
{
    private class EglErrorListener
        implements android.content.DialogInterface.OnClickListener
    {

        final EglManager this$0;

        public void onClick(DialogInterface dialoginterface, int i)
        {
            synchronized (MsgBox.getInstance())
            {
                msgbox.notify();
            }
            return;
            exception;
            msgbox;
            JVM INSTR monitorexit ;
            throw exception;
        }

        private EglErrorListener()
        {
            this$0 = EglManager.this;
            super();
        }

        EglErrorListener(EglErrorListener eglerrorlistener)
        {
            this();
        }
    }


    private static final int EGL_CONTEXT_RECOVER_RETRY_NUM = 5;
    private static final boolean EGL_DEBUG;
    private int mContextRecoverRetry;
    private EGL10 mEgl;
    private EGLConfig mEglConfig;
    private EGLContext mEglContext;
    private EGLDisplay mEglDisplay;
    private EGLSurface mEglSurface;
    public boolean mGLTestStop;
    boolean mIsFirstSwap;
    private SurfaceView mSurfaceView;

    public EglManager(SurfaceView surfaceview)
    {
        mIsFirstSwap = false;
        mContextRecoverRetry = 0;
        mSurfaceView = null;
        mEglDisplay = null;
        mEglContext = null;
        mEglSurface = null;
        mEglConfig = null;
        mEgl = null;
        mGLTestStop = false;
        mSurfaceView = surfaceview;
    }

    private int EglCheck(String s)
    {
        int i = mEgl.eglGetError();
        if (i != 12288)
        {
            String s1 = new String((new StringBuilder("EGL error in ")).append(s).append(". Error code: ").append(i).toString());
            Log.e("WAZE", s1);
            Logger.e(s1);
        }
        return i;
    }

    private int getAttrValue(int ai[], int i)
    {
        int j = 0;
        do
        {
            if (j >= ai.length)
            {
                return -1;
            }
            if (ai[j] == i)
            {
                return ai[j + 1];
            }
            j += 2;
        } while (true);
    }

    private int getCfgValue(EGLConfig eglconfig, int i, int j)
    {
        int ai[] = new int[1];
        if (mEgl.eglGetConfigAttrib(mEglDisplay, eglconfig, i, ai))
        {
            j = ai[0];
        }
        return j;
    }

    public EGLConfig ChooseEglConfig(int ai[])
    {
        int ai1[];
        EGLConfig aeglconfig[];
        int j;
        ai1 = new int[1];
        if (!mEgl.eglChooseConfig(mEglDisplay, ai, null, 0, ai1))
        {
            EglCheck("InitEgl eglChooseConfig");
            Logger.w("eglChooseConfigfailed - failed getting configuration number");
            return null;
        }
        int i = ai1[0];
        if (i <= 0)
        {
            Logger.w("eglChooseConfigfailed - failed getting configuration number");
            return null;
        }
        aeglconfig = new EGLConfig[i];
        if (!mEgl.eglChooseConfig(mEglDisplay, ai, aeglconfig, i, ai1))
        {
            EglCheck("InitEgl eglChooseConfig II");
            Logger.w("eglChooseConfigfailed - failed getting configuration number");
            return null;
        }
        j = 0;
_L5:
        int k;
        int l;
        EGLConfig eglconfig;
        k = aeglconfig.length;
        l = j;
        eglconfig = null;
        if (l < k) goto _L2; else goto _L1
_L1:
        if (eglconfig == null)
        {
            int ai2[] = {
                12344
            };
            EGLConfig aeglconfig1[] = new EGLConfig[1];
            mEgl.eglChooseConfig(mEglDisplay, ai2, aeglconfig1, 1, ai1);
            EglCheck("InitEgl eglChooseConfig III");
            eglconfig = aeglconfig1[0];
        }
        return eglconfig;
_L2:
        EGLConfig eglconfig1 = aeglconfig[j];
        int i1 = getCfgValue(eglconfig1, 12325, 0);
        int j1 = getCfgValue(eglconfig1, 12326, 0);
        if (i1 < getAttrValue(ai, 12325) || j1 < getAttrValue(ai, 12326))
        {
            break; /* Loop/switch isn't completed */
        }
        int k1 = getCfgValue(eglconfig1, 12324, 0);
        int l1 = getCfgValue(eglconfig1, 12323, 0);
        int i2 = getCfgValue(eglconfig1, 12322, 0);
        int j2 = getCfgValue(eglconfig1, 12321, 0);
        if (k1 != getAttrValue(ai, 12324) || l1 != getAttrValue(ai, 12323) || i2 != getAttrValue(ai, 12322) || j2 != getAttrValue(ai, 12321))
        {
            break; /* Loop/switch isn't completed */
        }
        eglconfig = eglconfig1;
        if (true) goto _L1; else goto _L3
_L3:
        j++;
        if (true) goto _L5; else goto _L4
_L4:
    }

    public boolean CreateEglSurface()
    {
        if (mEglSurface != null)
        {
            DestroyEglSurface();
        }
        mEglSurface = mEgl.eglCreateWindowSurface(mEglDisplay, mEglConfig, mSurfaceView.getHolder(), null);
        if (EglCheck("CreateEglSurface eglCreateWindowSurface") == 12288)
        {
            mEgl.eglMakeCurrent(mEglDisplay, mEglSurface, mEglSurface, mEglContext);
            if (EglCheck("CreateEglSurface eglMakeCurrent") == 12288)
            {
                return true;
            }
        }
        return false;
    }

    public void DestroyEgl()
    {
        if (mEglDisplay == null)
        {
            return;
        } else
        {
            DestroyEglSurface();
            mEgl.eglDestroyContext(mEglDisplay, mEglContext);
            EglCheck("DestroyEgl eglDestroyContext");
            mEgl.eglTerminate(mEglDisplay);
            EglCheck("DestroyEgl eglTerminate");
            mEglContext = null;
            mEglSurface = null;
            mEglDisplay = null;
            return;
        }
    }

    public void DestroyEglSurface()
    {
        if (mEglDisplay == null || mEglSurface == null || mEglSurface == EGL10.EGL_NO_SURFACE)
        {
            Log.e("WAZE", "Surface parameters are not initialized");
            Logger.e("Surface parameters are not initialized");
            return;
        } else
        {
            mEgl.eglMakeCurrent(mEglDisplay, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_SURFACE, EGL10.EGL_NO_CONTEXT);
            EglCheck("DestroyEglSurface eglMakeCurrent");
            mEgl.eglDestroySurface(mEglDisplay, mEglSurface);
            EglCheck("DestroyEglSurface eglDestroySurface");
            mEglSurface = null;
            return;
        }
    }

    public void DrawGLTest()
    {
        mGLTestStop = false;
        int i = mSurfaceView.getMeasuredWidth();
        int j = mSurfaceView.getMeasuredHeight();
        GL10 gl10 = (GL10)mEglContext.getGL();
        gl10.glMatrixMode(5889);
        gl10.glLoadIdentity();
        gl10.glViewport(0, 0, i, j);
        gl10.glOrthof(0.0F, i, 0.0F, j, 0.0F, 1.0F);
        gl10.glShadeModel(7424);
        gl10.glEnable(3042);
        gl10.glEnable(3553);
        int k = 3;
        do
        {
            if (mGLTestStop || k >= 50)
            {
                return;
            }
            gl10.glClearColor((float)k % 3F, (float)(k + 1) % 3F, (float)(k + 2) % 3F, 1.0F);
            gl10.glClear(16640);
            if (!mEgl.eglSwapBuffers(mEglDisplay, mEglSurface))
            {
                throw new RuntimeException("eglSwapBuffers failed.");
            }
            SystemClock.sleep(300L);
            k++;
        } while (true);
    }

    public boolean InitEgl()
    {
        mEgl = (EGL10)EGLContext.getEGL();
        mEglDisplay = mEgl.eglGetDisplay(EGL10.EGL_DEFAULT_DISPLAY);
        EglCheck("InitEgl eglGetDisplay");
        int ai[] = new int[2];
        mEgl.eglInitialize(mEglDisplay, ai);
        EglCheck("InitEgl eglInitialize");
        int ai1[] = new int[13];
        ai1[0] = 12324;
        ai1[1] = 5;
        ai1[2] = 12323;
        ai1[3] = 6;
        ai1[4] = 12322;
        ai1[5] = 5;
        ai1[6] = 12321;
        ai1[8] = 12325;
        ai1[10] = 12326;
        ai1[12] = 12344;
        EGLConfig[] _tmp = new EGLConfig[1];
        mEglConfig = ChooseEglConfig(ai1);
        mEglContext = mEgl.eglCreateContext(mEglDisplay, mEglConfig, EGL10.EGL_NO_CONTEXT, null);
        EglCheck("InitEgl eglCreateContext");
        return CreateEglSurface();
    }

    public void SwapBuffersEgl()
    {
        if (mEgl.eglSwapBuffers(mEglDisplay, mEglSurface)) goto _L2; else goto _L1
_L1:
        EglCheck("EGL Swap buffers");
        JVM INSTR lookupswitch 2: default 52
    //                   12288: 85
    //                   12302: 86;
           goto _L3 _L4 _L5
_L4:
        break MISSING_BLOCK_LABEL_85;
_L3:
        MsgBox msgbox = MsgBox.getInstance();
        msgbox.setBlocking(true);
        msgbox.Show("Error", "Critical problem occured! Please restart waze", "Ok", null, new EglErrorListener(null), null);
_L7:
        return;
_L5:
        int i;
        i = mContextRecoverRetry;
        mContextRecoverRetry = i + 1;
        if (i >= 5) goto _L7; else goto _L6
_L6:
        DestroyEglSurface();
        CreateEglSurface();
        return;
_L2:
        mContextRecoverRetry = 0;
        return;
    }

    public GL10 getGL()
    {
        if (mEglContext == null)
        {
            return null;
        } else
        {
            return (GL10)mEglContext.getGL();
        }
    }
}
