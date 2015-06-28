// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.view.View;

// Referenced classes of package com.waze.ifs.ui:
//            OmniSelectionFragment

class this._cls0
    implements android.view.er
{

    final OmniSelectionFragment this$0;

    public void onFocusChange(View view, boolean flag)
    {
        if (flag)
        {
            OmniSelectionFragment omniselectionfragment = OmniSelectionFragment.this;
            OmniSelectionFragment.access$12(omniselectionfragment, 1 + OmniSelectionFragment.access$11(omniselectionfragment));
            ((mniSelect)getActivity()).isSearching(OmniSelectionFragment.access$11(OmniSelectionFragment.this));
        }
    }

    mniSelect()
    {
        this$0 = OmniSelectionFragment.this;
        super();
    }
}
