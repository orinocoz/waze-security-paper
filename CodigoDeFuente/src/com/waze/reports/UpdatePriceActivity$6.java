// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import android.widget.EditText;

// Referenced classes of package com.waze.reports:
//            UpdatePriceActivity

class this._cls0
    implements android.view.y._cls6
{

    final UpdatePriceActivity this$0;

    public void onClick(View view)
    {
        findViewById(0x7f09078f).setVisibility(0);
        findViewById(0x7f090792).setVisibility(8);
        if (UpdatePriceActivity.access$3(UpdatePriceActivity.this) != null)
        {
            UpdatePriceActivity.access$3(UpdatePriceActivity.this).setText("N/A");
        }
        findNextField();
    }

    ()
    {
        this$0 = UpdatePriceActivity.this;
        super();
    }
}
