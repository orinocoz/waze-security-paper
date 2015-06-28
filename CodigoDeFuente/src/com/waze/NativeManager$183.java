// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager

class val.context
    implements Runnable
{

    final NativeManager this$0;
    private final long val$callback;
    private final long val$context;
    private final String val$text;

    public void run()
    {
        NativeManager.access$105(NativeManager.this, val$text, val$callback, val$context);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$text = s;
        val$callback = l;
        val$context = J.this;
        super();
    }
}
