// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.title;

import android.view.View;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.view.title:
//            TitleBarTextButton

class this._cls0
    implements android.view.tton._cls2
{

    final TitleBarTextButton this$0;

    public void onClick(View view)
    {
        if (TitleBarTextButton.access$1(TitleBarTextButton.this) != null)
        {
            TitleBarTextButton.access$1(TitleBarTextButton.this).onBackPressed();
        }
    }

    ()
    {
        this$0 = TitleBarTextButton.this;
        super();
    }
}
