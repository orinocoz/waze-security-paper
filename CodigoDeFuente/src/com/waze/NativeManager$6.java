// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, NativeLocListener

class this._cls0
    implements Runnable
{

    final NativeManager this$0;

    public void run()
    {
        NativeLocListener.getInstance().UnregisterCompass();
    }

    r()
    {
        this$0 = NativeManager.this;
        super();
    }
}
