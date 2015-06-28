// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.content.DialogInterface;

// Referenced classes of package com.waze:
//            AppService, NativeManager, MsgBox

private class mCbContext
    implements android.content.ckListener
{

    private volatile long mCbContext;
    private volatile int mCbRes;
    final MsgBox this$0;

    public void onClick(DialogInterface dialoginterface, int i)
    {
        dialoginterface.cancel();
        AppService.getNativeManager().PostRunnable(new Runnable() {

            final MsgBox.MsgBoxOnClick this$1;

            public void run()
            {
                MsgBox.access$0(this$0, mCbRes, mCbContext);
            }

            
            {
                this$1 = MsgBox.MsgBoxOnClick.this;
                super();
            }
        });
        if (MsgBox.access$1(MsgBox.this))
        {
            synchronized (MsgBox.access$2())
            {
                MsgBox.access$2().notify();
            }
            return;
        } else
        {
            return;
        }
        exception;
        msgbox;
        JVM INSTR monitorexit ;
        throw exception;
    }




    public _cls1.this._cls1(int i, long l)
    {
        this$0 = MsgBox.this;
        super();
        mCbRes = i;
        mCbContext = l;
    }
}
