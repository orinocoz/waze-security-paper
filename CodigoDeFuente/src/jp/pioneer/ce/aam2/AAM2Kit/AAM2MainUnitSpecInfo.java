// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package jp.pioneer.ce.aam2.AAM2Kit;


public class AAM2MainUnitSpecInfo
{

    private int a;
    private int b;
    private int c;
    private int d;
    private int e;
    private int f;

    public AAM2MainUnitSpecInfo()
    {
        a = 0;
        e = 0;
        f = 0;
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

    public void f(int i)
    {
        f = i;
    }

    public int getConnectedMode()
    {
        return e;
    }

    public int getLocationDevice()
    {
        return c;
    }

    public int getMainUnitID()
    {
        return a;
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
