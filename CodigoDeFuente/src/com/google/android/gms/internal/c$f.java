// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;

import java.io.IOException;
import java.util.List;

// Referenced classes of package com.google.android.gms.internal:
//            mb, me, mf, ma, 
//            md, lz, mi, c

public static final class k extends mb
{

    public String eV[];
    public String eW[];
    public amY eX[];
    public amY eY[];
    public amY eZ[];
    public amY fa[];
    public amY fb[];
    public amY fc[];
    public String fd;
    public String fe;
    public String ff;
    public String fg;
    public amY fh;
    public float fi;
    public boolean fj;
    public String fk[];
    public int fl;

    public static k a(byte abyte0[])
        throws me
    {
        return (k)mf.a(new <init>(), abyte0);
    }

    public void a(ma ma1)
        throws IOException
    {
        if (eW != null && eW.length > 0)
        {
            for (int k2 = 0; k2 < eW.length; k2++)
            {
                String s2 = eW[k2];
                if (s2 != null)
                {
                    ma1.b(1, s2);
                }
            }

        }
        if (eX != null && eX.length > 0)
        {
            for (int j2 = 0; j2 < eX.length; j2++)
            {
                <init> <init>6 = eX[j2];
                if (<init>6 != null)
                {
                    ma1.a(2, <init>6);
                }
            }

        }
        if (eY != null && eY.length > 0)
        {
            for (int i2 = 0; i2 < eY.length; i2++)
            {
                <init> <init>5 = eY[i2];
                if (<init>5 != null)
                {
                    ma1.a(3, <init>5);
                }
            }

        }
        if (eZ != null && eZ.length > 0)
        {
            for (int l1 = 0; l1 < eZ.length; l1++)
            {
                <init> <init>4 = eZ[l1];
                if (<init>4 != null)
                {
                    ma1.a(4, <init>4);
                }
            }

        }
        if (fa != null && fa.length > 0)
        {
            for (int k1 = 0; k1 < fa.length; k1++)
            {
                <init> <init>3 = fa[k1];
                if (<init>3 != null)
                {
                    ma1.a(5, <init>3);
                }
            }

        }
        if (fb != null && fb.length > 0)
        {
            for (int j1 = 0; j1 < fb.length; j1++)
            {
                <init> <init>2 = fb[j1];
                if (<init>2 != null)
                {
                    ma1.a(6, <init>2);
                }
            }

        }
        if (fc != null && fc.length > 0)
        {
            for (int i1 = 0; i1 < fc.length; i1++)
            {
                <init> <init>1 = fc[i1];
                if (<init>1 != null)
                {
                    ma1.a(7, <init>1);
                }
            }

        }
        if (!fd.equals(""))
        {
            ma1.b(9, fd);
        }
        if (!fe.equals(""))
        {
            ma1.b(10, fe);
        }
        if (!ff.equals("0"))
        {
            ma1.b(12, ff);
        }
        if (!fg.equals(""))
        {
            ma1.b(13, fg);
        }
        if (fh != null)
        {
            ma1.a(14, fh);
        }
        if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F))
        {
            ma1.b(15, fi);
        }
        if (fk != null && fk.length > 0)
        {
            for (int l = 0; l < fk.length; l++)
            {
                String s1 = fk[l];
                if (s1 != null)
                {
                    ma1.b(16, s1);
                }
            }

        }
        if (fl != 0)
        {
            ma1.p(17, fl);
        }
        if (fj)
        {
            ma1.a(18, fj);
        }
        if (eV != null)
        {
            int i = eV.length;
            int j = 0;
            if (i > 0)
            {
                for (; j < eV.length; j++)
                {
                    String s = eV[j];
                    if (s != null)
                    {
                        ma1.b(19, s);
                    }
                }

            }
        }
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return g(lz1);
    }

    protected int c()
    {
        int i = 0;
        int j = super.c();
        int l;
        if (eW != null && eW.length > 0)
        {
            int j5 = 0;
            int k5 = 0;
            int l5 = 0;
            for (; j5 < eW.length; j5++)
            {
                String s2 = eW[j5];
                if (s2 != null)
                {
                    l5++;
                    k5 += ma.cz(s2);
                }
            }

            l = j + k5 + l5 * 1;
        } else
        {
            l = j;
        }
        if (eX != null && eX.length > 0)
        {
            int l4 = l;
            for (int i5 = 0; i5 < eX.length; i5++)
            {
                g g6 = eX[i5];
                if (g6 != null)
                {
                    l4 += ma.b(2, g6);
                }
            }

            l = l4;
        }
        if (eY != null && eY.length > 0)
        {
            int j4 = l;
            for (int k4 = 0; k4 < eY.length; k4++)
            {
                g g5 = eY[k4];
                if (g5 != null)
                {
                    j4 += ma.b(3, g5);
                }
            }

            l = j4;
        }
        if (eZ != null && eZ.length > 0)
        {
            int l3 = l;
            for (int i4 = 0; i4 < eZ.length; i4++)
            {
                g g4 = eZ[i4];
                if (g4 != null)
                {
                    l3 += ma.b(4, g4);
                }
            }

            l = l3;
        }
        if (fa != null && fa.length > 0)
        {
            int j3 = l;
            for (int k3 = 0; k3 < fa.length; k3++)
            {
                g g3 = fa[k3];
                if (g3 != null)
                {
                    j3 += ma.b(5, g3);
                }
            }

            l = j3;
        }
        if (fb != null && fb.length > 0)
        {
            int l2 = l;
            for (int i3 = 0; i3 < fb.length; i3++)
            {
                g g2 = fb[i3];
                if (g2 != null)
                {
                    l2 += ma.b(6, g2);
                }
            }

            l = l2;
        }
        if (fc != null && fc.length > 0)
        {
            int j2 = l;
            for (int k2 = 0; k2 < fc.length; k2++)
            {
                g g1 = fc[k2];
                if (g1 != null)
                {
                    j2 += ma.b(7, g1);
                }
            }

            l = j2;
        }
        if (!fd.equals(""))
        {
            l += ma.h(9, fd);
        }
        if (!fe.equals(""))
        {
            l += ma.h(10, fe);
        }
        if (!ff.equals("0"))
        {
            l += ma.h(12, ff);
        }
        if (!fg.equals(""))
        {
            l += ma.h(13, fg);
        }
        if (fh != null)
        {
            l += ma.b(14, fh);
        }
        if (Float.floatToIntBits(fi) != Float.floatToIntBits(0.0F))
        {
            l += ma.c(15, fi);
        }
        if (fk != null && fk.length > 0)
        {
            int k1 = 0;
            int l1 = 0;
            int i2 = 0;
            for (; k1 < fk.length; k1++)
            {
                String s1 = fk[k1];
                if (s1 != null)
                {
                    i2++;
                    l1 += ma.cz(s1);
                }
            }

            l = l + l1 + i2 * 2;
        }
        if (fl != 0)
        {
            l += ma.r(17, fl);
        }
        if (fj)
        {
            l += ma.b(18, fj);
        }
        if (eV != null && eV.length > 0)
        {
            int i1 = 0;
            int j1 = 0;
            for (; i < eV.length; i++)
            {
                String s = eV[i];
                if (s != null)
                {
                    j1++;
                    i1 += ma.cz(s);
                }
            }

            l = l + i1 + j1 * 2;
        }
        return l;
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
        flag = obj instanceof z;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        z z;
        boolean flag2;
        z = (z)obj;
        flag2 = md.equals(eV, z.eV);
        flag1 = false;
        if (!flag2) goto _L4; else goto _L5
_L5:
        boolean flag3;
        flag3 = md.equals(eW, z.eW);
        flag1 = false;
        if (!flag3) goto _L4; else goto _L6
_L6:
        boolean flag4;
        flag4 = md.equals(eX, z.eX);
        flag1 = false;
        if (!flag4) goto _L4; else goto _L7
_L7:
        boolean flag5;
        flag5 = md.equals(eY, z.eY);
        flag1 = false;
        if (!flag5) goto _L4; else goto _L8
_L8:
        boolean flag6;
        flag6 = md.equals(eZ, z.eZ);
        flag1 = false;
        if (!flag6) goto _L4; else goto _L9
_L9:
        boolean flag7;
        flag7 = md.equals(fa, z.fa);
        flag1 = false;
        if (!flag7) goto _L4; else goto _L10
_L10:
        boolean flag8;
        flag8 = md.equals(fb, z.fb);
        flag1 = false;
        if (!flag8) goto _L4; else goto _L11
_L11:
        boolean flag9;
        flag9 = md.equals(fc, z.fc);
        flag1 = false;
        if (!flag9) goto _L4; else goto _L12
_L12:
        if (fd != null) goto _L14; else goto _L13
_L13:
        String s3;
        s3 = z.fd;
        flag1 = false;
        if (s3 != null) goto _L4; else goto _L15
_L15:
        if (fe != null) goto _L17; else goto _L16
_L16:
        String s2;
        s2 = z.fe;
        flag1 = false;
        if (s2 != null) goto _L4; else goto _L18
_L18:
        if (ff != null) goto _L20; else goto _L19
_L19:
        String s1;
        s1 = z.ff;
        flag1 = false;
        if (s1 != null) goto _L4; else goto _L21
_L21:
        if (fg != null) goto _L23; else goto _L22
_L22:
        String s;
        s = z.fg;
        flag1 = false;
        if (s != null) goto _L4; else goto _L24
_L24:
        if (fh != null) goto _L26; else goto _L25
_L25:
        z z1;
        z1 = z.fh;
        flag1 = false;
        if (z1 != null) goto _L4; else goto _L27
_L27:
        int i;
        int j;
        i = Float.floatToIntBits(fi);
        j = Float.floatToIntBits(z.fi);
        flag1 = false;
        if (i != j) goto _L4; else goto _L28
_L28:
        boolean flag10;
        boolean flag11;
        flag10 = fj;
        flag11 = z.fj;
        flag1 = false;
        if (flag10 != flag11) goto _L4; else goto _L29
_L29:
        boolean flag12;
        flag12 = md.equals(fk, z.fk);
        flag1 = false;
        if (!flag12) goto _L4; else goto _L30
_L30:
        int l;
        int i1;
        l = fl;
        i1 = z.fl;
        flag1 = false;
        if (l != i1) goto _L4; else goto _L31
_L31:
        boolean flag13;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_525;
        }
        if (z.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag13 = z.amU.isEmpty();
        flag1 = false;
        if (!flag13) goto _L4; else goto _L32
_L32:
        return true;
_L14:
        if (!fd.equals(z.fd))
        {
            return false;
        }
          goto _L15
_L17:
        if (!fe.equals(z.fe))
        {
            return false;
        }
          goto _L18
_L20:
        if (!ff.equals(z.ff))
        {
            return false;
        }
          goto _L21
_L23:
        if (!fg.equals(z.fg))
        {
            return false;
        }
          goto _L24
_L26:
        if (!fh.equals(z.fh))
        {
            return false;
        }
          goto _L27
        return amU.equals(z.amU);
          goto _L15
    }

    public amU g(lz lz1)
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
                int k4 = mi.b(lz1, 10);
                int l4;
                String as2[];
                if (eW == null)
                {
                    l4 = 0;
                } else
                {
                    l4 = eW.length;
                }
                as2 = new String[k4 + l4];
                if (l4 != 0)
                {
                    System.arraycopy(eW, 0, as2, 0, l4);
                }
                for (; l4 < -1 + as2.length; l4++)
                {
                    as2[l4] = lz1.readString();
                    lz1.nw();
                }

                as2[l4] = lz1.readString();
                eW = as2;
                break;

            case 18: // '\022'
                int i4 = mi.b(lz1, 18);
                int j4;
                amU aamu5[];
                if (eX == null)
                {
                    j4 = 0;
                } else
                {
                    j4 = eX.length;
                }
                aamu5 = new eX[i4 + j4];
                if (j4 != 0)
                {
                    System.arraycopy(eX, 0, aamu5, 0, j4);
                }
                for (; j4 < -1 + aamu5.length; j4++)
                {
                    aamu5[j4] = new <init>();
                    lz1.a(aamu5[j4]);
                    lz1.nw();
                }

                aamu5[j4] = new <init>();
                lz1.a(aamu5[j4]);
                eX = aamu5;
                break;

            case 26: // '\032'
                int k3 = mi.b(lz1, 26);
                int l3;
                amU aamu4[];
                if (eY == null)
                {
                    l3 = 0;
                } else
                {
                    l3 = eY.length;
                }
                aamu4 = new eY[k3 + l3];
                if (l3 != 0)
                {
                    System.arraycopy(eY, 0, aamu4, 0, l3);
                }
                for (; l3 < -1 + aamu4.length; l3++)
                {
                    aamu4[l3] = new <init>();
                    lz1.a(aamu4[l3]);
                    lz1.nw();
                }

                aamu4[l3] = new <init>();
                lz1.a(aamu4[l3]);
                eY = aamu4;
                break;

            case 34: // '"'
                int i3 = mi.b(lz1, 34);
                int j3;
                amU aamu3[];
                if (eZ == null)
                {
                    j3 = 0;
                } else
                {
                    j3 = eZ.length;
                }
                aamu3 = new eZ[i3 + j3];
                if (j3 != 0)
                {
                    System.arraycopy(eZ, 0, aamu3, 0, j3);
                }
                for (; j3 < -1 + aamu3.length; j3++)
                {
                    aamu3[j3] = new <init>();
                    lz1.a(aamu3[j3]);
                    lz1.nw();
                }

                aamu3[j3] = new <init>();
                lz1.a(aamu3[j3]);
                eZ = aamu3;
                break;

            case 42: // '*'
                int k2 = mi.b(lz1, 42);
                int l2;
                amU aamu2[];
                if (fa == null)
                {
                    l2 = 0;
                } else
                {
                    l2 = fa.length;
                }
                aamu2 = new fa[k2 + l2];
                if (l2 != 0)
                {
                    System.arraycopy(fa, 0, aamu2, 0, l2);
                }
                for (; l2 < -1 + aamu2.length; l2++)
                {
                    aamu2[l2] = new <init>();
                    lz1.a(aamu2[l2]);
                    lz1.nw();
                }

                aamu2[l2] = new <init>();
                lz1.a(aamu2[l2]);
                fa = aamu2;
                break;

            case 50: // '2'
                int i2 = mi.b(lz1, 50);
                int j2;
                amU aamu1[];
                if (fb == null)
                {
                    j2 = 0;
                } else
                {
                    j2 = fb.length;
                }
                aamu1 = new fb[i2 + j2];
                if (j2 != 0)
                {
                    System.arraycopy(fb, 0, aamu1, 0, j2);
                }
                for (; j2 < -1 + aamu1.length; j2++)
                {
                    aamu1[j2] = new <init>();
                    lz1.a(aamu1[j2]);
                    lz1.nw();
                }

                aamu1[j2] = new <init>();
                lz1.a(aamu1[j2]);
                fb = aamu1;
                break;

            case 58: // ':'
                int k1 = mi.b(lz1, 58);
                int l1;
                amU aamu[];
                if (fc == null)
                {
                    l1 = 0;
                } else
                {
                    l1 = fc.length;
                }
                aamu = new fc[k1 + l1];
                if (l1 != 0)
                {
                    System.arraycopy(fc, 0, aamu, 0, l1);
                }
                for (; l1 < -1 + aamu.length; l1++)
                {
                    aamu[l1] = new <init>();
                    lz1.a(aamu[l1]);
                    lz1.nw();
                }

                aamu[l1] = new <init>();
                lz1.a(aamu[l1]);
                fc = aamu;
                break;

            case 74: // 'J'
                fd = lz1.readString();
                break;

            case 82: // 'R'
                fe = lz1.readString();
                break;

            case 98: // 'b'
                ff = lz1.readString();
                break;

            case 106: // 'j'
                fg = lz1.readString();
                break;

            case 114: // 'r'
                if (fh == null)
                {
                    fh = new <init>();
                }
                lz1.a(fh);
                break;

            case 125: // '}'
                fi = lz1.readFloat();
                break;

            case 130: 
                int i1 = mi.b(lz1, 130);
                int j1;
                String as1[];
                if (fk == null)
                {
                    j1 = 0;
                } else
                {
                    j1 = fk.length;
                }
                as1 = new String[i1 + j1];
                if (j1 != 0)
                {
                    System.arraycopy(fk, 0, as1, 0, j1);
                }
                for (; j1 < -1 + as1.length; j1++)
                {
                    as1[j1] = lz1.readString();
                    lz1.nw();
                }

                as1[j1] = lz1.readString();
                fk = as1;
                break;

            case 136: 
                fl = lz1.nz();
                break;

            case 144: 
                fj = lz1.nA();
                break;

            case 154: 
                int j = mi.b(lz1, 154);
                int l;
                String as[];
                if (eV == null)
                {
                    l = 0;
                } else
                {
                    l = eV.length;
                }
                as = new String[j + l];
                if (l != 0)
                {
                    System.arraycopy(eV, 0, as, 0, l);
                }
                for (; l < -1 + as.length; l++)
                {
                    as[l] = lz1.readString();
                    lz1.nw();
                }

                as[l] = lz1.readString();
                eV = as;
                break;
            }
        } while (true);
    }

    public int hashCode()
    {
        int i = 31 * (31 * (31 * (31 * (31 * (31 * (31 * (31 * (527 + md.hashCode(eV)) + md.hashCode(eW)) + md.hashCode(eX)) + md.hashCode(eY)) + md.hashCode(eZ)) + md.hashCode(fa)) + md.hashCode(fb)) + md.hashCode(fc));
        int j;
        int l;
        int i1;
        int j1;
        int k1;
        int l1;
        int i2;
        int j2;
        int k2;
        int l2;
        char c1;
        int i3;
        List list;
        int j3;
        if (fd == null)
        {
            j = 0;
        } else
        {
            j = fd.hashCode();
        }
        l = 31 * (j + i);
        if (fe == null)
        {
            i1 = 0;
        } else
        {
            i1 = fe.hashCode();
        }
        j1 = 31 * (i1 + l);
        if (ff == null)
        {
            k1 = 0;
        } else
        {
            k1 = ff.hashCode();
        }
        l1 = 31 * (k1 + j1);
        if (fg == null)
        {
            i2 = 0;
        } else
        {
            i2 = fg.hashCode();
        }
        j2 = 31 * (i2 + l1);
        if (fh == null)
        {
            k2 = 0;
        } else
        {
            k2 = fh.hashCode();
        }
        l2 = 31 * (31 * (k2 + j2) + Float.floatToIntBits(fi));
        if (fj)
        {
            c1 = '\u04CF';
        } else
        {
            c1 = '\u04D5';
        }
        i3 = 31 * (31 * (31 * (c1 + l2) + md.hashCode(fk)) + fl);
        list = amU;
        j3 = 0;
        if (list != null)
        {
            boolean flag = amU.isEmpty();
            j3 = 0;
            if (!flag)
            {
                j3 = amU.hashCode();
            }
        }
        return i3 + j3;
    }

    public amU k()
    {
        eV = mi.anf;
        eW = mi.anf;
        eX = r();
        eY = i();
        eZ = d();
        fa = d();
        fb = d();
        fc = l();
        fd = "";
        fe = "";
        ff = "0";
        fg = "";
        fh = null;
        fi = 0.0F;
        fj = false;
        fk = mi.anf;
        fl = 0;
        amU = null;
        amY = -1;
        return this;
    }

    public ()
    {
        k();
    }
}
