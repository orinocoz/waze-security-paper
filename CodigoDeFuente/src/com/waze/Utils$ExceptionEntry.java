// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze;


// Referenced classes of package com.waze:
//            Utils

public static class setEntry
{

    public static final int COMPARE_ENDS_WITH = 4;
    public static final int COMPARE_END_OF = 5;
    public static final int COMPARE_EQUAL = 1;
    public static final int COMPARE_STARTS_WITH = 3;
    public static final int COMPARE_START_OF = 2;
    public static final int COMPARE_USE_ANOTHER_SIDE = 0;
    public static final int EXCLUDE_ALWAYS = 0;
    public static final int EXCLUDE_IF_EXIST = 1;
    public int mCompareType;
    public String mEntry;
    public int mType;

    private boolean equalTo(setEntry setentry)
    {
        if (mCompareType == 0)
        {
            return setentry.equalTo(mEntry);
        } else
        {
            return equalTo(setentry.mEntry);
        }
    }

    private boolean equalTo(String s)
    {
        boolean flag;
label0:
        {
            if (mCompareType != 1)
            {
                int i = mCompareType;
                flag = false;
                if (i != 0)
                {
                    break label0;
                }
            }
            flag = mEntry.equals(s);
        }
        if (mCompareType == 2)
        {
            flag = s.startsWith(mEntry);
        }
        if (mCompareType == 3)
        {
            flag = mEntry.startsWith(s);
        }
        if (mCompareType == 4)
        {
            flag = mEntry.endsWith(s);
        }
        if (mCompareType == 5)
        {
            flag = s.endsWith(mEntry);
        }
        return flag;
    }

    public boolean equals(Object obj)
    {
        boolean flag = obj instanceof mEntry;
        boolean flag1 = false;
        if (flag)
        {
            flag1 = equalTo((equalTo)obj);
        }
        if (obj instanceof String)
        {
            flag1 = equalTo((String)obj);
        }
        return flag1;
    }

    public void setEntry(String s, int i)
    {
        mEntry = new String(s);
        mType = i;
    }

    public void setEntry(String s, int i, int j)
    {
        mEntry = new String(s);
        mType = i;
        mCompareType = j;
    }

    public (String s, int i)
    {
        mEntry = null;
        mType = 0;
        mCompareType = 1;
        setEntry(s, i);
    }

    public setEntry(String s, int i, int j)
    {
        mEntry = null;
        mType = 0;
        mCompareType = 1;
        setEntry(s, i, j);
    }
}
