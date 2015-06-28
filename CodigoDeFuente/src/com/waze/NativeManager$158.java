// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.view.text.TypingLockListener;

// Referenced classes of package com.waze:
//            NativeManager, AppService

class ckListener
    implements Runnable
{

    final NativeManager this$0;
    private final TypingLockListener val$listener;

    public void run()
    {
        if (NativeManager.access$91(NativeManager.this))
        {
            AppService.Post(new Runnable() {

                final NativeManager._cls158 this$1;
                private final TypingLockListener val$listener;

                public void run()
                {
                    listener.shouldLock();
                }

            
            {
                this$1 = NativeManager._cls158.this;
                listener = typinglocklistener;
                super();
            }
            });
        }
    }

    ckListener()
    {
        this$0 = final_nativemanager;
        val$listener = TypingLockListener.this;
        super();
    }
}
