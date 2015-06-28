// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.share;

import android.app.Activity;
import android.location.Location;
import com.waze.NativeLocListener;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.location.Position;

// Referenced classes of package com.waze.share:
//            ShareFbLocationActivity

class > extends RunnableExecutor
{

    final ShareFbLocationActivity this$0;
    private final NativeLocListener val$nl;
    private final String val$pattern;
    private final Position val$pos;
    private final boolean val$showProgress;

    public void event()
    {
        Location location = NativeLocListener.getInstance().getLastLocation();
        val$pos.latitude = location.getLatitude();
        val$pos.longitude = location.getLongitude();
        val$nl.unregisterLocListener(this);
        ShareFbLocationActivity.access$5(ShareFbLocationActivity.this, val$pattern, val$pos, val$showProgress);
    }

    (boolean flag)
    {
        this$0 = final_sharefblocationactivity;
        val$pos = position;
        val$nl = nativeloclistener;
        val$pattern = String.this;
        val$showProgress = flag;
        super(final_activity);
    }
}
