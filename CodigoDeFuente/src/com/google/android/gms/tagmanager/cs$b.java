// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.tagmanager;


// Referenced classes of package com.google.android.gms.tagmanager:
//            by, cs

private static class agV
{

    private com.google.android.gms.internal.b.agV agV;
    private by ahA;

    public int getSize()
    {
        int i = ((com.google.android.gms.internal.b)ahA.getObject()).U();
        int j;
        if (agV == null)
        {
            j = 0;
        } else
        {
            j = agV.U();
        }
        return j + i;
    }

    public by mE()
    {
        return ahA;
    }

    public com.google.android.gms.internal.b mk()
    {
        return agV;
    }

    public (by by1, com.google.android.gms.internal.b b1)
    {
        ahA = by1;
        agV = b1;
    }
}
