// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.google.android.gms.internal;


public class ly
{

    private final byte amH[] = new byte[256];
    private int amI;
    private int amJ;

    public ly(byte abyte0[])
    {
        for (int i = 0; i < 256; i++)
        {
            amH[i] = (byte)i;
        }

        int j = 0;
        for (int k = 0; k < 256; k++)
        {
            j = 0xff & j + amH[k] + abyte0[k % abyte0.length];
            byte byte0 = amH[k];
            amH[k] = amH[j];
            amH[j] = byte0;
        }

        amI = 0;
        amJ = 0;
    }

    public void o(byte abyte0[])
    {
        int i = amI;
        int j = amJ;
        for (int k = 0; k < abyte0.length; k++)
        {
            i = 0xff & i + 1;
            j = 0xff & j + amH[i];
            byte byte0 = amH[i];
            amH[i] = amH[j];
            amH[j] = byte0;
            abyte0[k] = (byte)(abyte0[k] ^ amH[0xff & amH[i] + amH[j]]);
        }

        amI = i;
        amJ = j;
    }
}
