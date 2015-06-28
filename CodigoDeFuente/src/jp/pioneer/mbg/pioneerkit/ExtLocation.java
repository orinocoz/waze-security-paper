// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit;


public class ExtLocation
{

    int a;
    private double b;
    private double c;
    private boolean d;
    private double e;
    private boolean f;
    private float g;
    private boolean h;
    private float i;
    private long j;
    private boolean k;
    private boolean l;

    public ExtLocation()
    {
        b = 0.0D;
        c = 0.0D;
        d = false;
        e = 0.0D;
        f = false;
        g = 0.0F;
        h = false;
        i = 0.0F;
        j = 0L;
        k = false;
        l = false;
        a = -1;
    }

    public void a(double d1)
    {
        b = d1;
    }

    public void a(float f1)
    {
        g = f1;
        f = true;
    }

    public void a(int i1)
    {
        a = i1;
        l = true;
    }

    public void a(long l1)
    {
        j = l1;
    }

    public void b(double d1)
    {
        c = d1;
    }

    public void b(float f1)
    {
        float f2 = f1;
_L3:
        if (f2 < 0.0F) goto _L2; else goto _L1
_L1:
        if (f2 < 360F)
        {
            i = f2;
            h = true;
            return;
        }
        break MISSING_BLOCK_LABEL_34;
_L2:
        f2 += 360F;
          goto _L3
        f2 -= 360F;
          goto _L1
    }

    public void c(double d1)
    {
        e = d1;
        d = true;
    }

    public int getAccuracy()
    {
        return a;
    }

    public double getAltitude()
    {
        return e;
    }

    public float getBearing()
    {
        return i;
    }

    public double getLatitude()
    {
        return b;
    }

    public double getLongitude()
    {
        return c;
    }

    public float getSpeed()
    {
        return g;
    }

    public long getTime()
    {
        return j;
    }

    public boolean isRealGpsTime()
    {
        return k;
    }
}
