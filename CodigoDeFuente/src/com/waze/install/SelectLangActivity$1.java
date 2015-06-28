// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import android.view.View;
import android.widget.AdapterView;

// Referenced classes of package com.waze.install:
//            SelectLangActivity

class this._cls0
    implements android.widget.ckListener
{

    final SelectLangActivity this$0;

    public void onItemClick(AdapterView adapterview, View view, int i, long l)
    {
        langClicked(view);
    }

    Listener()
    {
        this$0 = SelectLangActivity.this;
        super();
    }
}
