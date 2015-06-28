// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.common.data;

import android.database.CharArrayBuffer;
import android.net.Uri;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.hn;

// Referenced classes of package com.google.android.gms.common.data:
//            DataHolder

public abstract class d
{

    protected final DataHolder DD;
    private int EA;
    protected int Ez;

    public d(DataHolder dataholder, int i)
    {
        DD = (DataHolder)hn.f(dataholder);
        ac(i);
    }

    protected void a(String s, CharArrayBuffer chararraybuffer)
    {
        DD.a(s, Ez, EA, chararraybuffer);
    }

    protected void ac(int i)
    {
        boolean flag;
        if (i >= 0 && i < DD.getCount())
        {
            flag = true;
        } else
        {
            flag = false;
        }
        hn.A(flag);
        Ez = i;
        EA = DD.ae(Ez);
    }

    public boolean av(String s)
    {
        return DD.av(s);
    }

    protected Uri aw(String s)
    {
        return DD.g(s, Ez, EA);
    }

    protected boolean ax(String s)
    {
        return DD.h(s, Ez, EA);
    }

    protected int eQ()
    {
        return Ez;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof d;
        boolean flag1 = false;
        if (flag)
        {
            d d1 = (d)obj;
            boolean flag2 = hl.equal(Integer.valueOf(d1.Ez), Integer.valueOf(Ez));
            flag1 = false;
            if (flag2)
            {
                boolean flag3 = hl.equal(Integer.valueOf(d1.EA), Integer.valueOf(EA));
                flag1 = false;
                if (flag3)
                {
                    DataHolder dataholder = d1.DD;
                    DataHolder dataholder1 = DD;
                    flag1 = false;
                    if (dataholder == dataholder1)
                    {
                        flag1 = true;
                    }
                }
            }
        }
        return flag1;
    }

    protected boolean getBoolean(String s)
    {
        return DD.d(s, Ez, EA);
    }

    protected byte[] getByteArray(String s)
    {
        return DD.f(s, Ez, EA);
    }

    protected float getFloat(String s)
    {
        return DD.e(s, Ez, EA);
    }

    protected int getInteger(String s)
    {
        return DD.b(s, Ez, EA);
    }

    protected long getLong(String s)
    {
        return DD.a(s, Ez, EA);
    }

    protected String getString(String s)
    {
        return DD.c(s, Ez, EA);
    }

    public int hashCode()
    {
        Object aobj[] = new Object[3];
        aobj[0] = Integer.valueOf(Ez);
        aobj[1] = Integer.valueOf(EA);
        aobj[2] = DD;
        return hl.hashCode(aobj);
    }

    public boolean isDataValid()
    {
        return !DD.isClosed();
    }
}
