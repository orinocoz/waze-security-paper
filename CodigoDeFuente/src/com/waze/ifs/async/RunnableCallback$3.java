// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.async;


// Referenced classes of package com.waze.ifs.async:
//            RunnableCallback

class this._cls0
    implements Runnable
{

    final RunnableCallback this$0;

    public void run()
    {
        callback();
    }

    ()
    {
        this$0 = RunnableCallback.this;
        super();
    }
}
