// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.navigate.social;

import com.waze.autocomplete.ContactsCompletionView;
import com.waze.user.PersonBase;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.navigate.social:
//            AddFromActivity

class this._cls0
    implements nReadDone
{

    final AddFromActivity this$0;

    public void onReadDone(int i, ArrayList arraylist)
    {
        AddFromActivity.access$6(AddFromActivity.this, i);
        AddFromActivity.access$7(AddFromActivity.this);
        Iterator iterator = arraylist.iterator();
        do
        {
            if (!iterator.hasNext())
            {
                return;
            }
            PersonBase personbase = (PersonBase)iterator.next();
            AddFromActivity.access$2(AddFromActivity.this).addObject(personbase);
        } while (true);
    }

    w()
    {
        this$0 = AddFromActivity.this;
        super();
    }
}
