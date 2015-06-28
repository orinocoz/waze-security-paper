// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import com.waze.ifs.async.RunnableUICallback;
import com.waze.navigate.SearchActivity;

// Referenced classes of package com.waze:
//            NativeManager

class UICallback extends RunnableUICallback
{

    final NativeManager this$0;
    private String title;
    private final String val$Category;
    private final SearchActivity val$listener;

    public void callback()
    {
        val$listener.InitTitle(title);
    }

    public void event()
    {
        title = NativeManager.access$110(NativeManager.this, val$Category);
    }

    ivity()
    {
        this$0 = final_nativemanager;
        val$Category = s;
        val$listener = SearchActivity.this;
        super();
    }
}
