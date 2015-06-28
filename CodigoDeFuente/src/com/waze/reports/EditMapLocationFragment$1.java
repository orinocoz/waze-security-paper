// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.NativeManager;
import com.waze.ifs.async.RunnableExecutor;
import com.waze.navigate.DriveToNativeManager;

// Referenced classes of package com.waze.reports:
//            EditMapLocationFragment

class this._cls0 extends RunnableExecutor
{

    final EditMapLocationFragment this$0;

    public void event()
    {
        EditMapLocationFragment.access$0(EditMapLocationFragment.this, true);
        EditMapLocationFragment.access$1(EditMapLocationFragment.this).setAddressOptionsView(0, EditMapLocationFragment.access$2(EditMapLocationFragment.this), EditMapLocationFragment.access$3(EditMapLocationFragment.this), false);
        EditMapLocationFragment.access$1(EditMapLocationFragment.this).zoomOnMap(EditMapLocationFragment.access$2(EditMapLocationFragment.this), EditMapLocationFragment.access$3(EditMapLocationFragment.this), 100);
        EditMapLocationFragment.access$4(EditMapLocationFragment.this).setLimitCenter(EditMapLocationFragment.access$2(EditMapLocationFragment.this), EditMapLocationFragment.access$3(EditMapLocationFragment.this), EditMapLocationFragment.access$4(EditMapLocationFragment.this).getEditPlaceLocationRadius(), EditMapLocationFragment.access$5(EditMapLocationFragment.this));
    }

    ()
    {
        this$0 = EditMapLocationFragment.this;
        super();
    }
}
