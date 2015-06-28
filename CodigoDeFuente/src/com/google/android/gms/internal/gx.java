// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


// Referenced classes of package com.google.android.gms.internal:
//            hr, hl

public final class gx extends hr
{
    public static final class a
    {

        public final int FP;
        public final int FQ;

        public boolean equals(Object obj)
        {
            boolean flag = true;
            if (!(obj instanceof a))
            {
                flag = false;
            } else
            if (this != obj)
            {
                a a1 = (a)obj;
                if (a1.FP != FP || a1.FQ != FQ)
                {
                    return false;
                }
            }
            return flag;
        }

        public int hashCode()
        {
            Object aobj[] = new Object[2];
            aobj[0] = Integer.valueOf(FP);
            aobj[1] = Integer.valueOf(FQ);
            return hl.hashCode(aobj);
        }

        public a(int i, int j)
        {
            FP = i;
            FQ = j;
        }
    }


    public gx()
    {
        super(10);
    }
}
