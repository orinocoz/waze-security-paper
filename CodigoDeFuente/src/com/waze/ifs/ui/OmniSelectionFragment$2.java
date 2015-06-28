// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.view.._cls2
{

    final OmniSelectionFragment this$0;

    public void onClick(View view)
    {
        ((mniSelect)getActivity()).omniSelected(-1, null, null, false);
    }

    mniSelect()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
