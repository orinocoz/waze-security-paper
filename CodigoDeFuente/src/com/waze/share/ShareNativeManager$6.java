// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import com.waze.ConfigManager;
import com.waze.ifs.async.RunnableExecutor;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

// Referenced classes of package com.waze.share:
//            ShareNativeManager, ShareConstants

class <init> extends RunnableExecutor
{

    final ShareNativeManager this$0;

    public void event()
    {
        ArrayList arraylist = new ArrayList();
        arraylist.add(0, ShareConstants.CFG_ITEM_SHARE_FB_FEATURE_ENABLED);
        arraylist.add(1, ShareConstants.CFG_ITEM_SHARE_TWITTER_FEATURE_ENABLED);
        arraylist.add(2, ShareConstants.CFG_ITEM_SHARE_FOURSQUARE_FEATURE_ENABLED);
        arraylist.add(3, ShareConstants.CFG_ITEM_SHARE_FB_USER_SHARE_PREFIX);
        ConfigManager.getInstance().getConfig(ShareNativeManager.this, arraylist, "");
    }

    (Executor executor)
    {
        this$0 = ShareNativeManager.this;
        super(executor);
    }
}
