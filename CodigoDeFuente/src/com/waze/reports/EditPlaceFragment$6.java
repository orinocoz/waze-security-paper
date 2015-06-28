// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.os.Bundle;
import android.view.View;
import com.waze.utils.EditTextUtils;

// Referenced classes of package com.waze.reports:
//            EditPlaceFragment, EditPlaceFlowActivity

class this._cls0
    implements android.view.
{

    final EditPlaceFragment this$0;

    public void onClick(View view)
    {
        if (EditPlaceFragment.access$10(EditPlaceFragment.this))
        {
            return;
        } else
        {
            Bundle bundle = new Bundle();
            int ai[] = new int[2];
            view.getLocationInWindow(ai);
            bundle.putInt("left", ai[0]);
            bundle.putInt("top", ai[1]);
            bundle.putInt("width", view.getWidth());
            bundle.putInt("height", view.getHeight());
            EditTextUtils.closeKeyboard(getActivity(), EditPlaceFragment.access$11(EditPlaceFragment.this));
            ((EditPlaceFlowActivity)getActivity()).goToTakePhoto(bundle);
            return;
        }
    }

    y()
    {
        this$0 = EditPlaceFragment.this;
        super();
    }
}
