// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.install;

import java.io.Serializable;

public class Lang
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    private String lable;
    private int value;

    public Lang(String s, int i)
    {
        value = i;
        lable = s;
    }

    public static Lang[] getLangArray(Object aobj[])
    {
        Lang alang[] = new Lang[aobj.length];
        int i = 0;
        do
        {
            if (i >= aobj.length)
            {
                return alang;
            }
            alang[i] = (Lang)aobj[i];
            i++;
        } while (true);
    }

    public String getLable()
    {
        return lable;
    }

    public int getValue()
    {
        return value;
    }

    public void setLable(String s)
    {
        lable = s;
    }

    public void setValue(int i)
    {
        value = i;
    }
}
