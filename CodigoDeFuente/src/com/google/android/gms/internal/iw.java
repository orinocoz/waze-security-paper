// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, ma, md, lz, 
//            mi, mf

public interface iw
{
    public static final class a extends mb
    {

        public a Uv[];

        public void a(ma ma1)
            throws IOException
        {
            if (Uv != null && Uv.length > 0)
            {
                for (int i = 0; i < Uv.length; i++)
                {
                    a a1 = Uv[i];
                    if (a1 != null)
                    {
                        ma1.a(1, a1);
                    }
                }

            }
            super.a(ma1);
        }

        public mf b(lz lz1)
            throws IOException
        {
            return n(lz1);
        }

        protected int c()
        {
            int i = super.c();
            if (Uv != null && Uv.length > 0)
            {
                for (int j = 0; j < Uv.length; j++)
                {
                    a a1 = Uv[j];
                    if (a1 != null)
                    {
                        i += ma.b(1, a1);
                    }
                }

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
            boolean flag2;
            a1 = (a)obj;
            flag2 = md.equals(Uv, a1.Uv);
            flag1 = false;
            if (!flag2) goto _L4; else goto _L5
_L5:
            boolean flag3;
            if (amU != null && !amU.isEmpty())
            {
                break MISSING_BLOCK_LABEL_95;
            }
            if (a1.amU == null)
            {
                break; /* Loop/switch isn't completed */
            }
            flag3 = a1.amU.isEmpty();
            flag1 = false;
            if (!flag3) goto _L4; else goto _L6
_L6:
            return true;
            return amU.equals(a1.amU);
        }

        public int hashCode()
        {
            int i = 31 * (527 + md.hashCode(Uv));
            int j;
            if (amU == null || amU.isEmpty())
            {
                j = 0;
            } else
            {
                j = amU.hashCode();
            }
            return j + i;
        }

        public a iL()
        {
            Uv = a.iM();
            amU = null;
            amY = -1;
            return this;
        }

        public a n(lz lz1)
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

                case 10: // '\n'
                    int j = mi.b(lz1, 10);
                    int k;
                    a aa[];
                    if (Uv == null)
                    {
                        k = 0;
                    } else
                    {
                        k = Uv.length;
                    }
                    aa = new a[j + k];
                    if (k != 0)
                    {
                        System.arraycopy(Uv, 0, aa, 0, k);
                    }
                    for (; k < -1 + aa.length; k++)
                    {
                        aa[k] = new a();
                        lz1.a(aa[k]);
                        lz1.nw();
                    }

                    aa[k] = new a();
                    lz1.a(aa[k]);
                    Uv = aa;
                    break;
                }
            } while (true);
        }

        public a()
        {
            iL();
        }
    }

    public static final class a.a extends mb
    {

        private static volatile a.a Uw[];
        public String Ux;
        public String Uy;
        public int viewId;

        public static a.a[] iM()
        {
            if (Uw == null)
            {
                synchronized (md.amX)
                {
                    if (Uw == null)
                    {
                        Uw = new a.a[0];
                    }
                }
            }
            return Uw;
            exception;
            obj;
            JVM INSTR monitorexit ;
            throw exception;
        }

        public void a(ma ma1)
            throws IOException
        {
            if (!Ux.equals(""))
            {
                ma1.b(1, Ux);
            }
            if (!Uy.equals(""))
            {
                ma1.b(2, Uy);
            }
            if (viewId != 0)
            {
                ma1.p(3, viewId);
            }
            super.a(ma1);
        }

        public mf b(lz lz1)
            throws IOException
        {
            return o(lz1);
        }

        protected int c()
        {
            int i = super.c();
            if (!Ux.equals(""))
            {
                i += ma.h(1, Ux);
            }
            if (!Uy.equals(""))
            {
                i += ma.h(2, Uy);
            }
            if (viewId != 0)
            {
                i += ma.r(3, viewId);
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
            flag = obj instanceof a.a;
            flag1 = false;
            if (!flag) goto _L4; else goto _L3
_L3:
            a.a a1 = (a.a)obj;
            if (Ux != null) goto _L6; else goto _L5
_L5:
            String s1;
            s1 = a1.Ux;
            flag1 = false;
            if (s1 != null) goto _L4; else goto _L7
_L7:
            if (Uy != null) goto _L9; else goto _L8
_L8:
            String s;
            s = a1.Uy;
            flag1 = false;
            if (s != null) goto _L4; else goto _L10
_L10:
            int i;
            int j;
            i = viewId;
            j = a1.viewId;
            flag1 = false;
            if (i != j) goto _L4; else goto _L11
_L11:
            boolean flag2;
            if (amU != null && !amU.isEmpty())
            {
                break MISSING_BLOCK_LABEL_172;
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
_L6:
            if (!Ux.equals(a1.Ux))
            {
                return false;
            }
              goto _L7
_L9:
            if (!Uy.equals(a1.Uy))
            {
                return false;
            }
              goto _L10
            return amU.equals(a1.amU);
              goto _L7
        }

        public int hashCode()
        {
            int i;
            int j;
            int k;
            int l;
            List list;
            int i1;
            if (Ux == null)
            {
                i = 0;
            } else
            {
                i = Ux.hashCode();
            }
            j = 31 * (i + 527);
            if (Uy == null)
            {
                k = 0;
            } else
            {
                k = Uy.hashCode();
            }
            l = 31 * (31 * (k + j) + viewId);
            list = amU;
            i1 = 0;
            if (list != null)
            {
                boolean flag = amU.isEmpty();
                i1 = 0;
                if (!flag)
                {
                    i1 = amU.hashCode();
                }
            }
            return l + i1;
        }

        public a.a iN()
        {
            Ux = "";
            Uy = "";
            viewId = 0;
            amU = null;
            amY = -1;
            return this;
        }

        public a.a o(lz lz1)
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

                case 10: // '\n'
                    Ux = lz1.readString();
                    break;

                case 18: // '\022'
                    Uy = lz1.readString();
                    break;

                case 24: // '\030'
                    viewId = lz1.nz();
                    break;
                }
            } while (true);
        }

        public a.a()
        {
            iN();
        }
    }

}
