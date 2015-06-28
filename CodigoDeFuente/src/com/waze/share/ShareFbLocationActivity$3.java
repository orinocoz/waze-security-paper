// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.widget.ListView;
import java.util.ArrayList;

// Referenced classes of package com.waze.share:
//            ShareFbLocationActivity, ShareFbLocListAdapter

class val.result
    implements Runnable
{

    final ShareFbLocationActivity this$0;
    private final ArrayList val$result;

    public void run()
    {
        ShareFbLocationActivity.access$3(ShareFbLocationActivity.this).updateList(val$result, 40);
        ShareFbLocationActivity.access$4(ShareFbLocationActivity.this).invalidateViews();
    }

    ()
    {
        this$0 = final_sharefblocationactivity;
        val$result = ArrayList.this;
        super();
    }
}
