// Decompiled by Jad v1.5.8e. Copyright 2001 Pavel Kouznetsov.
// Jad home page: http://www.geocities.com/kpdus/jad.html
// Decompiler options: braces fieldsfirst space lnc 

package org.achartengine;


// Referenced classes of package org.achartengine:
//            GraphicalView

class val.bottom
    implements Runnable
{

    final GraphicalView this$0;
    final int val$bottom;
    final int val$left;
    final int val$right;
    final int val$top;

    public void run()
    {
        invalidate(val$left, val$top, val$right, val$bottom);
    }

    ()
    {
        this$0 = final_graphicalview;
        val$left = i;
        val$top = j;
        val$right = k;
        val$bottom = I.this;
        super();
    }
}
