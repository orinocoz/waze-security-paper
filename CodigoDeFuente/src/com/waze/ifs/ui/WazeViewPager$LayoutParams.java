// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;

// Referenced classes of package com.waze.ifs.ui:
//            WazeViewPager

public static class gravity extends android.view.ms
{

    int childIndex;
    public int gravity;
    public boolean isDecor;
    boolean needsMeasure;
    int position;
    float widthFactor;

    public ()
    {
        super(-1, -1);
        widthFactor = 0.0F;
    }

    public widthFactor(Context context, AttributeSet attributeset)
    {
        super(context, attributeset);
        widthFactor = 0.0F;
        TypedArray typedarray = context.obtainStyledAttributes(attributeset, WazeViewPager.access$3());
        gravity = typedarray.getInteger(0, 48);
        typedarray.recycle();
    }
}
