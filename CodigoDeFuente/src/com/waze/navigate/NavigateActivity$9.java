// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate;

import com.waze.NativeManager;

// Referenced classes of package com.waze.navigate:
//            NavigateActivity

class this._cls0
    implements Runnable
{

    final NavigateActivity this$0;

    public void run()
    {
        NavigateActivity.access$6(NavigateActivity.this).CloseProgressPopup();
    }

    ()
    {
        this$0 = NavigateActivity.this;
        super();
    }
}
