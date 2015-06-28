// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.reports:
//            EditMapLocationFragment

class this._cls0
    implements android.view.t._cls3
{

    final EditMapLocationFragment this$0;

    public void onClick(View view)
    {
        if (EditMapLocationFragment.access$6(EditMapLocationFragment.this))
        {
            EditMapLocationFragment.access$1(EditMapLocationFragment.this).setUpdateHandler(DriveToNativeManager.UH_MAP_CENTER, mHandler);
            EditMapLocationFragment.access$1(EditMapLocationFragment.this).getMapCenter();
        }
    }

    ()
    {
        this$0 = EditMapLocationFragment.this;
        super();
    }
}
