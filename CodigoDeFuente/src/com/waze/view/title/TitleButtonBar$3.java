// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.view.title;

import android.view.View;
import com.waze.ifs.ui.ActivityBase;

// Referenced classes of package com.waze.view.title:
//            TitleButtonBar

class this._cls0
    implements android.view.ner
{

    final TitleButtonBar this$0;

    public void onClick(View view)
    {
        if (TitleButtonBar.access$2(TitleButtonBar.this) != null)
        {
            TitleButtonBar.access$2(TitleButtonBar.this).onBackPressed();
        }
    }

    ()
    {
        this$0 = TitleButtonBar.this;
        super();
    }
}
