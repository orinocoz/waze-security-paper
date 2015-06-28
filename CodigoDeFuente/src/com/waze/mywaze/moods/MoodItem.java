// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.mywaze.moods;

import android.graphics.drawable.Drawable;

public class MoodItem
{

    public String caption;
    public boolean enabled;
    public boolean first;
    public Drawable image;
    public boolean last;
    public String mood;
    public boolean title;

    public MoodItem(String s, String s1, Drawable drawable, boolean flag, boolean flag1, boolean flag2, boolean flag3)
    {
        mood = s;
        caption = s1;
        image = drawable;
        title = flag;
        enabled = flag1;
        first = flag2;
        last = flag3;
    }
}
