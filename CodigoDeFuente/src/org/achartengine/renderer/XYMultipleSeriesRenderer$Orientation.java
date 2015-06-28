// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine.renderer;


// Referenced classes of package org.achartengine.renderer:
//            XYMultipleSeriesRenderer

public static final class mAngle extends Enum
{

    private static final .VALUES $VALUES[];
    public static final .VALUES HORIZONTAL;
    public static final .VALUES VERTICAL;
    private int mAngle;

    public static mAngle valueOf(String s)
    {
        return (mAngle)Enum.valueOf(org/achartengine/renderer/XYMultipleSeriesRenderer$Orientation, s);
    }

    public static mAngle[] values()
    {
        return (mAngle[])$VALUES.clone();
    }

    public int getAngle()
    {
        return mAngle;
    }

    static 
    {
        HORIZONTAL = new <init>("HORIZONTAL", 0, 0);
        VERTICAL = new <init>("VERTICAL", 1, 90);
        mAngle amangle[] = new <init>[2];
        amangle[0] = HORIZONTAL;
        amangle[1] = VERTICAL;
        $VALUES = amangle;
    }

    private (String s, int i, int j)
    {
        super(s, i);
        mAngle = 0;
        mAngle = j;
    }
}
