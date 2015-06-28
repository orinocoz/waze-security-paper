// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze;

import java.io.Serializable;

public class Group
    implements Serializable
{

    private static final long serialVersionUID = 0xba6fa6efb6402aL;
    public String icon;
    public boolean isSelected;
    public String name;
    public String url;

    public Group(String s, String s1, String s2, boolean flag)
    {
        icon = s;
        name = s1;
        url = s2;
        isSelected = flag;
    }
}
