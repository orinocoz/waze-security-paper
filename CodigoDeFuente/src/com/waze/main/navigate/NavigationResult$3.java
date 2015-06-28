// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.main.navigate;

import com.waze.user.PersonBase;
import java.util.ArrayList;

// Referenced classes of package com.waze.main.navigate:
//            NavigationResult

class this._cls0
    implements com.waze.share.dSelected
{

    final NavigationResult this$0;

    public boolean onFriendSelected(Object obj, boolean flag)
    {
        if (obj == null)
        {
            NavigationResult.access$5(NavigationResult.this, false);
            openAddFromActivity();
            return false;
        }
        if (flag)
        {
            NavigationResult.access$6(NavigationResult.this).add((PersonBase)obj);
        } else
        {
            NavigationResult.access$6(NavigationResult.this).remove((PersonBase)obj);
        }
        NavigationResult.access$7(NavigationResult.this);
        return true;
    }

    d()
    {
        this$0 = NavigationResult.this;
        super();
    }
}
