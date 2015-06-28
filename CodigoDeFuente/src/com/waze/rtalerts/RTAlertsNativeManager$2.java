// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;
import com.waze.strings.DisplayStrings;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsNativeManager, RTAlertsMenuData

class t> extends RunnableUICallback
{

    RTAlertsMenuData mData[];
    String mTitle;
    final RTAlertsNativeManager this$0;
    private final lertsMenuDataHandler val$dataHandler;

    public void callback()
    {
        val$dataHandler.handler(mTitle, mData);
    }

    public void event()
    {
        mTitle = NativeManager.getInstance().getLanguageString(DisplayStrings.DS_REPORTS);
        mData = RTAlertsNativeManager.access$1(RTAlertsNativeManager.this);
    }

    lertsMenuDataHandler()
    {
        this$0 = final_rtalertsnativemanager;
        val$dataHandler = lertsMenuDataHandler.this;
        super();
    }
}
