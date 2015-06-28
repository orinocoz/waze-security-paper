// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Intent;

// Referenced classes of package com.waze.ifs.ui:
//            ActivityBase

public interface ActivityResultCallback
{

    public abstract void onActivitResult(ActivityBase activitybase, int i, int j, Intent intent);
}
