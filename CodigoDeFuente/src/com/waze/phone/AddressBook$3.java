// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.phone;

import android.util.SparseIntArray;
import com.waze.autocomplete.Person;
import com.waze.navigate.social.IdsMatchData;
import java.util.ArrayList;
import java.util.Iterator;

// Referenced classes of package com.waze.phone:
//            AddressBook

class val.pml
    implements com.waze.navigate.anager.IdsMatchListener
{

    private final SparseIntArray val$PersonIdMatch;
    private final com.waze.navigate.anager.PersonMappingListener val$pml;

    public void onComplete(IdsMatchData idsmatchdata)
    {
        if (idsmatchdata == null) goto _L2; else goto _L1
_L1:
        int j = 0;
_L6:
        if (j < idsmatchdata.UIDs.length) goto _L3; else goto _L2
_L2:
        if (AddressBook.access$1().isEmpty()) goto _L5; else goto _L4
_L4:
        Iterator iterator = AddressBook.access$1().iterator();
_L7:
        if (iterator.hasNext())
        {
            break MISSING_BLOCK_LABEL_82;
        }
_L5:
        val$pml.onComplete(AddressBook.access$2());
        return;
_L3:
        val$PersonIdMatch.put(idsmatchdata.ContactIds[j], idsmatchdata.UIDs[j]);
        j++;
          goto _L6
        Person person = (Person)iterator.next();
        Person person1 = new Person(person);
        int i = val$PersonIdMatch.get(person.getID());
        if (i != 0)
        {
            person1.setIsOnWaze(true);
            person1.setID(i);
        }
        AddressBook.access$2().add(person1);
          goto _L7
    }

    onMappingListener()
    {
        val$PersonIdMatch = sparseintarray;
        val$pml = personmappinglistener;
        super();
    }
}
