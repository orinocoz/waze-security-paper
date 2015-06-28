// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, me, mf, ma, 
//            lz

public interface lf
{
    public static final class a extends mb
    {

        public long aiD;
        public c.j aiE;
        public c.f fK;

        public static a l(byte abyte0[])
            throws me
        {
            return (a)mf.a(new a(), abyte0);
        }

        public void a(ma ma1)
            throws IOException
        {
            ma1.b(1, aiD);
            if (fK != null)
            {
                ma1.a(2, fK);
            }
            if (aiE != null)
            {
                ma1.a(3, aiE);
            }
            super.a(ma1);
        }

        public mf b(lz lz1)
            throws IOException
        {
            return p(lz1);
        }

        protected int c()
        {
            int i = super.c() + ma.d(1, aiD);
            if (fK != null)
            {
                i += ma.b(2, fK);
            }
            if (aiE != null)
            {
                i += ma.b(3, aiE);
            }
            return i;
        }

        public boolean equals(Object obj)
        {
            if (obj != this) goto _L2; else goto _L1
_L1:
            boolean flag1 = true;
_L4:
            return flag1;
_L2:
            boolean flag;
            flag = obj instanceof a;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            a a1;
            int i;
            a1 = (a)obj;
            i = aiD != a1.aiD;
            flag1 = false;
            if (i != 0) goto _L4; else goto _L5
_L5:
            if (fK != null) goto _L7; else goto _L6
_L6:
            c.f f;
            f = a1.fK;
            flag1 = false;
            if (f != null) goto _L4; else goto _L8
_L8:
            if (aiE != null) goto _L10; else goto _L9
_L9:
            c.j j;
            j = a1.aiE;
            flag1 = false;
            if (j != null) goto _L4; else goto _L11
_L11:
            boolean flag2;
            if (amU != null && !amU.isEmpty())
            {
                break MISSING_BLOCK_LABEL_169;
            }
            if (a1.amU == null)
            {
                break; /* Loop/switch isn't completed */
            }
            flag2 = a1.amU.isEmpty();
            flag1 = false;
            if (!flag2) goto _L4; else goto _L12
_L12:
            return true;
_L7:
            if (!fK.equals(a1.fK))
            {
                return false;
            }
              goto _L8
_L10:
            if (!aiE.equals(a1.aiE))
            {
                return false;
            }
              goto _L11
            return amU.equals(a1.amU);
              goto _L8
        }

        public int hashCode()
        {
            int i = 31 * (527 + (int)(aiD ^ aiD >>> 32));
            int j;
            int k;
            int i1;
            int j1;
            List list;
            int k1;
            if (fK == null)
            {
                j = 0;
            } else
            {
                j = fK.hashCode();
            }
            k = 31 * (j + i);
            if (aiE == null)
            {
                i1 = 0;
            } else
            {
                i1 = aiE.hashCode();
            }
            j1 = 31 * (i1 + k);
            list = amU;
            k1 = 0;
            if (list != null)
            {
                boolean flag = amU.isEmpty();
                k1 = 0;
                if (!flag)
                {
                    k1 = amU.hashCode();
                }
            }
            return j1 + k1;
        }

        public a na()
        {
            aiD = 0L;
            fK = null;
            aiE = null;
            amU = null;
            amY = -1;
            return this;
        }

        public a p(lz lz1)
            throws IOException
        {
            do
            {
                int i = lz1.nw();
                switch (i)
                {
                default:
                    if (a(lz1, i))
                    {
                        continue;
                    }
                    // fall through

                case 0: // '\0'
                    return this;

                case 8: // '\b'
                    aiD = lz1.ny();
                    break;

                case 18: // '\022'
                    if (fK == null)
                    {
                        fK = new c.f();
                    }
                    lz1.a(fK);
                    break;

                case 26: // '\032'
                    if (aiE == null)
                    {
                        aiE = new c.j();
                    }
                    lz1.a(aiE);
                    break;
                }
            } while (true);
        }

        public a()
        {
            na();
        }
    }

}
