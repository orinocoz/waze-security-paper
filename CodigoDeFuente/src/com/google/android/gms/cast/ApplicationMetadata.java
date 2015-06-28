// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.cast;

import android.net.Uri;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.gj;
import com.google.android.gms.internal.hl;
import java.util.ArrayList;
import java.util.List;

// Referenced classes of package com.google.android.gms.cast:
//            a

public final class ApplicationMetadata
    implements SafeParcelable
{

    public static final android.os.Parcelable.Creator CREATOR = new a();
    String mName;
    private final int xJ;
    String zM;
    List zN;
    List zO;
    String zP;
    Uri zQ;

    private ApplicationMetadata()
    {
        xJ = 1;
        zN = new ArrayList();
        zO = new ArrayList();
    }

    ApplicationMetadata(int i, String s, String s1, List list, List list1, String s2, Uri uri)
    {
        xJ = i;
        zM = s;
        mName = s1;
        zN = list;
        zO = list1;
        zP = s2;
        zQ = uri;
    }

    public boolean areNamespacesSupported(List list)
    {
        return zO != null && zO.containsAll(list);
    }

    public Uri dS()
    {
        return zQ;
    }

    public int describeContents()
    {
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (obj != this)
        {
            if (!(obj instanceof ApplicationMetadata))
            {
                return false;
            }
            ApplicationMetadata applicationmetadata = (ApplicationMetadata)obj;
            if (!gj.a(zM, applicationmetadata.zM) || !gj.a(zN, applicationmetadata.zN) || !gj.a(mName, applicationmetadata.mName) || !gj.a(zO, applicationmetadata.zO) || !gj.a(zP, applicationmetadata.zP) || !gj.a(zQ, applicationmetadata.zQ))
            {
                return false;
            }
        }
        return true;
    }

    public String getApplicationId()
    {
        return zM;
    }

    public List getImages()
    {
        return zN;
    }

    public String getName()
    {
        return mName;
    }

    public String getSenderAppIdentifier()
    {
        return zP;
    }

    int getVersionCode()
    {
        return xJ;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[7];
        aobj[0] = Integer.valueOf(xJ);
        aobj[1] = zM;
        aobj[2] = mName;
        aobj[3] = zN;
        aobj[4] = zO;
        aobj[5] = zP;
        aobj[6] = zQ;
        return hl.hashCode(aobj);
    }

    public boolean isNamespaceSupported(String s)
    {
        return zO != null && zO.contains(s);
    }

    public String toString()
    {
        return mName;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        a.a(this, parcel, i);
    }

}
