// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            MsgBox

class nit>
    implements Runnable
{

    final MsgBox this$0;
    private final long val$callback;
    private final long val$context;
    private final int val$retValue;

    public void run()
    {
        MsgBox.access$10(MsgBox.this, val$retValue, val$callback, val$context);
    }

    ()
    {
        this$0 = final_msgbox;
        val$retValue = i;
        val$callback = l;
        val$context = J.this;
        super();
    }
}
