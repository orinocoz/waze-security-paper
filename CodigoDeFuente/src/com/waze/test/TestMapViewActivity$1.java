// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.test;

import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.test:
//            TestMapViewActivity

class <init> extends RunnableExecutor
{

    final TestMapViewActivity this$0;

    public void event()
    {
        DriveToNativeManager.getInstance();
    }

    er()
    {
        this$0 = TestMapViewActivity.this;
        super();
    }
}
