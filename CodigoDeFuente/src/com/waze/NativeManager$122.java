// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            NativeManager, LayoutManager

class val.msg
    implements Runnable
{

    final NativeManager this$0;
    private final String val$msg;

    public void run()
    {
        LayoutManager.OpenAboutPopup(val$msg);
    }

    ()
    {
        this$0 = final_nativemanager;
        val$msg = String.this;
        super();
    }
}
