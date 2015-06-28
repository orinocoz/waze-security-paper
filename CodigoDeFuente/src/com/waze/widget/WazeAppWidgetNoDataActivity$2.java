// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.widget;

import android.content.Intent;
import android.view.View;
import com.waze.MainActivity;

// Referenced classes of package com.waze.widget:
//            WazeAppWidgetNoDataActivity

class this._cls0
    implements android.view.._cls2
{

    final WazeAppWidgetNoDataActivity this$0;

    public void onClick(View view)
    {
        Intent intent = new Intent(WazeAppWidgetNoDataActivity.this, com/waze/MainActivity);
        intent.setFlags(0x18000000);
        startActivityForResult(intent, 1);
        setResult(-1);
        finish();
    }

    ()
    {
        this$0 = WazeAppWidgetNoDataActivity.this;
        super();
    }
}
