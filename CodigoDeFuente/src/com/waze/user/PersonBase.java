// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.user;

import java.io.Serializable;

public class PersonBase
    implements Serializable
{

    private static final long serialVersionUID = 1L;
    public int mID;
    protected String mImageUrl;
    boolean mIsOnWaze;
    public String mNickName;
    public String mPhone;

    public PersonBase()
    {
        mPhone = null;
        mIsOnWaze = false;
    }

    public PersonBase(PersonBase personbase)
    {
        mPhone = null;
        mIsOnWaze = false;
        if (personbase.mNickName != null)
        {
            mNickName = new String(personbase.mNickName);
        }
        if (personbase.mPhone != null)
        {
            mPhone = new String(personbase.mPhone);
        }
        if (personbase.mImageUrl != null)
        {
            mImageUrl = new String(personbase.mImageUrl);
        }
        mID = personbase.mID;
        mIsOnWaze = personbase.mIsOnWaze;
    }

    public int getID()
    {
        return mID;
    }

    public String getImage()
    {
        return mImageUrl;
    }

    public boolean getIsOnWaze()
    {
        return mIsOnWaze;
    }

    public String getName()
    {
        return mNickName;
    }

    public String getPhone()
    {
        return mPhone;
    }

    public void setID(int i)
    {
        mID = i;
    }

    public void setImage(String s)
    {
        mImageUrl = s;
    }

    public void setIsOnWaze(boolean flag)
    {
        mIsOnWaze = flag;
    }

    public String toString()
    {
        return getName();
    }
}
