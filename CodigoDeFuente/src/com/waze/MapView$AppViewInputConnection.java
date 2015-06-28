// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;

import android.view.KeyEvent;
import android.view.View;
import android.view.inputmethod.BaseInputConnection;

// Referenced classes of package com.waze:
//            MapView

private class tion extends BaseInputConnection
{

    final MapView this$0;

    public boolean performEditorAction(int i)
    {
        int j = MapView.access$0(MapView.this);
        boolean flag = false;
        if (i == j)
        {
            onKeyDown(66, new KeyEvent(0, 66));
            if (MapView.access$1(MapView.this))
            {
                HideSoftInput();
            }
            flag = true;
        }
        return flag;
    }

    tion(View view)
    {
        this$0 = MapView.this;
        super(view, false);
    }
}
