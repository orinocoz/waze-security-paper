// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


public class ConfigItem
{

    private String category;
    private String name;
    private String value;

    public ConfigItem()
    {
        category = null;
        name = null;
        value = null;
    }

    public ConfigItem(String s, String s1, String s2)
    {
        category = null;
        name = null;
        value = null;
        category = s;
        name = s1;
        value = s2;
    }

    public String getCategory()
    {
        return category;
    }

    public String getName()
    {
        return name;
    }

    public String getValue()
    {
        return value;
    }

    public void setCategory(String s)
    {
        category = s;
    }

    public void setName(String s)
    {
        name = s;
    }

    public void setValue(String s)
    {
        value = s;
    }

    public String toString()
    {
        return (new StringBuilder("Category: ")).append(category).append(", Name: ").append(name).append(" Value: ").append(value).toString();
    }
}
