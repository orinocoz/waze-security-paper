// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

// Referenced classes of package com.google.android.gms.internal:
//            jo, hl

public final class jn
    implements SafeParcelable
{

    public static final jo CREATOR = new jo();
    final List VZ;
    private final String Wa;
    private final boolean Wb;
    final List Wc;
    private final String Wd;
    final List We;
    private final Set Wf;
    private final Set Wg;
    private final Set Wh;
    final int xJ;

    jn(int i, List list, String s, boolean flag, List list1, String s1, List list2)
    {
        xJ = i;
        List list3;
        List list4;
        List list5;
        if (list == null)
        {
            list3 = Collections.emptyList();
        } else
        {
            list3 = Collections.unmodifiableList(list);
        }
        VZ = list3;
        if (s == null)
        {
            s = "";
        }
        Wa = s;
        Wb = flag;
        if (list1 == null)
        {
            list4 = Collections.emptyList();
        } else
        {
            list4 = Collections.unmodifiableList(list1);
        }
        Wc = list4;
        if (s1 == null)
        {
            s1 = "";
        }
        Wd = s1;
        if (list2 == null)
        {
            list5 = Collections.emptyList();
        } else
        {
            list5 = Collections.unmodifiableList(list2);
        }
        We = list5;
        Wf = c(VZ);
        Wg = c(Wc);
        Wh = c(We);
    }

    private static Set c(List list)
    {
        if (list.isEmpty())
        {
            return Collections.emptySet();
        } else
        {
            return Collections.unmodifiableSet(new HashSet(list));
        }
    }

    public int describeContents()
    {
        jo _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof jn))
            {
                return false;
            }
            jn jn1 = (jn)obj;
            if (!Wf.equals(jn1.Wf) || Wb != jn1.Wb || !Wd.equals(jn1.Wd) || !Wg.equals(jn1.Wg) || !Wh.equals(jn1.Wh))
            {
                return false;
            }
        }
        return true;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[5];
        aobj[0] = Wf;
        aobj[1] = Boolean.valueOf(Wb);
        aobj[2] = Wg;
        aobj[3] = Wd;
        aobj[4] = Wh;
        return hl.hashCode(aobj);
    }

    public String jb()
    {
        return Wa;
    }

    public boolean jc()
    {
        return Wb;
    }

    public String jd()
    {
        return Wd;
    }

    public String toString()
    {
        return hl.e(this).a("types", Wf).a("placeIds", Wh).a("requireOpenNow", Boolean.valueOf(Wb)).a("userAccountName", Wd).a("requestedUserDataTypes", Wg).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        jo _tmp = CREATOR;
        jo.a(this, parcel, i);
    }

}
