// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.View;

// Referenced classes of package com.waze:
//            LayoutManager, NativeManager

class this._cls0
    implements android.view.ener
{

    final LayoutManager this$0;

    public void onClick(View view)
    {
        NativeManager.getInstance().asrCancel();
    }

    Listener()
    {
        this$0 = LayoutManager.this;
        super();
    }
}
