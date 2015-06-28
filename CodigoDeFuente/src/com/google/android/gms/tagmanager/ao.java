// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;

import com.google.android.gms.internal.a;
import com.google.android.gms.internal.b;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Map;

// Referenced classes of package com.google.android.gms.tagmanager:
//            aj, dh, j, bh

class ao extends aj
{

    private static final String ID;
    private static final String afB;
    private static final String afv;
    private static final String afx;

    public ao()
    {
        String s = ID;
        String as[] = new String[1];
        as[0] = afv;
        super(s, as);
    }

    private byte[] c(String s, byte abyte0[])
        throws NoSuchAlgorithmException
    {
        MessageDigest messagedigest = MessageDigest.getInstance(s);
        messagedigest.update(abyte0);
        return messagedigest.digest();
    }

    public boolean lc()
    {
        return true;
    }

    public com.google.android.gms.internal.d.a w(Map map)
    {
        com.google.android.gms.internal.d.a a1 = (com.google.android.gms.internal.d.a)map.get(afv);
        if (a1 == null || a1 == dh.mY())
        {
            return dh.mY();
        }
        String s = dh.j(a1);
        com.google.android.gms.internal.d.a a2 = (com.google.android.gms.internal.d.a)map.get(afB);
        String s1;
        com.google.android.gms.internal.d.a a3;
        String s2;
        byte abyte0[];
        com.google.android.gms.internal.d.a a4;
        if (a2 == null)
        {
            s1 = "MD5";
        } else
        {
            s1 = dh.j(a2);
        }
        a3 = (com.google.android.gms.internal.d.a)map.get(afx);
        if (a3 == null)
        {
            s2 = "text";
        } else
        {
            s2 = dh.j(a3);
        }
        if ("text".equals(s2))
        {
            abyte0 = s.getBytes();
        } else
        if ("base16".equals(s2))
        {
            abyte0 = j.bE(s);
        } else
        {
            bh.A((new StringBuilder()).append("Hash: unknown input format: ").append(s2).toString());
            return dh.mY();
        }
        try
        {
            a4 = dh.r(j.d(c(s1, abyte0)));
        }
        catch (NoSuchAlgorithmException nosuchalgorithmexception)
        {
            bh.A((new StringBuilder()).append("Hash: unknown algorithm: ").append(s1).toString());
            return dh.mY();
        }
        return a4;
    }

    static 
    {
        ID = a.aa.toString();
        afv = b.bi.toString();
        afB = b.aZ.toString();
        afx = b.cH.toString();
    }
}
