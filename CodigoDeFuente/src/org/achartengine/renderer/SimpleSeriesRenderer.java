// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;

import java.io.Serializable;

public class SimpleSeriesRenderer
    implements Serializable
{

    private int mColor;

    public SimpleSeriesRenderer()
    {
        mColor = 0xff0000ff;
    }

    public int getColor()
    {
        return mColor;
    }

    public void setColor(int i)
    {
        mColor = i;
    }
}
