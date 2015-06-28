// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.Waiter;

// Referenced classes of package com.waze:
//            NativeManager

private class url
    implements Runnable
{

    protected boolean handled;
    final NativeManager this$0;
    protected String url;

    public void run()
    {
        handled = NativeManager.access$9(NativeManager.this, url);
        NativeManager.access$10(NativeManager.this)._notify();
    }

    public (String s)
    {
        this$0 = NativeManager.this;
        super();
        handled = false;
        url = s;
    }
}
