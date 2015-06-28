// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.tokenautocomplete;

import android.content.Context;
import android.widget.ArrayAdapter;
import android.widget.Filter;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

public abstract class FilteredArrayAdapter extends ArrayAdapter
{
    private class AppFilter extends Filter
    {

        private ArrayList sourceObjects;
        final FilteredArrayAdapter this$0;

        protected android.widget.Filter.FilterResults performFiltering(CharSequence charsequence)
        {
            android.widget.Filter.FilterResults filterresults = new android.widget.Filter.FilterResults();
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
                            filterresults.count = arraylist.size();
                            filterresults.values = arraylist;
                            return filterresults;
                        }
                        obj = (Object)iterator.next();
                    } while (!keepObject(obj, s));
                    arraylist.add(obj);
                } while (true);
            } else
            {
                filterresults.values = sourceObjects;
                filterresults.count = sourceObjects.size();
                return filterresults;
            }
        }

        protected void publishResults(CharSequence charsequence, android.widget.Filter.FilterResults filterresults)
        {
            clear();
            if (filterresults.count > 0)
            {
                addAll((Collection)filterresults.values);
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

        public AppFilter(List list)
        {
            this$0 = FilteredArrayAdapter.this;
            super();
            setSourceObjects(list);
        }
    }


    private Filter filter;
    private List originalObjects;

    public FilteredArrayAdapter(Context context, int i, int j, List list)
    {
        super(context, i, j, new ArrayList(list));
        originalObjects = list;
    }

    public FilteredArrayAdapter(Context context, int i, int j, Object aobj[])
    {
        this(context, i, j, ((List) (new ArrayList(Arrays.asList(aobj)))));
    }

    public FilteredArrayAdapter(Context context, int i, List list)
    {
        this(context, i, 0, list);
    }

    public FilteredArrayAdapter(Context context, int i, Object aobj[])
    {
        this(context, i, 0, aobj);
    }

    public Filter getFilter()
    {
        if (filter == null)
        {
            filter = new AppFilter(originalObjects);
        }
        return filter;
    }

    protected abstract boolean keepObject(Object obj, String s);

    public void notifyDataSetChanged()
    {
        ((AppFilter)getFilter()).setSourceObjects(originalObjects);
        super.notifyDataSetChanged();
    }

    public void notifyDataSetInvalidated()
    {
        ((AppFilter)getFilter()).setSourceObjects(originalObjects);
        super.notifyDataSetInvalidated();
    }
}
