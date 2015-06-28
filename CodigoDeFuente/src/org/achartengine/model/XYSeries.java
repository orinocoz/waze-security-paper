// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.model;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;

public class XYSeries
    implements Serializable
{

    private double mMaxX;
    private double mMaxY;
    private double mMinX;
    private double mMinY;
    private String mTitle;
    private List mX;
    private List mY;

    public XYSeries(String s)
    {
        mX = new ArrayList();
        mY = new ArrayList();
        mMinX = 1.7976931348623157E+308D;
        mMaxX = -1.7976931348623157E+308D;
        mMinY = 1.7976931348623157E+308D;
        mMaxY = -1.7976931348623157E+308D;
        mTitle = s;
        initRange();
    }

    private void initRange()
    {
        mMinX = 1.7976931348623157E+308D;
        mMaxX = -1.7976931348623157E+308D;
        mMinY = 1.7976931348623157E+308D;
        mMaxY = -1.7976931348623157E+308D;
        int i = getItemCount();
        for (int j = 0; j < i; j++)
        {
            updateRange(getX(j), getY(j));
        }

    }

    private void updateRange(double d, double d1)
    {
        mMinX = Math.min(mMinX, d);
        mMaxX = Math.max(mMaxX, d);
        mMinY = Math.min(mMinY, d1);
        mMaxY = Math.max(mMaxY, d1);
    }

    public void add(double d, double d1)
    {
        this;
        JVM INSTR monitorenter ;
        mX.add(Double.valueOf(d));
        mY.add(Double.valueOf(d1));
        updateRange(d, d1);
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void clear()
    {
        this;
        JVM INSTR monitorenter ;
        mX.clear();
        mY.clear();
        initRange();
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public int getItemCount()
    {
        this;
        JVM INSTR monitorenter ;
        int i = mX.size();
        this;
        JVM INSTR monitorexit ;
        return i;
        Exception exception;
        exception;
        throw exception;
    }

    public double getMaxX()
    {
        return mMaxX;
    }

    public double getMaxY()
    {
        return mMaxY;
    }

    public double getMinX()
    {
        return mMinX;
    }

    public double getMinY()
    {
        return mMinY;
    }

    public String getTitle()
    {
        return mTitle;
    }

    public double getX(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mX.get(i)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d;
        Exception exception;
        exception;
        throw exception;
    }

    public double getY(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mY.get(i)).doubleValue();
        this;
        JVM INSTR monitorexit ;
        return d;
        Exception exception;
        exception;
        throw exception;
    }

    public void remove(int i)
    {
        this;
        JVM INSTR monitorenter ;
        double d = ((Double)mX.remove(i)).doubleValue();
        double d1 = ((Double)mY.remove(i)).doubleValue();
        if (d == mMinX || d == mMaxX || d1 == mMinY || d1 == mMaxY)
        {
            initRange();
        }
        this;
        JVM INSTR monitorexit ;
        return;
        Exception exception;
        exception;
        throw exception;
    }

    public void setTitle(String s)
    {
        mTitle = s;
    }
}
