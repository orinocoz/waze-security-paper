// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze:
//            NativeManager

class UICallback extends RunnableUICallback
{

    private String name;
    final NativeManager this$0;
    private final layNameListener val$listener;

    public void callback()
    {
        val$listener.onComplete(name);
    }

    public void event()
    {
        name = NativeManager.access$109(NativeManager.this);
    }

    layNameListener()
    {
        this$0 = final_nativemanager;
        val$listener = layNameListener.this;
        super();
    }
}
