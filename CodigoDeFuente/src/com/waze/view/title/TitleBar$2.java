// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.title;

import android.view.View;

// Referenced classes of package com.waze.view.title:
//            TitleBar

class this._cls0
    implements android.view.kListener
{

    final TitleBar this$0;

    public void onClick(View view)
    {
        if (TitleBar.access$0(TitleBar.this) != null)
        {
            TitleBar.access$0(TitleBar.this).onClick(view);
            return;
        } else
        {
            onCloseClicked();
            return;
        }
    }

    er()
    {
        this$0 = TitleBar.this;
        super();
    }
}
