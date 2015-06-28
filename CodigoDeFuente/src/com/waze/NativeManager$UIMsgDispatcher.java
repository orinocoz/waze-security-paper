// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.os.Debug;
import android.os.Handler;
import android.os.Message;
import android.view.KeyEvent;
import android.view.MotionEvent;
import java.util.ArrayList;

// Referenced classes of package com.waze:
//            NativeManager, NativeCanvas, Logger, IMessageParam

public static class  extends Handler
{

    private static int $SWITCH_TABLE$com$waze$NativeManager$UIEvent[];

    static int[] $SWITCH_TABLE$com$waze$NativeManager$UIEvent()
    {
        int ai[] = $SWITCH_TABLE$com$waze$NativeManager$UIEvent;
        if (ai != null)
        {
            return ai;
        }
        int ai1[] = new int[Event().length];
        try
        {
            ai1[_FORCE_NEW_CANVAS._FORCE_NEW_CANVAS()] = 2;
        }
        catch (NoSuchFieldError nosuchfielderror) { }
        try
        {
            ai1[_KEY_DOWN._KEY_DOWN()] = 3;
        }
        catch (NoSuchFieldError nosuchfielderror1) { }
        try
        {
            ai1[_LOW_MEMORY._LOW_MEMORY()] = 7;
        }
        catch (NoSuchFieldError nosuchfielderror2) { }
        try
        {
            ai1[_NATIVE._NATIVE()] = 9;
        }
        catch (NoSuchFieldError nosuchfielderror3) { }
        try
        {
            ai1[_SCREENSHOT._SCREENSHOT()] = 8;
        }
        catch (NoSuchFieldError nosuchfielderror4) { }
        try
        {
            ai1[_START._START()] = 1;
        }
        catch (NoSuchFieldError nosuchfielderror5) { }
        try
        {
            ai1[_STARTUP_GPUERROR._STARTUP_GPUERROR()] = 6;
        }
        catch (NoSuchFieldError nosuchfielderror6) { }
        try
        {
            ai1[_STARTUP_NOSDCARD._STARTUP_NOSDCARD()] = 5;
        }
        catch (NoSuchFieldError nosuchfielderror7) { }
        try
        {
            ai1[_TOUCH._TOUCH()] = 4;
        }
        catch (NoSuchFieldError nosuchfielderror8) { }
        try
        {
            ai1[ITY_EVENT_NATIVE.ITY_EVENT_NATIVE()] = 10;
        }
        catch (NoSuchFieldError nosuchfielderror9) { }
        $SWITCH_TABLE$com$waze$NativeManager$UIEvent = ai1;
        return ai1;
    }

    private void handlePriorityEvents()
    {
        NativeManager nativemanager = NativeManager.getInstance();
_L7:
        ArrayList arraylist = NativeManager.access$19(nativemanager);
        arraylist;
        JVM INSTR monitorenter ;
        boolean flag = NativeManager.access$19(nativemanager).isEmpty();
        MotionEvent motionevent;
        motionevent = null;
        if (flag)
        {
            break MISSING_BLOCK_LABEL_41;
        }
        motionevent = (MotionEvent)NativeManager.access$19(nativemanager).remove(0);
        arraylist;
        JVM INSTR monitorexit ;
        if (motionevent != null)
        {
            NativeManager.access$2().OnTouchEventHandler(motionevent);
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_65;
        Exception exception;
        exception;
        arraylist;
        JVM INSTR monitorexit ;
        throw exception;
        ArrayList arraylist1 = NativeManager.access$20(nativemanager);
        arraylist1;
        JVM INSTR monitorenter ;
        boolean flag1 = NativeManager.access$20(nativemanager).isEmpty();
        KeyEvent keyevent;
        keyevent = null;
        if (flag1)
        {
            break MISSING_BLOCK_LABEL_104;
        }
        keyevent = (KeyEvent)NativeManager.access$20(nativemanager).remove(0);
        arraylist1;
        JVM INSTR monitorexit ;
        if (keyevent != null)
        {
            NativeManager.access$2().OnKeyDownHandler(keyevent);
            continue; /* Loop/switch isn't completed */
        }
        break MISSING_BLOCK_LABEL_132;
        Exception exception1;
        exception1;
        arraylist1;
        JVM INSTR monitorexit ;
        throw exception1;
        ArrayList arraylist2 = NativeManager.access$21(nativemanager);
        arraylist2;
        JVM INSTR monitorenter ;
        boolean flag2 = NativeManager.access$21(nativemanager).isEmpty();
        Message message;
        message = null;
        if (flag2)
        {
            break MISSING_BLOCK_LABEL_171;
        }
        message = (Message)NativeManager.access$21(nativemanager).remove(0);
        arraylist2;
        JVM INSTR monitorexit ;
        if (message == null) goto _L2; else goto _L1
_L1:
        Event event;
        long l;
        String s;
        event = er(message.what);
        l = System.currentTimeMillis();
        s = "";
        $SWITCH_TABLE$com$waze$NativeManager$UIEvent()[event.Event()];
        JVM INSTR tableswitch 10 10: default 224
    //                   10 302;
           goto _L3 _L4
_L3:
        Logger.e((new StringBuilder("Unknown priority event - ")).append(event).toString());
_L5:
        long l1 = System.currentTimeMillis() - l;
        if (l1 > 500L)
        {
            Logger.w((new StringBuilder("WAZE PROFILER EXCEPTIONAL TIME FOR ")).append(s).append(" HANDLING TIME: ").append(l1).toString());
        }
        continue; /* Loop/switch isn't completed */
        Exception exception2;
        exception2;
        arraylist2;
        JVM INSTR monitorexit ;
        throw exception2;
_L4:
        boolean flag3 = true;
        IMessageParam imessageparam = (IMessageParam)message.obj;
        if (imessageparam != null)
        {
            flag3 = imessageparam.IsActive();
            s = "Timer Event";
        } else
        {
            s = "IO event";
        }
        if (flag3)
        {
            NativeManager.access$18(nativemanager, message.arg1, message.arg2);
        }
        if (true) goto _L5; else goto _L2
_L2:
        return;
        if (true) goto _L7; else goto _L6
_L6:
    }

    public void handleMessage(Message message)
    {
        if (!NativeManager.isShuttingDown()) goto _L2; else goto _L1
_L1:
        return;
_L2:
        NativeManager nativemanager;
        Event event;
        long l;
        String s;
        nativemanager = NativeManager.getInstance();
        if (nativemanager.getInitializedStatus())
        {
            handlePriorityEvents();
        }
        event = handlePriorityEvents(message.what);
        l = System.currentTimeMillis();
        s = "";
        $SWITCH_TABLE$com$waze$NativeManager$UIEvent()[event.Event()];
        JVM INSTR tableswitch 1 10: default 100
    //                   1 100
    //                   2 100
    //                   3 100
    //                   4 100
    //                   5 162
    //                   6 155
    //                   7 175
    //                   8 100
    //                   9 257
    //                   10 100;
           goto _L3 _L3 _L3 _L3 _L3 _L4 _L5 _L6 _L3 _L7 _L3
_L7:
        break MISSING_BLOCK_LABEL_257;
_L3:
        break; /* Loop/switch isn't completed */
_L5:
        break; /* Loop/switch isn't completed */
_L9:
        long l1 = System.currentTimeMillis() - l;
        if (l1 > 500L && nativemanager.getInitializedStatus())
        {
            Logger.w((new StringBuilder("WAZE PROFILER EXCEPTIONAL TIME FOR ")).append(s).append(" HANDLING TIME: ").append(l1).toString());
            return;
        }
        if (true) goto _L1; else goto _L8
_L8:
        NativeManager.access$16(nativemanager);
          goto _L9
_L4:
        if (NativeManager.CheckSDCardAvailable())
        {
            NativeManager.access$17();
        }
          goto _L9
_L6:
        String s1 = new String((new StringBuilder("Memory usage native heap. Used: ")).append(Debug.getNativeHeapAllocatedSize()).append(". Free: ").append(Debug.getNativeHeapFreeSize()).append(". Total: ").append(Debug.getNativeHeapSize()).toString());
        Logger.w((new StringBuilder(String.valueOf(new String("Android system reported low memory !!! ")))).append(s1).toString());
          goto _L9
        boolean flag = true;
        IMessageParam imessageparam = (IMessageParam)message.obj;
        if (imessageparam != null)
        {
            flag = imessageparam.IsActive();
            s = "Timer Event";
        } else
        {
            s = "IO event";
        }
        if (flag)
        {
            NativeManager.access$18(nativemanager, message.arg1, message.arg2);
        }
          goto _L9
    }

    public ()
    {
    }
}
