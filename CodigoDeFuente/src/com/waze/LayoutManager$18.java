// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.util.Log;

// Referenced classes of package com.waze:
//            LayoutManager, AppService, NativeManager, MainActivity, 
//            ConfigManager, TooltipType

class this._cls0
    implements Runnable
{

    final LayoutManager this$0;

    public void run()
    {
        int i;
        if (AppService.getMainActivity() == null || NativeManager.getInstance() == null || !AppService.getMainActivity().areAllSignUpDialogsClosed())
        {
            break MISSING_BLOCK_LABEL_64;
        }
        LayoutManager.access$24(LayoutManager.this, ConfigManager.getInstance().checkConfigDisplayCounter(4, true));
        i = LayoutManager.access$25(LayoutManager.this);
        if (i <= 0)
        {
            break MISSING_BLOCK_LABEL_64;
        }
        showToolTip(TooltipType.FRIENDS, 0, null, 0L, 0);
        return;
        Exception exception1;
        exception1;
        try
        {
            Object aobj1[] = new Object[2];
            aobj1[0] = exception1.getMessage();
            aobj1[1] = exception1.getStackTrace();
            Log.e("WAZE", String.format("failed showing friendsTooltip. Error: %s    stack: %s", aobj1));
            return;
        }
        catch (Exception exception)
        {
            Object aobj[] = new Object[2];
            aobj[0] = exception.getMessage();
            aobj[1] = exception.getStackTrace();
            Log.d("WAZE", String.format("Haven't queued showFriendsTooltip request. Environment is not fully initialized yet. Error: %s    stack: %s", aobj));
            return;
        }
    }

    ()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
