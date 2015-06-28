// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import com.waze.utils.EditTextUtils;

// Referenced classes of package com.waze.reports:
//            AddPlaceNewFragment, AddPlaceFlowActivity

class this._cls0
    implements android.view.t._cls8
{

    final AddPlaceNewFragment this$0;

    public void onClick(View view)
    {
        EditTextUtils.closeKeyboard(getActivity(), AddPlaceNewFragment.access$8(AddPlaceNewFragment.this));
        ((AddPlaceFlowActivity)getActivity()).pickCategory();
    }

    ()
    {
        this$0 = AddPlaceNewFragment.this;
        super();
    }
}
