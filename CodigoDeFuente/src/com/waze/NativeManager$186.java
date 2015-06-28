// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze:
//            NativeManager

class UICallback extends RunnableUICallback
{

    final NativeManager this$0;
    private final ettingsListener val$listener;
    private boolean value;

    public void callback()
    {
        val$listener.onComplete(value);
    }

    public void event()
    {
        value = NativeManager.access$108(NativeManager.this);
    }

    ettingsListener()
    {
        this$0 = final_nativemanager;
        val$listener = ettingsListener.this;
        super();
    }
}
