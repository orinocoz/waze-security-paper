// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.KeyEvent;

// Referenced classes of package com.waze:
//            LayoutManager, MapViewWrapper, MapView

class this._cls0
    implements wBackCallback
{

    final LayoutManager this$0;

    public boolean onBackEvent(KeyEvent keyevent)
    {
        return LayoutManager.access$0(LayoutManager.this).getMapView().onKeyDown(4, keyevent);
    }

    wBackCallback()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
