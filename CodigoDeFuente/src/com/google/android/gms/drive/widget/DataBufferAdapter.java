// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.widget;

import android.content.Context;
import android.database.CursorIndexOutOfBoundsException;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.TextView;
import com.google.android.gms.common.data.DataBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public class DataBufferAdapter extends BaseAdapter
{

    private final int LO;
    private int LP;
    private final int LQ;
    private final List LR;
    private final LayoutInflater LS;
    private boolean LT;
    private final Context mContext;

    public DataBufferAdapter(Context context, int i)
    {
        this(context, i, 0, ((List) (new ArrayList())));
    }

    public DataBufferAdapter(Context context, int i, int j)
    {
        this(context, i, j, ((List) (new ArrayList())));
    }

    public DataBufferAdapter(Context context, int i, int j, List list)
    {
        LT = true;
        mContext = context;
        LP = i;
        LO = i;
        LQ = j;
        LR = list;
        LS = (LayoutInflater)context.getSystemService("layout_inflater");
    }

    public transient DataBufferAdapter(Context context, int i, int j, DataBuffer adatabuffer[])
    {
        this(context, i, j, Arrays.asList(adatabuffer));
    }

    public DataBufferAdapter(Context context, int i, List list)
    {
        this(context, i, 0, list);
    }

    public transient DataBufferAdapter(Context context, int i, DataBuffer adatabuffer[])
    {
        this(context, i, 0, Arrays.asList(adatabuffer));
    }

    private View a(int i, View view, ViewGroup viewgroup, int j)
    {
        View view1;
        TextView textview1;
        TextView textview2;
        if (view == null)
        {
            view1 = LS.inflate(j, viewgroup, false);
        } else
        {
            view1 = view;
        }
        if (LQ != 0)
        {
            break MISSING_BLOCK_LABEL_69;
        }
        textview2 = (TextView)view1;
        textview1 = textview2;
_L1:
        Object obj = getItem(i);
        ClassCastException classcastexception;
        TextView textview;
        if (obj instanceof CharSequence)
        {
            textview1.setText((CharSequence)obj);
            return view1;
        } else
        {
            textview1.setText(obj.toString());
            return view1;
        }
        try
        {
            textview = (TextView)view1.findViewById(LQ);
        }
        // Misplaced declaration of an exception variable
        catch (ClassCastException classcastexception)
        {
            Log.e("DataBufferAdapter", "You must supply a resource ID for a TextView");
            throw new IllegalStateException("DataBufferAdapter requires the resource ID to be a TextView", classcastexception);
        }
        textview1 = textview;
          goto _L1
    }

    public void append(DataBuffer databuffer)
    {
        LR.add(databuffer);
        if (LT)
        {
            notifyDataSetChanged();
        }
    }

    public void clear()
    {
        for (Iterator iterator = LR.iterator(); iterator.hasNext(); ((DataBuffer)iterator.next()).close()) { }
        LR.clear();
        if (LT)
        {
            notifyDataSetChanged();
        }
    }

    public Context getContext()
    {
        return mContext;
    }

    public int getCount()
    {
        Iterator iterator = LR.iterator();
        int i;
        for (i = 0; iterator.hasNext(); i += ((DataBuffer)iterator.next()).getCount()) { }
        return i;
    }

    public View getDropDownView(int i, View view, ViewGroup viewgroup)
    {
        return a(i, view, viewgroup, LP);
    }

    public Object getItem(int i)
        throws CursorIndexOutOfBoundsException
    {
        Iterator iterator = LR.iterator();
        int j = i;
        while (iterator.hasNext()) 
        {
            DataBuffer databuffer = (DataBuffer)iterator.next();
            int k = databuffer.getCount();
            if (k <= j)
            {
                j -= k;
            } else
            {
                Object obj;
                try
                {
                    obj = databuffer.get(j);
                }
                catch (CursorIndexOutOfBoundsException cursorindexoutofboundsexception)
                {
                    throw new CursorIndexOutOfBoundsException(i, getCount());
                }
                return obj;
            }
        }
        throw new CursorIndexOutOfBoundsException(i, getCount());
    }

    public long getItemId(int i)
    {
        return (long)i;
    }

    public View getView(int i, View view, ViewGroup viewgroup)
    {
        return a(i, view, viewgroup, LO);
    }

    public void notifyDataSetChanged()
    {
        super.notifyDataSetChanged();
        LT = true;
    }

    public void setDropDownViewResource(int i)
    {
        LP = i;
    }

    public void setNotifyOnChange(boolean flag)
    {
        LT = flag;
    }
}
