// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.BitSet;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            fr, fn

public class fq
    implements SafeParcelable
{
    public static final class a
    {

        private final String mName;
        private String yf;
        private boolean yg;
        private int yh;
        private boolean yi;
        private String yj;
        private final List yk = new ArrayList();
        private BitSet yl;
        private String ym;

        public a I(int i)
        {
            if (yl == null)
            {
                yl = new BitSet();
            }
            yl.set(i);
            return this;
        }

        public a Z(String s)
        {
            yf = s;
            return this;
        }

        public a aa(String s)
        {
            ym = s;
            return this;
        }

        public fq dL()
        {
            int i = 0;
            BitSet bitset = yl;
            int ai[] = null;
            if (bitset != null)
            {
                ai = new int[yl.cardinality()];
                for (int j = yl.nextSetBit(0); j >= 0;)
                {
                    int k = i + 1;
                    ai[i] = j;
                    j = yl.nextSetBit(j + 1);
                    i = k;
                }

            }
            return new fq(mName, yf, yg, yh, yi, yj, (fn[])yk.toArray(new fn[yk.size()]), ai, ym);
        }

        public a w(boolean flag)
        {
            yg = flag;
            return this;
        }

        public a x(boolean flag)
        {
            yi = flag;
            return this;
        }

        public a(String s)
        {
            mName = s;
            yh = 1;
        }
    }


    public static final fr CREATOR = new fr();
    public final String name;
    public final int weight;
    final int xJ;
    public final String xY;
    public final boolean xZ;
    public final boolean ya;
    public final String yb;
    public final fn yc[];
    final int yd[];
    public final String ye;

    fq(int i, String s, String s1, boolean flag, int j, boolean flag1, String s2, 
            fn afn[], int ai[], String s3)
    {
        xJ = i;
        name = s;
        xY = s1;
        xZ = flag;
        weight = j;
        ya = flag1;
        yb = s2;
        yc = afn;
        yd = ai;
        ye = s3;
    }

    fq(String s, String s1, boolean flag, int i, boolean flag1, String s2, fn afn[], 
            int ai[], String s3)
    {
        this(2, s, s1, flag, i, flag1, s2, afn, ai, s3);
    }

    public int describeContents()
    {
        fr _tmp = CREATOR;
        return 0;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof fq;
        boolean flag1 = false;
        if (flag)
        {
            fq fq1 = (fq)obj;
            boolean flag2 = name.equals(fq1.name);
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = xY.equals(fq1.xY);
                flag1 = false;
                if (flag3)
                {
                    boolean flag4 = xZ;
                    boolean flag5 = fq1.xZ;
                    flag1 = false;
                    if (flag4 == flag5)
                    {
                        flag1 = true;
                    }
                }
            }
        }
        return flag1;
    }

    public void writeToParcel(Parcel parcel, int i)
    {
        fr _tmp = CREATOR;
        fr.a(this, parcel, i);
    }

}
