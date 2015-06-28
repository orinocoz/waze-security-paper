// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.reports;

import com.waze.settings.SwitchCheckedCallback;
import java.util.HashSet;

// Referenced classes of package com.waze.reports:
//            EditPlaceServicesFragment

class val.id
    implements SwitchCheckedCallback
{

    final EditPlaceServicesFragment this$0;
    private final String val$id;

    public void OnCallback(boolean flag)
    {
        if (flag)
        {
            EditPlaceServicesFragment.access$1(EditPlaceServicesFragment.this).add(val$id);
            return;
        } else
        {
            EditPlaceServicesFragment.access$1(EditPlaceServicesFragment.this).remove(val$id);
            return;
        }
    }

    ()
    {
        this$0 = final_editplaceservicesfragment;
        val$id = String.this;
        super();
    }
}
