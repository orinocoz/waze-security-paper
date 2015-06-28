// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.autocomplete;

import com.waze.user.PersonBase;

public class Person extends PersonBase
{

    private static final long serialVersionUID = 1L;

    public Person(Person person)
    {
        super(person);
    }

    public Person(String s, String s1, String s2)
    {
        mNickName = s;
        mPhone = s1;
        mImageUrl = s2;
        mID = -1;
    }

    public Person(String s, String s1, String s2, int i)
    {
        mNickName = s;
        mPhone = s1;
        mImageUrl = s2;
        mID = i;
    }

    public String toString()
    {
        return mNickName;
    }
}
