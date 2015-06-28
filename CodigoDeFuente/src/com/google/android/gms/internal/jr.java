// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.concurrent.TimeUnit;

// Referenced classes of package com.google.android.gms.internal:
//            js, hl, jn

public final class jr
    implements SafeParcelable
{

    public static final js CREATOR = new js();
    static final long Wj;
    private final long Vi;
    private final jn Wk;
    private final int mPriority;
    final int xJ;

    public jr(int i, jn jn, long l, int j)
    {
        xJ = i;
        Wk = jn;
        Vi = l;
        mPriority = j;
    }

    public int describeContents()
    {
        js _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        if (this != obj)
        {
            if (!(obj instanceof jr))
            {
                return false;
            }
            jr jr1 = (jr)obj;
            if (!hl.equal(Wk, jr1.Wk) || Vi != jr1.Vi || mPriority != jr1.mPriority)
            {
                return false;
            }
        }
        return true;
    }

    public long getInterval()
    {
        return Vi;
    }

    public int getPriority()
    {
        return mPriority;
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Wk;
        aobj[1] = Long.valueOf(Vi);
        aobj[2] = Integer.valueOf(mPriority);
        return hl.hashCode(aobj);
    }

    public jn ja()
    {
        return Wk;
    }

    public String toString()
    {
        return hl.e(this).a("filter", Wk).a("interval", Long.valueOf(Vi)).a("priority", Integer.valueOf(mPriority)).toString();
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        js _tmp = CREATOR;
        js.a(this, parcel, i);
    }

    static 
    {
        Wj = TimeUnit.HOURS.toMillis(1L);
    }
}
