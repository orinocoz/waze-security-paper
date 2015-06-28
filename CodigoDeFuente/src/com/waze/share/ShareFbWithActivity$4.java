// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.widget.ListView;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbWithActivity, ShareFbWithListAdapter

class val.friends
    implements Runnable
{

    final ShareFbWithActivity this$0;
    private final ShareFbWithListAdapter val$adapter;
    private final ArrayList val$friends;

    public void run()
    {
        val$adapter.updateList(val$friends);
        ShareFbWithActivity.access$2(ShareFbWithActivity.this, ShareFbWithActivity.access$1(ShareFbWithActivity.this));
        ShareFbWithActivity.access$3(ShareFbWithActivity.this, null);
        ShareFbWithActivity.access$4(ShareFbWithActivity.this).invalidateViews();
    }

    ()
    {
        this$0 = final_sharefbwithactivity;
        val$adapter = sharefbwithlistadapter;
        val$friends = ArrayList.this;
        super();
    }
}
