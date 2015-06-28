// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import android.view.View;
import java.util.ArrayList;
import java.util.HashSet;

// Referenced classes of package com.waze.reports:
//            EditPlaceServicesFragment, EditPlaceFlowActivity

class this._cls0
    implements android.view.t._cls2
{

    final EditPlaceServicesFragment this$0;

    public void onClick(View view)
    {
        ArrayList arraylist = new ArrayList(EditPlaceServicesFragment.access$1(EditPlaceServicesFragment.this).size());
        int i = 0;
        do
        {
            if (i >= EditPlaceServicesFragment.access$2().count)
            {
                ((EditPlaceFlowActivity)getActivity()).doneServices(arraylist);
                return;
            }
            if (EditPlaceServicesFragment.access$1(EditPlaceServicesFragment.this).contains(EditPlaceServicesFragment.access$2().ids[i]))
            {
                arraylist.add(EditPlaceServicesFragment.access$2().ids[i]);
            }
            i++;
        } while (true);
    }

    ()
    {
        this$0 = EditPlaceServicesFragment.this;
        super();
    }
}
