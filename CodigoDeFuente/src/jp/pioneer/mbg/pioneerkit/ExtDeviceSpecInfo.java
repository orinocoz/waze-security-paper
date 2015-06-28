// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.mbg.pioneerkit;


public class ExtDeviceSpecInfo
{

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;

    public ExtDeviceSpecInfo()
    {
        a = 0;
        e = 0;
    }

    public void a(int i)
    {
        a = i;
    }

    public void b(int i)
    {
        b = i;
    }

    public void c(int i)
    {
        c = i;
    }

    public void d(int i)
    {
        d = i;
    }

    public void e(int i)
    {
        e = i;
    }

    public int getConnectedMode()
    {
        return e;
    }

    public int getExtDeviceID()
    {
        return a;
    }

    public int getLocationDevice()
    {
        return c;
    }

    public int getPointerNum()
    {
        return b;
    }

    public int getRemoteController()
    {
        return d;
    }
}
