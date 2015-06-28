// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.content.Context;
import android.content.Intent;
import com.waze.AppService;
import com.waze.LayoutManager;
import com.waze.MainActivity;
import com.waze.NativeManager;
import com.waze.ifs.async.RunnableUICallback;

// Referenced classes of package com.waze.reports:
//            ClosureMap, ReportMenu

class allback extends RunnableUICallback
{

    private boolean hasClosureData;
    private final boolean val$bIsServerRequest;
    private final Context val$context;
    private final LayoutManager val$layoutManager;
    private final ReportMenu val$reportMenu;

    public void callback()
    {
        if (hasClosureData)
        {
            ClosureMap.access$5(val$reportMenu);
            ClosureMap.access$7(val$layoutManager);
            ClosureMap.access$8(val$bIsServerRequest);
            Intent intent = new Intent(val$context, com/waze/reports/ClosureMap);
            AppService.getMainActivity().startActivityForResult(intent, 1);
        }
    }

    public void event()
    {
        hasClosureData = NativeManager.getInstance().HasClosureDataNTV();
    }

    allback()
    {
        val$reportMenu = reportmenu;
        val$layoutManager = layoutmanager;
        val$bIsServerRequest = flag;
        val$context = context1;
        super();
    }
}
