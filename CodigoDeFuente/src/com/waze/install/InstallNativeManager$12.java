// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.install:
//            InstallNativeManager

class url extends RunnableUICallback
{

    final InstallNativeManager this$0;
    String url;
    private final int val$height;
    private final boolean val$isUpgrade;
    private final eoUrlListener val$listener;
    private final int val$width;

    public void callback()
    {
        val$listener.onComplete(url);
    }

    public void event()
    {
        url = InstallNativeManager.access$8(InstallNativeManager.this, val$isUpgrade, val$width, val$height);
    }

    eoUrlListener()
    {
        this$0 = final_installnativemanager;
        val$isUpgrade = flag;
        val$width = i;
        val$height = j;
        val$listener = eoUrlListener.this;
        super();
        url = null;
    }
}
