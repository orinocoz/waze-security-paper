// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.rtalerts;

import com.waze.ResManager;

// Referenced classes of package com.waze.rtalerts:
//            RTAlertsMenuAdapter

public static final class mCounter
{

    public int mCounter;
    public int mIconResId;
    public int mId;
    public String mLabel;

    public (int i, String s, String s1, int j)
    {
        mId = i;
        mIconResId = ResManager.GetDrawableId(s.toLowerCase());
        mLabel = s1;
        mCounter = j;
    }
}
