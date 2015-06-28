// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.metadata.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.util.Log;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.drive.metadata.MetadataField;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.drive.metadata.internal:
//            h, e

public final class MetadataBundle
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new h();
    final Bundle JP;
    final int xJ;

    MetadataBundle(int i, Bundle bundle)
    {
        xJ = i;
        JP = (Bundle)hn.f(bundle);
        JP.setClassLoader(getClass().getClassLoader());
        ArrayList arraylist = new ArrayList();
        Iterator iterator = JP.keySet().iterator();
        do
        {
            if (!iterator.hasNext())
            {
                break;
            }
            String s1 = (String)iterator.next();
            if (e.aN(s1) == null)
            {
                arraylist.add(s1);
                Log.w("MetadataBundle", (new StringBuilder()).append("Ignored unknown metadata field in bundle: ").append(s1).toString());
            }
        } while (true);
        String s;
        for (Iterator iterator1 = arraylist.iterator(); iterator1.hasNext(); JP.remove(s))
        {
            s = (String)iterator1.next();
        }

    }

    private MetadataBundle(Bundle bundle)
    {
        this(1, bundle);
    }

    public static MetadataBundle a(MetadataField metadatafield, Object obj)
    {
        MetadataBundle metadatabundle = gA();
        metadatabundle.b(metadatafield, obj);
        return metadatabundle;
    }

    public static MetadataBundle a(MetadataBundle metadatabundle)
    {
        return new MetadataBundle(new Bundle(metadatabundle.JP));
    }

    public static MetadataBundle gA()
    {
        return new MetadataBundle(new Bundle());
    }

    public Object a(MetadataField metadatafield)
    {
        return metadatafield.e(JP);
    }

    public void b(MetadataField metadatafield, Object obj)
    {
        if (e.aN(metadatafield.getName()) == null)
        {
            throw new IllegalArgumentException((new StringBuilder()).append("Unregistered field: ").append(metadatafield.getName()).toString());
        } else
        {
            metadatafield.a(obj, JP);
            return;
        }
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this == obj)
        {
            return true;
        }
        if (!(obj instanceof MetadataBundle))
        {
            return false;
        }
        MetadataBundle metadatabundle = (MetadataBundle)obj;
        Set set = JP.keySet();
        if (!set.equals(metadatabundle.JP.keySet()))
        {
            return false;
        }
        for (Iterator iterator = set.iterator(); iterator.hasNext();)
        {
            String s = (String)iterator.next();
            if (!hl.equal(JP.get(s), metadatabundle.JP.get(s)))
            {
                return false;
            }
        }

        return true;
    }

    public Set gB()
    {
        HashSet hashset = new HashSet();
        for (Iterator iterator = JP.keySet().iterator(); iterator.hasNext(); hashset.add(e.aN((String)iterator.next()))) { }
        return hashset;
    }

    public int hashCode()
    {
        Iterator iterator = JP.keySet().iterator();
        int i;
        String s;
        for (i = 1; iterator.hasNext(); i = i * 31 + JP.get(s).hashCode())
        {
            s = (String)iterator.next();
        }

        return i;
    }

    public String toString()
    {
        return (new StringBuilder()).append("MetadataBundle [values=").append(JP).append("]").toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        h.a(this, parcel, i);
    }

}
