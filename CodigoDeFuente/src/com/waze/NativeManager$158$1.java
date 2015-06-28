// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.view.text.TypingLockListener;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class Listener
    implements Runnable
{

    final Listener.shouldLock this$1;
    private final TypingLockListener val$listener;

    public void run()
    {
        val$listener.shouldLock();
    }

    Listener()
    {
        this$1 = final_listener1;
        val$listener = TypingLockListener.this;
        super();
    }

    // Unreferenced inner class com/waze/NativeManager$158

/* anonymous class */
    class NativeManager._cls158
        implements Runnable
    {

        final NativeManager this$0;
        private final TypingLockListener val$listener;

        public void run()
        {
            if (NativeManager.access$91(NativeManager.this))
            {
                AppService.Post(listener. new NativeManager._cls158._cls1());
            }
        }

            
            {
                this$0 = final_nativemanager;
                listener = TypingLockListener.this;
                super();
            }
    }

}
