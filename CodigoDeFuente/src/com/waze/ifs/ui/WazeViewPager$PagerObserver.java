// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package com.waze.ifs.ui;

import android.database.DataSetObserver;

// Referenced classes of package com.waze.ifs.ui:
//            WazeViewPager

private class <init> extends DataSetObserver
{

    final WazeViewPager this$0;

    public void onChanged()
    {
        dataSetChanged();
    }

    public void onInvalidated()
    {
        dataSetChanged();
    }

    private ()
    {
        this$0 = WazeViewPager.this;
        super();
    }

    this._cls0(this._cls0 _pcls0)
    {
        this();
    }
}
