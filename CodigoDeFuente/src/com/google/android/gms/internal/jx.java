// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            jy, hn

public final class jx
    implements SafeParcelable
{

    public static final jy CREATOR = new jy();
    public static final jx YM;
    public static final jx YN;
    public static final Set YO;
    final int YP;
    final String qU;
    final int xJ;

    jx(int i, String s, int j)
    {
        hn.aE(s);
        xJ = i;
        qU = s;
        YP = j;
    }

    private static jx w(String s, int i)
    {
        return new jx(0, s, i);
    }

    public int describeContents()
    {
        jy _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof jx))
            {
                return false;
            }
            jx jx1 = (jx)obj;
            if (!qU.equals(jx1.qU) || YP != jx1.YP)
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        return qU.hashCode();
    }

    public String toString()
    {
        return qU;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jy _tmp = CREATOR;
        jy.a(this, parcel, i);
    }

    static 
    {
        YM = w("test_type", 1);
        YN = w("saved_offers", 4);
        jx ajx[] = new jx[2];
        ajx[0] = YM;
        ajx[1] = YN;
        YO = Collections.unmodifiableSet(new HashSet(Arrays.asList(ajx)));
    }
}
