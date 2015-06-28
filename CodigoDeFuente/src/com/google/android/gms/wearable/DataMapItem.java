// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.wearable;

import android.net.Uri;
import com.google.android.gms.internal.lw;
import com.google.android.gms.internal.lx;
import com.google.android.gms.internal.me;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

// Referenced classes of package com.google.android.gms.wearable:
//            DataItem, DataMap, DataItemAsset, Asset

public class DataMapItem
{

    private final DataMap ali;
    private final Uri mUri;

    private DataMapItem(DataItem dataitem)
    {
        mUri = dataitem.getUri();
        ali = a((DataItem)dataitem.freeze());
    }

    private DataMap a(DataItem dataitem)
    {
        ArrayList arraylist;
        int j;
        DataItemAsset dataitemasset;
        if (dataitem.getData() == null && dataitem.getAssets().size() > 0)
        {
            throw new IllegalArgumentException("Cannot create DataMapItem from a DataItem  that wasn't made with DataMapItem.");
        }
        if (dataitem.getData() == null)
        {
            return new DataMap();
        }
        int i;
        try
        {
            arraylist = new ArrayList();
            i = dataitem.getAssets().size();
        }
        catch (me me1)
        {
            throw new IllegalStateException("Unable to parse. Not a DataItem.");
        }
        j = 0;
_L2:
        if (j >= i)
        {
            break; /* Loop/switch isn't completed */
        }
        dataitemasset = (DataItemAsset)dataitem.getAssets().get(Integer.toString(j));
        if (dataitemasset != null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        throw new IllegalStateException((new StringBuilder()).append("Cannot find DataItemAsset referenced in data at ").append(j).append(" for ").append(dataitem).toString());
        arraylist.add(Asset.createFromRef(dataitemasset.getId()));
        j++;
        if (true) goto _L2; else goto _L1
_L1:
        DataMap datamap = lw.a(new com.google.android.gms.internal.lw.a(lx.n(dataitem.getData()), arraylist));
        return datamap;
    }

    public static DataMapItem fromDataItem(DataItem dataitem)
    {
        if (dataitem == null)
        {
            throw new IllegalStateException("provided dataItem is null");
        } else
        {
            return new DataMapItem(dataitem);
        }
    }

    public DataMap getDataMap()
    {
        return ali;
    }

    public Uri getUri()
    {
        return mUri;
    }
}
