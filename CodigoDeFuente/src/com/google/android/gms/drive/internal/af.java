// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.drive.internal;

import com.google.android.gms.internal.lz;
import com.google.android.gms.internal.ma;
import com.google.android.gms.internal.mb;
import com.google.android.gms.internal.me;
import com.google.android.gms.internal.mf;
import java.io.IOException;
import java.util.List;

public final class af extends mb
{

    public String Jq;
    public long Jr;
    public long Js;
    public int versionCode;

    public af()
    {
        gn();
    }

    public static af g(byte abyte0[])
        throws me
    {
        return (af)mf.a(new af(), abyte0);
    }

    public void a(ma ma1)
        throws IOException
    {
        ma1.p(1, versionCode);
        ma1.b(2, Jq);
        ma1.c(3, Jr);
        ma1.c(4, Js);
        super.a(ma1);
    }

    public mf b(lz lz1)
        throws IOException
    {
        return m(lz1);
    }

    protected int c()
    {
        return super.c() + ma.r(1, versionCode) + ma.h(2, Jq) + ma.e(3, Jr) + ma.e(4, Js);
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
        flag = obj instanceof af;
        flag1 = false;
        if (!flag) goto _L4; else goto _L3
_L3:
        af af1;
        int i;
        int j;
        af1 = (af)obj;
        i = versionCode;
        j = af1.versionCode;
        flag1 = false;
        if (i != j) goto _L4; else goto _L5
_L5:
        String s;
        if (Jq != null)
        {
            break MISSING_BLOCK_LABEL_155;
        }
        s = af1.Jq;
        flag1 = false;
        if (s != null) goto _L4; else goto _L6
_L6:
        int k;
        k = Jr != af1.Jr;
        flag1 = false;
        if (k != 0) goto _L4; else goto _L7
_L7:
        int l;
        l = Js != af1.Js;
        flag1 = false;
        if (l != 0) goto _L4; else goto _L8
_L8:
        boolean flag2;
        if (amU != null && !amU.isEmpty())
        {
            break MISSING_BLOCK_LABEL_172;
        }
        if (af1.amU == null)
        {
            break; /* Loop/switch isn't completed */
        }
        flag2 = af1.amU.isEmpty();
        flag1 = false;
        if (!flag2) goto _L4; else goto _L9
_L9:
        return true;
        if (!Jq.equals(af1.Jq))
        {
            return false;
        }
          goto _L6
        return amU.equals(af1.amU);
    }

    public af gn()
    {
        versionCode = 1;
        Jq = "";
        Jr = -1L;
        Js = -1L;
        amU = null;
        amY = -1;
        return this;
    }

    public int hashCode()
    {
        int i = 31 * (527 + versionCode);
        int j;
        int k;
        List list;
        int l;
        if (Jq == null)
        {
            j = 0;
        } else
        {
            j = Jq.hashCode();
        }
        k = 31 * (31 * (31 * (j + i) + (int)(Jr ^ Jr >>> 32)) + (int)(Js ^ Js >>> 32));
        list = amU;
        l = 0;
        if (list != null)
        {
            boolean flag = amU.isEmpty();
            l = 0;
            if (!flag)
            {
                l = amU.hashCode();
            }
        }
        return k + l;
    }

    public af m(lz lz1)
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
                versionCode = lz1.nz();
                break;

            case 18: // '\022'
                Jq = lz1.readString();
                break;

            case 24: // '\030'
                Jr = lz1.nC();
                break;

            case 32: // ' '
                Js = lz1.nC();
                break;
            }
        } while (true);
    }
}
