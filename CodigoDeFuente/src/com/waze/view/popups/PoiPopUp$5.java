// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.popups;

import android.view.MotionEvent;
import android.view.View;
import com.waze.LayoutManager;

// Referenced classes of package com.waze.view.popups:
//            PoiPopUp

class this._cls0
    implements android.view.hListener
{

    final PoiPopUp this$0;

    public boolean onTouch(View view, MotionEvent motionevent)
    {
        PoiPopUp.access$6().SetPopUpInterrupt(false);
        return false;
    }

    r()
    {
        this$0 = PoiPopUp.this;
        super();
    }
}
