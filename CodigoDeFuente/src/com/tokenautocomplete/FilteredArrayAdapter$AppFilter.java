// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.widget.Filter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

// Referenced classes of package com.tokenautocomplete:
//            FilteredArrayAdapter

private class setSourceObjects extends Filter
{

    private ArrayList sourceObjects;
    final FilteredArrayAdapter this$0;

    protected android.widget.Filter performFiltering(CharSequence charsequence)
    {
        android.widget.Filter filter = new android.widget.Filter();
        if (charsequence != null && charsequence.length() > 0)
        {
            String s = charsequence.toString();
            ArrayList arraylist = new ArrayList();
            Iterator iterator = sourceObjects.iterator();
            do
            {
                Object obj;
                do
                {
                    if (!iterator.hasNext())
                    {
                        filter.sourceObjects = arraylist.size();
                        filter.sourceObjects = arraylist;
                        return filter;
                    }
                    obj = (Object)iterator.next();
                } while (!keepObject(obj, s));
                arraylist.add(obj);
            } while (true);
        } else
        {
            filter.pObject = sourceObjects;
            filter.sourceObjects = sourceObjects.size();
            return filter;
        }
    }

    protected void publishResults(CharSequence charsequence, android.widget.Filter filter)
    {
        clear();
        if (filter.ar > 0)
        {
            addAll((Collection)filter.All);
            notifyDataSetChanged();
            return;
        } else
        {
            notifyDataSetInvalidated();
            return;
        }
    }

    public void setSourceObjects(List list)
    {
        this;
        JVM INSTR monitorenter ;
        sourceObjects = new ArrayList(list);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        this;
        JVM INSTR monitorexit ;
        throw exception;
    }

    public (List list)
    {
        this$0 = FilteredArrayAdapter.this;
        super();
        setSourceObjects(list);
    }
}
