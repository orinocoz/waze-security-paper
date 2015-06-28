// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.user.PersonBase;
import java.util.Comparator;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity

class this._cls0
    implements Comparator
{

    final AddFromActivity this$0;

    public int compare(PersonBase personbase, PersonBase personbase1)
    {
        return personbase.getName().compareToIgnoreCase(personbase1.getName());
    }

    public volatile int compare(Object obj, Object obj1)
    {
        return compare((PersonBase)obj, (PersonBase)obj1);
    }

    ()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
